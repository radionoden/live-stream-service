# Live Stream Service


## How to start

### 1. Create environment

Create an `.env` file in the project root. Example content:

```
ICECASTPASSWORD=verysecret
INPUTPASSWORD=secretpassword
```

Both environment variables should be set.

### 2. Start the docker services

```
$ docker-compose up --build
```

### 3. Violà!

It's running!


## icecast/silence-44100-192k-stereo.mp3

The `icecast/silence-44100-192k-stereo.mp3` file was created this way:
 
```
#!/bin/bash
SAMPLING="44100"
BITRATE="192k"
SECONDS="1"
STEREO="stereo"
ffmpeg -f lavfi -i anullsrc=r=$SAMPLING:cl=$STEREO -t $SECONDS -b:a $BITRATE -acodec libmp3lame silence-$SAMPLING-$BITRATE-$STEREO.mp3
```

It is used by icecast as a silent fallback (in case of problems).


