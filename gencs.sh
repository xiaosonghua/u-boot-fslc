#!/bin/bash

rm -rf project_vim
mkdir project_vim

find ./ -name \*.h > cscope.files
find ./ -name \*.c >> cscope.files
echo "cscope start."
cscope -bqk -i cscope.files -f project_vim/cstags
echo "cscope done!"

echo "ctags start."
ctags -R --c++-kinds=+px --fields=+aiKSz --extra=+q -L cscope.files -o project_vim/tags
echo "ctags done!"

exit 0
