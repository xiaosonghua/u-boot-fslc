#!/bin/bash

rm -rf project_vim
mkdir project_vim
rm cscope.files

find arch/arm/cpu/                            -name \*.[cSh] >> cscope.files
find arch/arm/dts/                            -name \*.[cSh] >> cscope.files
find arch/arm/include/                        -name \*.[cSh] >> cscope.files
find arch/arm/lib/                            -name \*.[cSh] >> cscope.files
find arch/arm/mach-imx/                       -name \*.[cSh] >> cscope.files
find arch/arm/thumb1/                         -name \*.[cSh] >> cscope.files
find board/freescale/common/                  -name \*.[cSh] >> cscope.files
# find board/freescale/imx8mq_evk/              -name \*.[cSh] >> cscope.files
# find board/freescale/imx8qm_mek/              -name \*.[cSh] >> cscope.files
# find board/freescale/imx8qxp_mek/             -name \*.[cSh] >> cscope.files
# find board/freescale/mx6memcal/               -name \*.[cSh] >> cscope.files
# find board/freescale/mx6qarm2/                -name \*.[cSh] >> cscope.files
find board/freescale/mx6sabreauto/            -name \*.[cSh] >> cscope.files
# find board/freescale/mx6sabresd/              -name \*.[cSh] >> cscope.files
# find board/freescale/mx6slevk/                -name \*.[cSh] >> cscope.files
# find board/freescale/mx6sllevk/               -name \*.[cSh] >> cscope.files
# find board/freescale/mx6sxsabreauto/          -name \*.[cSh] >> cscope.files
# find board/freescale/mx6sxsabresd/            -name \*.[cSh] >> cscope.files
# find board/freescale/mx6ul_14x14_evk/         -name \*.[cSh] >> cscope.files
# find board/freescale/mx6ullevk/               -name \*.[cSh] >> cscope.files
find api/                                     -name \*.[cSh] >> cscope.files
find cmd/                                     -name \*.[cSh] >> cscope.files
find common/                                  -name \*.[cSh] >> cscope.files
find configs/                                 -name \*.[cSh] >> cscope.files
find disk/                                    -name \*.[cSh] >> cscope.files
# find doc/                                     -name \*.[cSh] >> cscope.files
find drivers/                                 -name \*.[cSh] >> cscope.files
find dts/                                     -name \*.[cSh] >> cscope.files
find env/                                     -name \*.[cSh] >> cscope.files
# find examples/                                -name \*.[cSh] >> cscope.files
# find fs/                                      -name \*.[cSh] >> cscope.files
find include/                                 -name \*.[cSh] >> cscope.files
find lib/                                     -name \*.[cSh] >> cscope.files
# find Licenses/                                -name \*.[cSh] >> cscope.files
# find net/                                     -name \*.[cSh] >> cscope.files
find post/                                    -name \*.[cSh] >> cscope.files
find scripts/                                 -name \*.[cSh] >> cscope.files
# find test/                                    -name \*.[cSh] >> cscope.files
find tools/                                   -name \*.[cSh] >> cscope.files                           b

echo "cscope start."
cscope -bqk -i cscope.files -f project_vim/cstags
echo "cscope done!"

echo "ctags start."
ctags -R --c++-kinds=+px --fields=+aiKSz --extra=+q -L cscope.files -o project_vim/tags
echo "ctags done!"

exit 0
