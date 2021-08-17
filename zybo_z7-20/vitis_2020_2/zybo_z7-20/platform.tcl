# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/austin/robodog/zybo_z7-20/vitis_2020_2/zybo_z7-20/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/austin/robodog/zybo_z7-20/vitis_2020_2/zybo_z7-20/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zybo_z7-20}\
-hw {/home/austin/robodog/zybo_z7-20/vivado_2020_2/led_switch_test/design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/home/austin/robodog/zybo_z7-20/vitis_2020_2}

platform write
domain create -name {linux_ps7_cortexa9} -display-name {linux_ps7_cortexa9} -os {linux} -proc {ps7_cortexa9} -runtime {cpp} -arch {32-bit} -support-app {linux_hello_world}
platform active {zybo_z7-20}
domain active {zynq_fsbl}
domain active {linux_ps7_cortexa9}
platform generate -quick
platform generate
platform active {zybo_z7-20}
domain config -bif {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage/robodog_app_system.bif}
platform write
domain config -boot {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage}
platform write
domain config -image {/home/austin/robodog/zybo_z7-20/linux-xlnx}
platform write
platform generate
domain config -image {}
platform write
domain config -boot {}
platform write
domain config -bif {}
platform write
platform clean
platform clean
platform clean
platform generate
platform clean
platform generate
domain config -bif {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage/robodog_app_system.bif}
platform write
domain config -boot {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage}
platform write
platform generate -domains 
platform clean
platform clean
domain config -boot {}
platform write
domain config -bif {}
platform write
platform generate
domain config -bif {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage/robodog_app_system.bif}
platform write
domain config -boot {/home/austin/robodog/zybo_z7-20/vitis_2020_2/robodog_app_system/_ide/bootimage}
platform write
platform generate -domains 
