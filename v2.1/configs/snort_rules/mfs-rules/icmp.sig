alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG ISS Pinger"; itype:8; content:"ISSPNGRQ"; depth:32; sid:465; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG L3retriever Ping"; icode:0; itype:8; content:"ABCDEFGHIJKLMNOPQRSTUVWABCDEFGHI"; depth:32; sid:466; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG Nemesis v1.1 Echo"; dsize:20; icmp_id:0; icmp_seq:0; itype:8; content:"|00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00|"; sid:467; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG PING NMAP"; dsize:0; itype:8; sid:469; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG icmpenum v1.1.1"; dsize:0; icmp_id:666 ; icmp_seq:0; id:666; itype:8; sid:471; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG redirect host"; icode:1; itype:5; sid:472; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG redirect net"; icode:0; itype:5; sid:473; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG superscan echo"; dsize:8; itype:8; content:"|00 00 00 00 00 00 00 00|"; sid:474; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG traceroute ipopts"; ipopts:rr; itype:0; sid:475; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG webtrends scanner"; icode:0; itype:8; content:"|00 00 00 00|EEEEEEEEEEEE"; sid:476; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG Source Quench"; icode:0; itype:4; sid:477; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG Broadscan Smurf Scanner"; dsize:4; icmp_id:0; icmp_seq:0; itype:8; sid:478; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG PING speedera"; itype:8; content:"89|3A 3B|<=>?"; depth:100; sid:480; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG TJPingPro1.1Build 2 Windows"; itype:8; content:"TJPingPro by Jim"; depth:32; sid:481; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG PING WhatsupGold Windows"; itype:8; content:"WhatsUp - A Netw"; depth:32; sid:482; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG PING CyberKit 2.2 Windows"; itype:8; content:"|AA AA AA AA AA AA AA AA AA AA AA AA AA AA AA AA|"; depth:32; sid:483; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG PING Sniffer Pro/NetXRay network scan"; itype:8; content:"Cinco Network, Inc."; depth:32; sid:484; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG digital island bandwidth query"; content:"mailto|3A|ops@digisle.com"; depth:22; sid:1813; )
alert icmp $WORLD any -> $HOME any (msg:"ICMP-SIG Large ICMP Packet"; dsize:>800; sid:499; )
