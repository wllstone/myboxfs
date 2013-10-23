alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET Solaris memory mismanagement exploit attempt"; flow:to_server,established; content:"|A0 23 A0 10 AE 23 80 10 EE 23 BF EC 82 05 E0 D6 90 25 E0|";)
alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET SGI telnetd format bug"; flow:to_server,established; content:"_RLD"; content:"bin/sh";)
alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET livingston DOS"; flow:to_server,established; content:"|fff3 fff3 fff3 fff3 fff3|";)
alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET resolv_host_conf"; flow:to_server,established; content:"resolv_host_conf";)
alert tcp any 23 -> $HOME_NET any (msg:"1\:1 TELNET not on console"; flow:from_server,established; content:"not on system console"; nocase;)
alert tcp any 23 -> $HOME_NET any (msg:"1\:1 TELNET root login"; content:"login\: root"; flow:from_server,established;)
alert tcp any 23 -> $HOME_NET any (msg:"1\:1 TELNET bsd telnet exploit response"; flow:from_server,established; content: "|0D0A|[Yes]|0D0A FFFE 08FF FD26|";)
alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET bsd exploit client finishing"; flow:to_client,established; dsize:>200; content:"|FF F6 FF F6 FF FB 08 FF F6|"; offset:200; depth:50;)
alert tcp any any -> $HOME_NET 23 (msg:"1\:1 TELNET 4Dgifts SGI account attempt"; flow:to_server,established; content:"4Dgifts";)
