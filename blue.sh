#In this slice, we must specify the destination and source addresses, otherwise it will cause a network storm.

#h65, h66, h67, h68, h69, h70, h71, h72, h73, h74, h75, h76, h77, h78, h79, h80
# L1_Acc-S17
fvctl -n add-flowspace bfs1 0000000000000041 1 in_port=1 blue=7
# fvctl -n add-flowspace bfs2 0000000000000041 1 in_port=2 blue=7
# fvctl -n add-flowspace bfs3 0000000000000041 1 in_port=3 blue=7
# fvctl -n add-flowspace bfs4 0000000000000041 1 in_port=4 blue=7
fvctl -n add-flowspace bfs5 0000000000000041 1 in_port=5 blue=7
fvctl -n add-flowspace bfs6 0000000000000041 1 in_port=6 blue=7
fvctl -n add-flowspace bfs7 0000000000000041 1 in_port=7 blue=7
fvctl -n add-flowspace bfs8 0000000000000041 1 in_port=8 blue=7
# L1_Acc-S18
fvctl -n add-flowspace bfs9 0000000000000042 1 in_port=1 blue=7
# fvctl -n add-flowspace bfs10 0000000000000042 1 in_port=2 blue=7
# fvctl -n add-flowspace bfs11 0000000000000042 1 in_port=3 blue=7
# fvctl -n add-flowspace bfs12 0000000000000042 1 in_port=4 blue=7
fvctl -n add-flowspace bfs13 0000000000000042 1 in_port=5 blue=7
fvctl -n add-flowspace bfs14 0000000000000042 1 in_port=6 blue=7
fvctl -n add-flowspace bfs15 0000000000000042 1 in_port=7 blue=7
fvctl -n add-flowspace bfs16 0000000000000042 1 in_port=8 blue=7
# L1_Acc-S19
fvctl -n add-flowspace bfs17 0000000000000043 1 in_port=1 blue=7
# fvctl -n add-flowspace bfs18 0000000000000043 1 in_port=2 blue=7
# fvctl -n add-flowspace bfs19 0000000000000043 1 in_port=3 blue=7
# fvctl -n add-flowspace bfs20 0000000000000043 1 in_port=4 blue=7
fvctl -n add-flowspace bfs21 0000000000000043 1 in_port=5 blue=7
fvctl -n add-flowspace bfs22 0000000000000043 1 in_port=6 blue=7
fvctl -n add-flowspace bfs23 0000000000000043 1 in_port=7 blue=7
fvctl -n add-flowspace bfs24 0000000000000043 1 in_port=8 blue=7
# L1_Acc-S20
fvctl -n add-flowspace bfs25 0000000000000044 1 in_port=1 blue=7
# fvctl -n add-flowspace bfs26 0000000000000044 1 in_port=2 blue=7
# fvctl -n add-flowspace bfs27 0000000000000044 1 in_port=3 blue=7
# fvctl -n add-flowspace bfs28 0000000000000044 1 in_port=4 blue=7
fvctl -n add-flowspace bfs29 0000000000000044 1 in_port=5 blue=7
fvctl -n add-flowspace bfs30 0000000000000044 1 in_port=6 blue=7
fvctl -n add-flowspace bfs31 0000000000000044 1 in_port=7 blue=7
fvctl -n add-flowspace bfs32 0000000000000044 1 in_port=8 blue=7

# L2_Agg-S17
fvctl -n add-flowspace bfs33 0000000000000021 1 in_port=5,src=10.0.0.65 blue=7
fvctl -n add-flowspace bfs33 0000000000000021 1 in_port=5,src=10.0.0.66 blue=7
fvctl -n add-flowspace bfs33 0000000000000021 1 in_port=5,src=10.0.0.67 blue=7
fvctl -n add-flowspace bfs33 0000000000000021 1 in_port=5,src=10.0.0.68 blue=7
fvctl -n add-flowspace bfs34 0000000000000021 1 in_port=6,src=10.0.0.69 blue=7
fvctl -n add-flowspace bfs34 0000000000000021 1 in_port=6,src=10.0.0.70 blue=7
fvctl -n add-flowspace bfs34 0000000000000021 1 in_port=6,src=10.0.0.71 blue=7
fvctl -n add-flowspace bfs34 0000000000000021 1 in_port=6,src=10.0.0.72 blue=7
fvctl -n add-flowspace bfs35 0000000000000021 1 in_port=7,src=10.0.0.73 blue=7
fvctl -n add-flowspace bfs35 0000000000000021 1 in_port=7,src=10.0.0.74 blue=7
fvctl -n add-flowspace bfs35 0000000000000021 1 in_port=7,src=10.0.0.75 blue=7
fvctl -n add-flowspace bfs35 0000000000000021 1 in_port=7,src=10.0.0.76 blue=7
fvctl -n add-flowspace bfs36 0000000000000021 1 in_port=8,src=10.0.0.77 blue=7
fvctl -n add-flowspace bfs36 0000000000000021 1 in_port=8,src=10.0.0.78 blue=7
fvctl -n add-flowspace bfs36 0000000000000021 1 in_port=8,src=10.0.0.79 blue=7
fvctl -n add-flowspace bfs36 0000000000000021 1 in_port=8,src=10.0.0.80 blue=7
# L2_Agg-S18
# fvctl -n add-flowspace bfs37 0000000000000022 1 in_port=5 blue=7
# fvctl -n add-flowspace bfs38 0000000000000022 1 in_port=6 blue=7
# fvctl -n add-flowspace bfs39 0000000000000022 1 in_port=7 blue=7
# fvctl -n add-flowspace bfs40 0000000000000022 1 in_port=8 blue=7
# # L2_Agg-S19
# fvctl -n add-flowspace bfs41 0000000000000023 1 in_port=5 blue=7
# fvctl -n add-flowspace bfs42 0000000000000023 1 in_port=6 blue=7
# fvctl -n add-flowspace bfs43 0000000000000023 1 in_port=7 blue=7
# fvctl -n add-flowspace bfs44 0000000000000023 1 in_port=8 blue=7
# # L2_Agg-S20
# fvctl -n add-flowspace bfs45 0000000000000024 1 in_port=5 blue=7
# fvctl -n add-flowspace bfs46 0000000000000024 1 in_port=6 blue=7
# fvctl -n add-flowspace bfs47 0000000000000024 1 in_port=7 blue=7
# fvctl -n add-flowspace bfs48 0000000000000024 1 in_port=8 blue=7
