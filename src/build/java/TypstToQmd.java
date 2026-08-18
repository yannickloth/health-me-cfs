import java.nio.file.Path;
import java.io.*;
import java.util.*;

sealed interface TypstToQmd permits RegexConversion, AstConversion {
    record ConversionResult(
        List<String[]> xrefs,
        int sectionCount,
        List<String> warnings
    ) {}

    ConversionResult convert(String typstSource, Path outputDir) throws IOException;
}
