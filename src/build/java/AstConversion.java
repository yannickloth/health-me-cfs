// AstConversion — Typst-to-qmd converter using Typst's built-in HTML output.
// Approach: compile whole book to HTML via `typst compile --features html --format html`,
// then split HTML into per-chapter qmd files by heading hierarchy.
//
// BLOCKED: Typst's HTML export (--features html) is under active development and
// currently DROPS EQUATIONS (#5512). When this is fixed, replace the stub below
// with the actual implementation.
//
// Fallback behavior: delegates to RegexConversion (battle-tested regex backend).
import static java.nio.file.Files.*;
import java.nio.file.Path;
import java.io.*;
import java.util.*;

final class AstConversion implements TypstToQmd {

    private final Path projectRoot;
    private final Path fontPath;

    AstConversion(Path projectRoot, Path fontPath) {
        this.projectRoot = projectRoot;
        this.fontPath = fontPath;
    }

    @Override
    public ConversionResult convert(String typstSource, Path outputDir) throws IOException {
        System.out.println("  [AstConversion: HTML export incomplete, delegating to regex backend]");
        return new RegexConversion().convert(typstSource, outputDir);
    }
}
