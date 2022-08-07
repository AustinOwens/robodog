#***********************************************
#
#      Filename: 001-get-dependencies.sh
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: ---
#        Create: 2022-08-06 16:00:58
# Last Modified: 2022-08-06 16:00:58
#***********************************************
echo "[ Info ]: Collecting Dependencies"
sleep 3
pushd ${WORKSPACE_ROOT}/extern
wget https://github.com/pybind/pybind11/archive/refs/tags/v2.10.0.zip
unzip v2.10.0.zip
rm *.zip
mv pybind11-* pybind11

wget https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip
unzip eigen-3.4.0.zip
rm *.zip
mv eigen-* eigen
popd
