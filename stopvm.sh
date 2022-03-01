for vm in $(qm list | awk '{print $1}' | grep -Eo '[0-9]{1,3}'); do qm migrate $vm node2 --online; done
