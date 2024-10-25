# h77, h78, h79, h80, h81, h82, h83, h84
# L1_Acc-S20
# eth4: L2_Agg-S20-eth8
fvctl -n add-flowspace rfs1 0000000000000044 1 in_port=4 red=7
fvctl -n add-flowspace rfs1 0000000000000044 1 in_port=5 red=7
fvctl -n add-flowspace rfs1 0000000000000044 1 in_port=6 red=7
fvctl -n add-flowspace rfs1 0000000000000044 1 in_port=7 red=7
fvctl -n add-flowspace rfs1 0000000000000044 1 in_port=8 red=7
# L1_Acc-S21
# eth4: L2_Agg-S24-eth5
fvctl -n add-flowspace rfs1 0000000000000045 1 in_port=4 red=7
fvctl -n add-flowspace rfs1 0000000000000045 1 in_port=5 red=7
fvctl -n add-flowspace rfs1 0000000000000045 1 in_port=6 red=7
fvctl -n add-flowspace rfs1 0000000000000045 1 in_port=7 red=7
fvctl -n add-flowspace rfs1 0000000000000045 1 in_port=8 red=7
# L2_Agg-S20
# eth1: L3_Core-S13-eth5
fvctl -n add-flowspace rfs1 0000000000000024 1 in_port=1 red=7
fvctl -n add-flowspace rfs1 0000000000000024 1 in_port=8 red=7
# L2_Agg-S24
# eth1: L3_Core-S13-eth6
fvctl -n add-flowspace rfs1 0000000000000025 1 in_port=1 red=7
fvctl -n add-flowspace rfs1 0000000000000025 1 in_port=5 red=7
# L3_Core-S13
# eth5: L2_Agg-S20-eth1
# eth6: L2_Agg-S24-eth1
fvctl -n add-flowspace rfs99 000000000000000d 1 in_port=5 red=7
fvctl -n add-flowspace rfs100 000000000000000d 1 in_port=6 red=7
