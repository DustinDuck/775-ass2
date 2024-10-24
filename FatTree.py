from mininet.topo import Topo
from mininet.net import Mininet
from mininet.node import RemoteController
from mininet.link import TCLink
from mininet.util import dumpNetConnections

class FatTree(Topo):

    def __init__(self):
        Topo.__init__(self)

        k = 8
        pod = k
        Core_L3 = (pod//2)**2
        Agg_L2 = pod*pod//2 
        Acc_L1 = Agg_L2

        c = [] # core layer switches
        a = [] # aggregation layer switches
        e = [] # edge layer switches

        # Adding core layer switches with unique dpid
        for i in range (Core_L3):
            c_sw = self.addSwitch('L3_C-S{}'.format(i+1), dpid='{:016x}'.format(i+1))
            c.append(c_sw)
             
        # Adding aggregation layer switches with unique dpid
        for i in range (Agg_L2):
            a_sw = self.addSwitch('L2_Agg-S{}'.format(i+1), dpid='{:016x}'.format(Core_L3 + i + 1))
            a.append(a_sw)    
            
        # Adding edge layer switches with unique dpid
        for i in range (Acc_L1):
            e_sw = self.addSwitch('L1_Acc-S{}'.format(i+1), dpid='{:016x}'.format(Core_L3 + Agg_L2 + i + 1))
            e.append(e_sw)      

        # Creating links between core layer and aggregation layer
        for i in range(Core_L3):
            c_sw = c[i]
            start = i // (pod // 2)
            for j in range(pod):
                self.addLink(c_sw, a[start + j * (pod // 2)], cls=TCLink, bw=8, delay='3ms')

        # Creating links between aggregation layer and edge layer
        for i in range(Agg_L2):
            group = i // (pod // 2)
            for j in range(pod // 2):
                self.addLink(a[i], e[group * (pod // 2) + j], cls=TCLink, bw=8, delay='3ms')

        # Creating links between edge layer and hosts and creating hosts
        for i in range(Acc_L1):
            for j in range(4):
                hs = self.addHost('h{}'.format(i * 4 + j + 1))
                self.addLink(e[i], hs, cls=TCLink, bw=8, delay='3ms')

topos = {'fattree': (lambda: FatTree())}
