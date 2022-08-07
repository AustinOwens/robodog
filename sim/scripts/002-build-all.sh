#***********************************************
#
#      Filename: 002-build-all.sh
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: ---
#        Create: 2022-08-06 16:10:12
# Last Modified: 2022-08-06 16:10:12
#***********************************************
mkdir ${WORKSPACE_ROOT}/build
pushd build
cmake ../
make -j
echo "[ Info ]: Copying the output .so python module into the test directory"
cp example* ${WORKSPACE_ROOT}/test
popd
