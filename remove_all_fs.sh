for flowspace in $(sudo fvctl -n list-flowspace | grep Name | awk '{print $2}'); do
    sudo fvctl -n remove-flowspace $flowspace
done