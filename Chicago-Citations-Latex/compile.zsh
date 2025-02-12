echo "------------------------------------------------" | tee compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "biber essay" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
biber essay 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log