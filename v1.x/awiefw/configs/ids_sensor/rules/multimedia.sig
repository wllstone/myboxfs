alert tcp any any -> any 80 (msg:"0\:1 MULTIMEDIA -  Quicktime User Agent access"; flow:to_server,established; content:"User-Agent\: Quicktime";)
alert tcp any 80 -> any any (msg:"0\:1 MULTIMEDIA -  Windows Media audio download"; flow:from_server,established; content:"Content-type\: audio/x-ms-wma"; content:"|0a|"; within:2;)
alert tcp any 80 -> any any (msg:"0\:1 MULTIMEDIA -  Windows Media Video download"; flow:from_server,established; content:"Content-type\: video/x-ms-asf"; content:"|0a|"; within:2;)
alert tcp any 80 -> any any (msg:"0\:1 MULTIMEDIA -  Shoutcast playlist redirection"; flow:from_server,established; content:"Content-type\: audio/x-scpls"; content:"|0a|"; within:2;)
alert tcp any 80 -> any any (msg:"0\:1 MULTIMEDIA -  Icecast playlist redirection"; flow:from_server,established; content:"Content-type\: audio/x-mpegurl"; content:"|0a|"; within:2;)
alert tcp any any -> 64.245.58.0/23 any (msg:"0\:1 MULTIMEDIA -  audio galaxy keepalive"; flow:established; content:"|45 5F 00 03 05|"; offset:0; depth:5;)
