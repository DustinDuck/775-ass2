# h15 -> h16
fvctl -n add-flowspace bfs1 0000000000000031 1 in_port=3,nw_src=10.0.0.15,nw_dst=10.0.0.16 blue=7
fvctl -n add-flowspace bfs2 0000000000000031 1 in_port=4,nw_src=10.0.0.16,nw_dst=10.0.0.15 blue=7

# fvctl -n add-flowspace bfs2 0000000000000031 1 in_port=3,nw_src=10.0.0.15,nw_dst=10.0.0.2 blue=7