#***********************************************
#
#      Filename: 003-run-test.sh
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: ---
#        Create: 2022-08-06 16:12:44
# Last Modified: 2022-08-06 16:12:44
#***********************************************
pushd ${WORKSPACE_ROOT}/test
echo "[ Info ]: Running Test ..."
python3 test.py
