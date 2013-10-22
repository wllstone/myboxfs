alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG EXPLOIT x86 BSD overflow"; flow:to_server,established; content:"^|0E|1|C0 B0 3B 8D|~|0E 89 FA 89 F9|"; sid:286; rev:11;)
alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG EXPLOIT x86 BSD overflow"; flow:to_server,established; content:"h]^|FF D5 FF D4 FF F5 8B F5 90|f1"; sid:287; rev:6;)
alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG EXPLOIT x86 Linux overflow"; flow:to_server,established; content:"|D8|@|CD 80 E8 D9 FF FF FF|/bin/sh"; sid:288; rev:6;)
alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG EXPLOIT x86 SCO overflow"; flow:to_server,established; content:"V|0E|1|C0 B0 3B 8D|~|12 89 F9 89 F9|"; sid:289; rev:9;)
alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG EXPLOIT qpopper overflow"; flow:to_server,established; content:"|E8 D9 FF FF FF|/bin/sh"; sid:290; rev:9;)
alert tcp $WORLD any -> $HOME 110 (msg:"POP-SIG USER format string attempt"; flow:to_server,established; content:"USER"; nocase; pcre:"/^USER\s+[^\n]*?%/smi"; sid:2250; rev:5;)
alert tcp $WORLD any -> $HOME 109 (msg:"POP-SIG FOLD overflow attempt"; flow:established,to_server; content:"FOLD"; nocase; isdataat:256,relative; pcre:"/^FOLD\s[^\n]{256}/smi"; sid:1934; rev:10;)
alert tcp $WORLD any -> $HOME 109 (msg:"POP-SIG FOLD arbitrary file attempt"; flow:established,to_server; content:"FOLD"; nocase; pcre:"/^FOLD\s+\//smi"; sid:1935; rev:5;)
alert tcp $WORLD any -> $HOME 109 (msg:"POP-SIG x86 Linux overflow"; flow:established,to_server; content:"|EB|,[|89 D9 80 C1 06|9|D9 7C 07 80 01|"; sid:284; rev:8;)
alert tcp $WORLD any -> $HOME 109 (msg:"POP-SIG x86 Linux overflow"; flow:established,to_server; content:"|FF FF FF|/BIN/SH|00|"; sid:285; rev:8;)
