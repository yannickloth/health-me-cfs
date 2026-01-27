#!/bin/bash
# Analyze all TikZ diagrams for spatial issues

echo "TikZ Diagram Analysis Report"
echo "============================="
echo ""

FIGURES_DIR="/home/nicky/code/health-me-cfs/figures"
TOTAL=0
ISSUES=0

for file in "$FIGURES_DIR"/fig-*.tex; do
    if [ ! -f "$file" ]; then
        continue
    fi

    TOTAL=$((TOTAL + 1))
    basename=$(basename "$file")

    echo "File: $basename"

    # Check for absolute positioning
    abs_count=$(grep -c "at ([0-9\-]" "$file" 2>/dev/null || echo 0)
    echo "  - Absolute positioned nodes: $abs_count"

    # Check for scale
    scale=$(grep "scale=" "$file" | head -1 | grep -oP 'scale=\K[0-9.]+' || echo "1")
    echo "  - Scale: $scale"
    if (( $(echo "$scale < 1" | bc -l) )); then
        echo "    ⚠ Scaled down (indicates size issues)"
        ISSUES=$((ISSUES + 1))
    fi

    # Check for tight spacing patterns
    tight=$(grep -E "(0\.[0-9]cm|1\.[0-5]cm)" "$file" | wc -l)
    if [ "$tight" -gt 0 ]; then
        echo "  - Tight spacing instances: $tight"
        echo "    ⚠ May have spacing below 2cm minimum"
    fi

    # Check for scope usage (complex layouts)
    scopes=$(grep -c "begin{scope}" "$file" || echo 0)
    if [ "$scopes" -gt 0 ]; then
        echo "  - Uses scopes: $scopes (complex layout)"
    fi

    # Check for xshift/yshift
    shifts=$(grep -cE "(xshift|yshift)" "$file" || echo 0)
    if [ "$shifts" -gt 0 ]; then
        echo "  - Uses shifts: $shifts"
    fi

    echo ""
done

echo "============================="
echo "Summary:"
echo "  Total diagrams: $TOTAL"
echo "  Diagrams with potential issues: $ISSUES"
echo ""
echo "Recommendations:"
echo "  1. Convert absolute positioning to relative (positioning library)"
echo "  2. Increase spacing to minimum 2.5cm horizontal, 2cm vertical"
echo "  3. Remove scaling (rebuild with proper sizing)"
echo "  4. Use relative positioning within scopes"