set("init.allow_root", true)
set("init.daemon", false)

set("log.stdout",true)
set("log.level",5)

set("harbor.bind_addr","0.0.0.0")
set("server.telnet",true)

liveinput = audio_to_stereo(input.harbor("/live", id="liveinput", port=8080, password="INPUTPASSWORD", buffer=3.0, max=6.0))
live = buffer.adaptative(liveinput, id="adapt_live", fallible=true, averaging=2.0, buffer=5.0, max=8.0, start=true)

# In the future, we will have more input streams added here:
livestreams = fallback(track_sensitive = false, [ live ])

radio = mksafe(fallback(track_sensitive = false, [livestreams ]))

output.icecast(%mp3(stereo=true,samplerate=44100,internal_quality=1,bitrate=192),
  format="audio/mpeg",
  host="icecast", port=8000, user="source", password="ICECASTPASSWORD",
  description="Radia Noden", mount="stream.mp3",
  name="(((( Radio Noden ))))", icy_metadata="true", radio)

