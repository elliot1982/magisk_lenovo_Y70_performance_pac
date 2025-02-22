echo 0 >/data/adb/perfomance
settings put global updatable_driver_all_apps 1

echo walt >/sys/devices/system/cpu/cpufreq/policy0/scaling_governor 
echo walt >/sys/devices/system/cpu/cpufreq/policy4/scaling_governor 
echo walt >/sys/devices/system/cpu/cpufreq/policy7/scaling_governor

echo 1670400 >/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo 300000 >/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq
echo 1  /sys/devices/system/cpu/cpufreq/policy0/walt/pl

echo 1651200 >/sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
echo 633600 >/sys/devices/system/cpu/cpufreq/policy4/scaling_min_freq
echo 1  /sys/devices/system/cpu/cpufreq/policy4/walt/pl

echo 2131200 >/sys/devices/system/cpu/cpufreq/policy7/scaling_max_freq
echo 787200 >/sys/devices/system/cpu/cpufreq/policy7/scaling_min_freq
echo 0 >/sys/devices/system/cpu/cpufreq/policy7/walt/boost 
echo 1  /sys/devices/system/cpu/cpufreq/policy7/walt/pl

echo 0:300000 1:300000 2:300000 3:300000 4:633600 5:633600 6:633600 7:787200 >/sys/kernel/msm_performance/parameters/cpu_min_freq 
echo 0:1670400 1:1670400 2:1670400 3:1670400 4:1651200 5:1651200 6:1651200 7:2131200 >/sys/kernel/msm_performance/parameters/cpu_max_freq 

echo 100 >/sys/devices/system/cpu/cpu0/core_ctl/offline_delay_ms 
echo 1 >/sys/devices/system/cpu/cpu0/core_ctl/enable 
echo 100 >/sys/devices/system/cpu/cpu4/core_ctl/offline_delay_ms 
echo 1 >/sys/devices/system/cpu/cpu4/core_ctl/enable 
echo 100 >/sys/devices/system/cpu/cpu7/core_ctl/offline_delay_ms 
echo 1 >/sys/devices/system/cpu/cpu7/core_ctl/enable 
echo 1 >/sys/devices/system/cpu/cpu7/core_ctl/max_cpus

echo 1 >/sys/devices/system/cpu/cpu0/rq-stats/mpctl
echo 530 >/sys/devices/system/cpu/cpu0/rq-stats/schctl 

echo 1>/sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/force_bus_on 
echo 1 >/sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/force_clk_on 
echo 1 >/sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/force_no_nap 
echo 1 >/sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/force_rail_on 
echo 14 >/sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/min_pwrlevel
echo 3 > sys/class/devfreq/3d00000.qcom,kgsl-3d0/device/kgsl/kgsl-3d0/thermal_pwrlevel

echo 0 >/sys/class/kgsl/kgsl-3d0/perfcounter
echo 810000000 >/sys/class/kgsl/kgsl-3d0/devfreq/max_freq 

echo 1 >/sys/devices/system/cpu/bus_dcvs/DDRQOS/boost_freq
echo 1708800 >/sys/devices/system/cpu/bus_dcvs/L3/boost_freq

echo simple_ondemand >/sys/class/devfreq/1d84000.ufshc/governor
echo 40 >/sys/class/devfreq/1d84000.ufshc/polling_interval

echo 10 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/hist_memory 
echo 10 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/hyst_length 
echo 3 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/hyst_trigger_count 
echo 10 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/sample_ms 
echo 90 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/io_percent 
echo 1600 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/idle_mbps 
echo 40 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/window_ms 
echo 2092000 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/max_freq 
echo 2092000 >/sys/devices/system/cpu/bus_dcvs/DDR/boost_freq 
echo 30 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/ab_scale

echo 10 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/hist_memory
echo 10 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/hyst_length 
echo 3 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/hyst_trigger_count 
echo 10 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/sample_ms 
echo 90 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/io_percent 
echo 1066000 >/sys/devices/system/cpu/bus_dcvs/LLCC/boost_freq 
echo 30 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/ab_scale 
echo 1600 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/idle_mbps 
echo 40 >/sys/devices/system/cpu/bus_dcvs/LLCC/190b6400.qcom,bwmon-llcc/window_ms 

echo 547000 >/sys/devices/system/cpu/bus_dcvs/DDR/19091000.qcom,bwmon-ddr/min_freq 

echo 883 >/sys/devices/system/cpu/bus_dcvs/DDR/soc:qcom,memlat:ddr:gold/freq_scale_limit_mhz
echo 787 >/sys/devices/system/cpu/bus_dcvs/DDR/soc:qcom,memlat:ddr:prime/freq_scale_limit_mhz
echo 2995 >/sys/devices/system/cpu/bus_dcvs/DDR/soc:qcom,memlat:ddr:prime-latfloor/freq_scale_limit_mhz
echo 1132 >/sys/devices/system/cpu/bus_dcvs/DDR/soc:qcom,memlat:ddr:silver/freq_scale_limit_mhz
echo 633 >/sys/devices/system/cpu/bus_dcvs/LLCC/soc:qcom,memlat:llcc:gold/freq_scale_limit_mhz
echo 556 >/sys/devices/system/cpu/bus_dcvs/LLCC/soc:qcom,memlat:llcc:silver/freq_scale_limit_mhz
echo 633 >/sys/devices/system/cpu/bus_dcvs/L3/soc:qcom,memlat:l3:gold/freq_scale_limit_mhz
echo 787 >/sys/devices/system/cpu/bus_dcvs/L3/soc:qcom,memlat:l3:prime/freq_scale_limit_mhz
echo 307 >/sys/devices/system/cpu/bus_dcvs/L3/soc:qcom,memlat:l3:silver/freq_scale_limit_mhz

echo simple_ondemand >/sys/class/devfreq/1d84000.ufshc/governor