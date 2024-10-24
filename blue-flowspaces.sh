# h15 -> h16
# fvctl -n add-flowspace bfs1 31 1 in_port=7,nw_src=10.0.0.15,nw_dst=10.0.0.16 blue=7
# fvctl -n add-flowspace bfs2 31 1 in_port=8,nw_src=10.0.0.16,nw_dst=10.0.0.15 blue=7
fvctl -n add-flowspace bfs1 31 1 in_port=7 blue=7
fvctl -n add-flowspace bfs2 31 1 in_port=8 blue=7

# fvctl -n add-flowspace bfs2 0000000000000031 1 in_port=3,nw_src=10.0.0.15,nw_dst=10.0.0.2 blue=7