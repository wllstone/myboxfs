alert ip $WORLD any -> $HOME any (msg:"DOS-SIG Jolt attack"; dsize:408; fragbits:M; sid:268; rev:4;)
alert udp $WORLD any -> $HOME any (msg:"DOS-SIG Teardrop attack"; fragbits:M; id:242; sid:270; rev:6;)
alert udp any 19 <> any 7 (msg:"DOS-SIG UDP echo+chargen bomb"; sid:271; rev:4;)
alert ip $WORLD any -> $HOME any (msg:"DOS-SIG IGMP dos attack"; fragbits:M+; ip_proto:2; content:"|02 00|"; depth:2; sid:272; rev:7;)
alert ip $WORLD any -> $HOME any (msg:"DOS-SIG IGMP dos attack"; fragbits:M+; ip_proto:2; content:"|00 00|"; depth:2; sid:273; rev:7;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG ath"; itype:8; content:"+++ath"; nocase; sid:274; rev:5;)
alert tcp $WORLD any <> $HOME any (msg:"DOS-SIG NAPTHA"; flow:stateless; flags:S; id:413; seq:6060842; sid:275; rev:11;)
alert tcp $WORLD any -> $HOME 7070 (msg:"DOS-SIG Real Audio Server"; flow:to_server,established; content:"|FF F4 FF FD 06|"; sid:276; rev:5;)
alert tcp $WORLD any -> $HOME 7070 (msg:"DOS-SIG Real Server template.html"; flow:to_server,established; content:"/viewsource/template.html?"; nocase; sid:277; rev:5;)
alert tcp $WORLD any -> $HOME 8080 (msg:"DOS-SIG Real Server template.html"; flow:to_server,established; content:"/viewsource/template.html?"; nocase; sid:278; rev:5;)
alert udp $WORLD any -> $HOME 161 (msg:"DOS-SIG Bay/Nortel Nautica Marlin"; dsize:0; sid:279; rev:3;)
alert udp $WORLD any -> $HOME 9 (msg:"DOS-SIG Ascend Route"; content:"NAMENAME"; depth:50; offset:25; sid:281; rev:5;)
alert tcp $WORLD any -> $HOME 617 (msg:"DOS-SIG arkiea backup"; flow:to_server,established; dsize:>1445; sid:282; rev:8;)
alert tcp $WORLD any -> $HOME 135:139 (msg:"DOS-SIG Winnuke attack"; flow:stateless; flags:U+; sid:1257; rev:9;)
alert tcp $WORLD any -> $HOME 3372 (msg:"DOS-SIG MSDTC attempt"; flow:to_server,established; dsize:>1023; sid:1408; rev:10;)
alert tcp $WORLD any -> $HOME 6004 (msg:"DOS-SIG iParty DOS attempt"; flow:to_server,established; content:"|FF FF FF FF FF FF|"; offset:0; sid:1605; rev:6;)
alert tcp $WORLD any -> $HOME 6789:6790 (msg:"DOS-SIG DB2 dos attempt"; flow:to_server,established; dsize:1; sid:1641; rev:9;)
alert tcp $WORLD any -> $HOME 80 (msg:"DOS-SIG Cisco attempt"; flow:to_server,established; dsize:1; content:"|13|"; sid:1545; rev:8;)
alert udp $WORLD any -> $HOME 500 (msg:"DOS-SIG ISAKMP invalid identification payload attempt"; content:"|05|"; depth:1; offset:16; byte_test:2,>,4,30; byte_test:2,<,8,30; sid:2486; rev:5;)
alert tcp $WORLD any <> $HOME 179 (msg:"DOS-SIG BGP spoofed connection reset attempt"; flow:established; flags:RSF*; threshold:type both,track by_dst,count 10,seconds 10; sid:2523; rev:7;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG TFN Probe"; icmp_id:678; itype:8; content:"1234"; sid:221; rev:4;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG tfn2k icmp possible communication"; icmp_id:0; itype:0; content:"AAAAAAAAAA"; sid:222; rev:2;)
alert udp $WORLD any -> $HOME 31335 (msg:"DOS-SIG Trin00 Daemon to Master PONG message detected"; content:"PONG"; sid:223; rev:3;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG TFN client command BE"; icmp_id:456; icmp_seq:0; itype:0; sid:228; rev:3;)
alert tcp $HOME 20432 -> $WORLD any (msg:"DOS-SIG shaft client login to handler"; flow:from_server,established; content:"login|3A|"; sid:230; rev:5;)
alert udp $WORLD any -> $HOME 18753 (msg:"DOS-SIG shaft handler to agent"; content:"alive tijgu"; sid:239; rev:2;)
alert udp $WORLD any -> $HOME 20433 (msg:"DOS-SIG shaft agent to handler"; content:"alive"; sid:240; rev:2;)
alert tcp $HOME any <> $WORLD any (msg:"DOS-SIG shaft synflood"; flow:stateless; flags:S,12; seq:674711609; sid:241; rev:9;)
alert udp $WORLD any -> $HOME 31335 (msg:"DOS-SIG Trin00 Daemon to Master message detected"; content:"l44"; sid:231; rev:3;)
alert udp $WORLD any -> $HOME 31335 (msg:"DOS-SIG Trin00 Daemon to Master *HELLO* message detected"; content:"*HELLO*"; sid:232; rev:5;)
alert tcp $WORLD any -> $HOME 27665 (msg:"DOS-SIG Trin00 Attacker to Master default startup password"; flow:established,to_server; content:"betaalmostdone"; sid:233; rev:3;)
alert tcp $WORLD any -> $HOME 27665 (msg:"DOS-SIG Trin00 Attacker to Master default password"; flow:established,to_server; content:"gOrave"; sid:234; rev:2;)
alert tcp $WORLD any -> $HOME 27665 (msg:"DOS-SIG Trin00 Attacker to Master default mdie password"; flow:established,to_server; content:"killme"; sid:235; rev:2;)
alert udp $WORLD any -> $HOME 27444 (msg:"DOS-SIG Trin00 Master to Daemon default password attempt"; content:"l44adsl"; sid:237; rev:2;)
alert icmp $HOME any -> $WORLD any (msg:"DOS-SIG TFN server response"; icmp_id:123; icmp_seq:0; itype:0; content:"shell bound to port"; sid:238; rev:6;)
alert udp $WORLD any -> $HOME 6838 (msg:"DOS-SIG mstream agent to handler"; content:"newserver"; sid:243; rev:2;)
alert udp $WORLD any -> $HOME 10498 (msg:"DOS-SIG mstream handler to agent"; content:"stream/"; sid:244; rev:3;)
alert udp $WORLD any -> $HOME 10498 (msg:"DOS-SIG mstream handler ping to agent"; content:"ping"; sid:245; rev:3;)
alert udp $WORLD any -> $HOME 10498 (msg:"DOS-SIG mstream agent pong to handler"; content:"pong"; sid:246; rev:2;)
alert tcp $WORLD any -> $HOME 12754 (msg:"DOS-SIG mstream client to handler"; flow:to_server,established; content:">"; sid:247; rev:4;)
alert tcp $HOME 12754 -> $WORLD any (msg:"DOS-SIG mstream handler to client"; flow:to_client,established; content:">"; sid:248; rev:4;)
alert tcp $WORLD any -> $HOME 15104 (msg:"DOS-SIG mstream client to handler"; flow:stateless; flags:S,12; sid:249; rev:8;)
alert tcp $HOME 15104 -> $WORLD any (msg:"DOS-SIG mstream handler to client"; flow:from_server,established; content:">"; sid:250; rev:4;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG - TFN client command LE"; icmp_id:51201; icmp_seq:0; itype:0; sid:251; rev:3;)
alert icmp 3.3.3.3/32 any -> $WORLD any (msg:"DOS-SIG Stacheldraht server spoof"; icmp_id:666; itype:0; sid:224; rev:3;)
alert icmp $HOME any -> $WORLD any (msg:"DOS-SIG Stacheldraht gag server response"; icmp_id:669; itype:0; content:"sicken"; sid:225; rev:6;)
alert icmp $HOME any -> $WORLD any (msg:"DOS-SIG Stacheldraht server response"; icmp_id:667; itype:0; content:"ficken"; sid:226; rev:6;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG Stacheldraht client spoofworks"; icmp_id:1000; itype:0; content:"spoofworks"; sid:227; rev:6;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG Stacheldraht client check gag"; icmp_id:668; itype:0; content:"gesundheit!"; sid:236; rev:6;)
alert icmp $WORLD any -> $HOME any (msg:"DOS-SIG Stacheldraht client check skillz"; icmp_id:666; itype:0; content:"skillz"; sid:229; rev:5;)
alert icmp $WORLD any <> $HOME any (msg:"DOS-SIG Stacheldraht handler->agent niggahbitch"; icmp_id:9015; itype:0; content:"niggahbitch"; sid:1854; rev:7;)
alert icmp $WORLD any <> $HOME any (msg:"DOS-SIG Stacheldraht agent->handler skillz"; icmp_id:6666; itype:0; content:"skillz"; sid:1855; rev:7;)
alert icmp $WORLD any <> $HOME any (msg:"DOS-SIG Stacheldraht handler->agent ficken"; icmp_id:6667; itype:0; content:"ficken"; sid:1856; rev:7;)
alert UDP $WORLD any -> $HOME any (msg:"DOS-SIG MISC DOS Attack"; content:"|3435 3637 3839 4142 4344 4546 4748 494a 4b4c 4d4e 4f50 5152 5354 5556 5758 595a|";sid:5000;)
