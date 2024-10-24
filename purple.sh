# L1_Acc-S4
# h15 <-> h16
fvctl -n add-flowspace pfs1 0000000000000034 1 in_port=7 purple=7
fvctl -n add-flowspace pfs2 0000000000000034 1 in_port=8 purple=7
# h15 h16 <-> h17 h18 h19 h20
fvctl -n add-flowspace pfs3 0000000000000034 1 in_port=2 purple=7
fvctl -n add-flowspace pfs4 0000000000000034 1 in_port=7 purple=7
fvctl -n add-flowspace pfs4 0000000000000034 1 in_port=8 purple=7
# L1_Acc-S5
fvctl -n add-flowspace pfs5 0000000000000035 1 in_port=2 purple=7
fvctl -n add-flowspace pfs6 0000000000000035 1 in_port=5 purple=7
fvctl -n add-flowspace pfs6 0000000000000035 1 in_port=6 purple=7
fvctl -n add-flowspace pfs6 0000000000000035 1 in_port=7 purple=7
fvctl -n add-flowspace pfs6 0000000000000035 1 in_port=8 purple=7
# L2_Agg-S2
fvctl -n add-flowspace pfs7 0000000000000012 1 in_port=8 purple=7
fvctl -n add-flowspace pfs8 0000000000000012 1 in_port=2 purple=7
# L2_Agg-S6
fvctl -n add-flowspace pfs9 0000000000000016 1 in_port=2 purple=7
fvctl -n add-flowspace pfs10 0000000000000016 1 in_port=5 purple=7
# L3_C-S6
fvctl -n add-flowspace pfs99 0000000000000006 1 in_port=1 purple=7
fvctl -n add-flowspace pfs100 0000000000000006 1 in_port=2 purple=7



# fvctl -n add-flowspace bfs2 0000000000000031 1 in_port=3,nw_src=10.0.0.15,nw_dst=10.0.0.2 blue=7