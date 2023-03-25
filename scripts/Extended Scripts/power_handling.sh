# version targetted = v6.1-rc1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/power_handling/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/power_handling/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "power"
    "cpufreq_register_driver"
    "cpufreq_register_governor"
    "cpufreq_set_policy"
    "acpi_os_execute"
    "acpi_enter_sleep_state"
    "acpi_battery_get_info"
    "acpi_power_get_state"
    "pm_suspend"
    "pm_resume"
    "pm_request_resume"
    "pm_runtime_get_sync"
    "thermal_zone_device_register"
    "thermal_zone_get_temp"
    "thermal_cooling_device_register"
    "thermal_cooling_device_set_cur_state"

)

ver_name="v6.1-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/power_handling/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


