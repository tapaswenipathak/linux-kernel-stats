#!/bin/bash

# Obtains git log files for various keywords related to power handling, for all versions of linux kernel
# Contributor: kavita23meena.2002@gmail.com
SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

power_keywords=( "power"
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

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    for k in "${power_keywords[@]}"; do
        git log --all --grep="$k"
    done
done

# Extended Version
ver_name1="v3.19-rc3"
git checkout ${ver_name1}

for k in "${power_keywords[@]}"; do
    git log --all --grep="$k"
done

ver_name2="v6.1-rc1"
git checkout ${ver_name2}

for k in "${power_keywords[@]}"; do
    git log --all --grep="$k"
done


for k in "${power_keywords[@]}"; do
    git log --all --grep="$k"
done