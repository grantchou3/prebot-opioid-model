#!/bin/bash

for i in {1..40}
    do
        python run_gnap_mod.py seed$i-gnap-05 --run_seed $i --g_nap_str -0.5 --hyp_opioid 3 --syn_shut 0.3
        python run_gnap_mod.py seed$i-gnap-03 --run_seed $i --g_nap_str -0.3 --hyp_opioid 3 --syn_shut 0.3
        python run_gnap_mod.py seed$i-gnap-01 --run_seed $i --g_nap_str -0.1 --hyp_opioid 3 --syn_shut 0.3
        python run_gnap_mod.py seed$i-gnap05 --run_seed $i --g_nap_str 0.5 
        python run_gnap_mod.py seed$i-gnap03 --run_seed $i --g_nap_str 0.3
        python run_gnap_mod.py seed$i-gnap01 --run_seed $i --g_nap_str 0.1
    done

python get_burst_stats.py 1 40
python gnap_count_tbq.py