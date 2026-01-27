#!/usr/bin/env python3
"""
Convert TikZ diagrams from absolute positioning to relative positioning
with proper spacing (minimum 2.5cm vertical).
"""

import re
import sys
from pathlib import Path

def fix_tikz_diagram(content: str) -> str:
    """Fix a TikZ diagram by converting to relative positioning."""

    # Step 1: Add node distance to tikzpicture options
    content = re.sub(
        r'\\begin\{tikzpicture\}\[([^\]]*)\]',
        r'\\begin{tikzpicture}[\n    node distance=2.5cm,  % Global minimum vertical spacing\n    \1]',
        content
    )

    # Step 2: Extract all node definitions with absolute positioning
    # Pattern: \node[style] (name) at (x, y) {content};
    node_pattern = r'\\node\[([^\]]+)\]\s*\((\w+)\)\s+at\s+\(([^,]+),\s*([^)]+)\)\s*\{([^}]+(?:\{[^}]*\}[^}]*)*)\};'

    nodes = []
    for match in re.finditer(node_pattern, content):
        style, name, x, y, node_content = match.groups()
        try:
            y_val = float(y)
            nodes.append({
                'style': style,
                'name': name,
                'x': x,
                'y': y_val,
                'content': node_content,
                'original': match.group(0)
            })
        except ValueError:
            # Skip nodes with non-numeric coordinates
            pass

    # Step 3: Sort nodes by y-coordinate (descending, since higher y = top of diagram)
    nodes.sort(key=lambda n: n['y'], reverse=True)

    # Step 4: Convert to relative positioning
    replacements = {}
    for i, node in enumerate(nodes):
        if i == 0:
            # First node stays absolute (or relative to title if exists)
            new_node = f"\\node[{node['style']}] ({node['name']}) at ({node['x']}, {node['y']}) {{{node['content']}}};"
        else:
            # Subsequent nodes use relative positioning
            prev_node = nodes[i-1]
            # Check if on same x-coordinate (vertical stack)
            if node['x'] == prev_node['x']:
                new_node = f"\\node[{node['style']}, below=of {prev_node['name']}] ({node['name']}) {{{node['content']}}};"
            else:
                # Different x-coordinate - use below and right/left
                x_diff = float(node['x']) - float(prev_node['x'])
                if x_diff > 0:
                    new_node = f"\\node[{node['style']}, below right=2.5cm and {abs(x_diff)}cm of {prev_node['name']}] ({node['name']}) {{{node['content']}}};"
                else:
                    new_node = f"\\node[{node['style']}, below left=2.5cm and {abs(x_diff)}cm of {prev_node['name']}] ({node['name']}) {{{node['content']}}};"

        replacements[node['original']] = new_node

    # Step 5: Apply replacements
    for original, replacement in replacements.items():
        content = content.replace(original, replacement)

    return content

def main():
    if len(sys.argv) < 2:
        print("Usage: fix-tikz-spacing.py <input.tex> [output.tex]")
        sys.exit(1)

    input_file = Path(sys.argv[1])
    output_file = Path(sys.argv[2]) if len(sys.argv) > 2 else input_file.with_suffix('.fixed.tex')

    if not input_file.exists():
        print(f"Error: {input_file} not found")
        sys.exit(1)

    content = input_file.read_text()
    fixed_content = fix_tikz_diagram(content)

    output_file.write_text(fixed_content)
    print(f"Fixed diagram written to {output_file}")
    print("Please review the output and adjust as needed.")

if __name__ == '__main__':
    main()