for flowspace in $(fvctl -n list-flowspace | grep Name | awk '{print $2}'); do
    fvctl -n remove-flowspace $flowspace
done