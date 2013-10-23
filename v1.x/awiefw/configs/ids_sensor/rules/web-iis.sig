alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS MDAC Content-Type overflow attempt"; flow:to_server,established; uricontent:"/msadcs.dll"; content:"Content-Type\:"; content:!"|0A|"; within:50;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ISAPI .printer access"; uricontent:".printer"; nocase; flow:to_server,established;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ISAPI .ida attempt"; flow:to_server,established; uricontent:".ida?"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ISAPI .ida access"; uricontent:".ida"; nocase; flow:to_server,established;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ISAPI .idq attempt"; flow:to_server,established; uricontent:".idq?"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ISAPI .idq access"; uricontent:".idq"; nocase; flow:to_server,established;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS %2E-asp access";flow:to_server,established; uricontent:"%2e.asp"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS *.idc attempt";flow:to_server,established; uricontent:"/*.idc"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS ..\.. access";flow:to_server,established; content:"|2e2e5c2e2e|";)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS unicode directory traversal attempt"; flow:to_server,established; content:"/..%c0%af../"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS unicode directory traversal attempt"; flow:to_server,established; content:"/..%c1%1c../"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS unicode directory traversal attempt"; flow:to_server,established; content:"/..%c1%9c../"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS unicode directory traversal attempt"; flow:to_server,established; content:"/..%255c.."; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS anot.htr access";flow:to_server,established; uricontent:"/iisadmpwd/anot"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS asp-dot attempt";flow:to_server,established; uricontent:".asp."; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS asp-srch attempt";flow:to_server,established; uricontent:"#filename=*.asp"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS bdir.htr access"; uricontent:"/bdir.htr"; nocase; flow:to_server,established;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS cmd32.exe access"; flow:to_server,established; content:"cmd32.exe"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS cmd.exe access"; flow:to_server,established; content:"cmd.exe"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS CodeRed v2 root.exe access"; flow:to_server,established; uricontent:"/root.exe"; nocase;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS outlook web dos"; flow:to_server,established; uricontent:"/exchange/LogonFrm.asp?"; nocase; content:"mailbox="; nocase; content:"|25 25 25|";)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS WEBDAV exploit attempt"; flow:to_server,established; content:"HTTP/1.1|0a|Content-type|3a| text/xml|0a|HOST|3a|"; content:"Accept|3a| |2a|/|2a0a|Translate|3a| f|0a|Content-length|3a|5276|0a0a|"; distance:1;)
alert tcp any any -> $HOME_NET $HTTP_PORTS (msg:"1\:1 WEB-IIS WEBDAV nessus safe scan attempt"; flow:to_server,established; content:"SEARCH / HTTP/1.1|0d0a|Host|3a|"; content:"|0d0a0d0a|"; within:255;)
