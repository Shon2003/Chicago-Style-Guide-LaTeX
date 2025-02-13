LOG_FILE="compile.log"
TEX_FILE="essay"

echo "------------------------------------------------" | tee "$LOG_FILE"
echo "xelatex $TEX_FILE.tex" | tee -a "$LOG_FILE"
echo "------------------------------------------------" | tee -a "$LOG_FILE"
xelatex -interaction=nonstopmode -file-line-error "$TEX_FILE.tex" 2>&1 | tee -a "$LOG_FILE"

echo "------------------------------------------------" | tee -a "$LOG_FILE"
echo "biber $TEX_FILE" | tee -a "$LOG_FILE"
echo "------------------------------------------------" | tee -a "$LOG_FILE"
biber "$TEX_FILE" 2>&1 | tee -a "$LOG_FILE"

echo "------------------------------------------------" | tee -a "$LOG_FILE"
echo "xelatex $TEX_FILE.tex" | tee -a "$LOG_FILE"
echo "------------------------------------------------" | tee -a "$LOG_FILE"
xelatex -interaction=nonstopmode -file-line-error "$TEX_FILE.tex" 2>&1 | tee -a "$LOG_FILE"

echo "------------------------------------------------" | tee -a "$LOG_FILE"
echo "xelatex $TEX_FILE.tex" | tee -a "$LOG_FILE"
echo "------------------------------------------------" | tee -a "$LOG_FILE"
xelatex -interaction=nonstopmode -file-line-error "$TEX_FILE.tex" 2>&1 | tee -a "$LOG_FILE"

# Check for errors
if ! grep -q "Error" "$LOG_FILE"; then
    echo "No errors detected. Deleting auxiliary files..."
    rm -f "$TEX_FILE.aux" "$TEX_FILE.bbl" "$TEX_FILE.bcf" "$TEX_FILE.blg" \
          "$TEX_FILE.log" "$TEX_FILE.out" "$TEX_FILE.run.xml" "$TEX_FILE.toc"
else
    echo "Errors detected. Auxiliary files not deleted."
fi
