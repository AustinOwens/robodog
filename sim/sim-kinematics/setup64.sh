#***********************************************
#
#      Filename: setup.sh
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: A setup script which builds the simulation library 
#              :
#        Create: 2022-08-06 16:02:36
# Last Modified: 2022-08-06 16:02:36
#***********************************************
export WORKSPACE_ROOT=$PWD
alias build='${WORKSPACE_ROOT}/scripts/001* && ${WORKSPACE_ROOT}/scripts/002* && ${WORKSPACE_ROOT}/scripts/003*'
alias cleanup='rm -rf ${WORKSPACE_ROOT}/build && pushd ${WORKSPACE_ROOT}/extern && rm -rf ./* && popd'
echo "[ INFO ]: COMMANDS:"
echo "  - build: build everything and run scripts in scripts"
echo "  - cleanup: cleans up the build folder and removes externs"
