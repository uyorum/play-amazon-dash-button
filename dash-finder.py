from scapy.all import DHCP, sniff


def arp_display(pkt):
    if pkt[DHCP].options[0] == ('message-type', 3):       # DHCP Request
        print "DHCP Request from: " + pkt.src

print sniff(prn=arp_display,
            filter="udp and src host 0.0.0.0 and dst port 67",
            store=0,
            count=0)
