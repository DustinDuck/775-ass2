for flowspace in $(sudo fvctl -n list-flowspace | grep '"name"' | awk -F'"' '{print $6}'); do
    sudo fvctl -n remove-flowspace $flowspace
done
