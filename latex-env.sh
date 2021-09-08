#!/bin/bash
#sudo apt update -y
sudo apt install pandoc -y
if [ ! -f /workspace/templates/eisvogel.tex ];then
    git clone https://github.com/Wandmalfarbe/pandoc-latex-template.git /workspace/templates
else
    echo "Templates folder already there"
fi
#tlmgr update --self
#tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref
pandoc manual.md -o Manual.pdf --from markdown --template /workspace/templates/eisvogel.tex --listings --number-sections
