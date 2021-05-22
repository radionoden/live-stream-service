# Live Stream Service

## silence-44100-192k-stereo.mp3

The `silence-44100-192k-stereo.mp3` file was created this way:
 
```
#!/bin/bash
SAMPLING="44100"
BITRATE="192k"
SECONDS="1"
STEREO="stereo"
ffmpeg -f lavfi -i anullsrc=r=$SAMPLING:cl=$STEREO -t $SECONDS -b:a $BITRATE -acodec libmp3lame silence-$SAMPLING-$BITRATE-$STEREO.mp3
```

It is used by icecast as a silent fallback (in case of problems).


