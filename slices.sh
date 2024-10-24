fvctl -n add-slice purple tcp:127.0.0.1:4000 admin@purple
fvctl -n add-slice blue tcp:127.0.0.1:5000 admin@blue
fvctl -n add-slice red tcp:127.0.0.1:6000 admin@red

fvctl -n list-slices

sudo ovs-controller ptcp:4000
sudo ovs-controller ptcp:5000
sudo ovs-controller ptcp:6000
