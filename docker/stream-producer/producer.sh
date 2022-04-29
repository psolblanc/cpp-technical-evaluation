#!/bin/sh

sleep 4
echo "========================FFMPEG ENEL Videos=========================="
while :; do
  ffmpeg -re -stream_loop -1 -i ${VIDEO_PATH}/train-example.mp4 -c:v copy -vsync 0 -f rtsp rtsp://localhost:${RTSP_PORT}/cam01 &
  ffmpeg -re -stream_loop -1 -i ${VIDEO_PATH}/train-example.mp4 -c:v copy -vsync 0 -f rtsp rtsp://localhost:${RTSP_PORT}/cam02 &
  wait
done
echo "========================END FFMPEG ENEL Videos=========================="
