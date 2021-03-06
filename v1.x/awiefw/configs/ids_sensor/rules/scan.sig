alert tcp any 10101 -> $HOME_NET any (msg:"1\:1 SCAN myscan"; ttl: >220; ack: 0; flags: S;)
alert tcp any any -> $HOME_NET 113 (msg:"1\:1 SCAN ident version request"; flow:to_server,established; content: "VERSION|0A|"; depth: 16;)
alert tcp any any -> $HOME_NET 80 (msg:"1\:1 SCAN cybercop os probe"; flags: SF12; dsize: 0;)
alert tcp any any -> $HOME_NET 3128 (msg:"1\:1 SCAN Squid Proxy attempt"; flags:S,12;)
alert tcp any any -> $HOME_NET 1080 (msg:"1\:1 SCAN SOCKS Proxy attempt"; flags:S,12;)
alert tcp any any -> $HOME_NET 8080 (msg:"1\:1 SCAN Proxy \(8080\) attempt"; flags:S,12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN FIN"; flags:F,12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN ipEye SYN scan"; flags:S; seq:1958810375;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN NULL"; flags:0; seq:0; ack:0;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN SYN FIN";flags:SF,12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN XMAS"; flags:SRAFPU,12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN nmap XMAS"; flags:FPU,12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN nmap TCP"; flags:A,12; ack:0;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN nmap fingerprint attempt"; flags:SFPU;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN synscan portscan"; id: 39426; flags: SF;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN cybercop os PA12 attempt"; content:"AAAAAAAAAAAAAAAA"; depth:16; flags:PA12;)
alert tcp any any -> $HOME_NET any (msg:"1\:1 SCAN cybercop os SFU12 probe"; content: "AAAAAAAAAAAAAAAA"; depth:16; flags: SFU12; ack: 0;)
alert udp any any -> $HOME_NET 10080:10081 (msg:"1\:1 SCAN Amanda client version request"; content:"Amanda"; nocase;)
alert udp any any -> $HOME_NET 49 (msg:"1\:1 SCAN XTACACS logout"; content: "|8007 0000 0700 0004 0000 0000 00|";)
alert udp any any -> $HOME_NET 7 (msg:"1\:1 SCAN cybercop udp bomb"; content:"cybercop";)
alert udp any any -> $HOME_NET any (msg:"1\:1 SCAN Webtrends Scanner UDP Probe"; content: "|0A|help|0A|quite|0A|";)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 SCAN cybercop os probe"; content: "AAAAAAAAAAAAAAAA"; flags:SFP; ack: 0; depth: 16;)
