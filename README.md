# What is this?
Tools to benchmark the Linux framebuffer (`/dev/fb0`) using CPU / software-renderer.

# How to compile ?
* Compile: `make`
* Static compile: `make LDFLAGS="-static"`
* Install: `sudo make install`
* Uninstall: `sudo make uninstall`

# How to run ?
There are two tools available, rectangle and sierpinski:

* `./fbmark_rectangle`
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/8d8a8f60-9d17-422d-8b90-16d10d4347b6" />

* `./fbmark_sierpinski`
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/8f608b86-3204-42f3-b7e5-27ee0363ff07" />

# Tests
Raspberry Pi 1 model B 512MB (full overclock):
```bash
$ ./fbmark_rectangle 
Rectangle frame buffer test bench
Benchmarking 160x120 size: 23.71 MPixels/second

$ ./fbmark_sierpinski 
Sierpinski frame buffer test bench

Benchmarking     1024 iterations:   348.57 Frames/second
Benchmarking     2048 iterations:   293.93 Frames/second
Benchmarking     4096 iterations:   203.32 Frames/second
Benchmarking     8192 iterations:   147.63 Frames/second
Benchmarking    16384 iterations:    78.24 Frames/second
Benchmarking    32768 iterations:    46.83 Frames/second
Benchmarking    65536 iterations:    23.33 Frames/second
Benchmarking   131072 iterations:    12.16 Frames/second
Benchmarking   262144 iterations:     6.32 Frames/second
```

AMD Ryzen 7 5800H:
```bash
$ ./fbmark_rectangle 
Rectangle frame buffer test bench
Benchmarking 640x360 size: 312.82 MPixels/second

$ ./fbmark_sierpinski 
Sierpinski frame buffer test bench

Benchmarking     1024 iterations:   724.82 Frames/second
Benchmarking     2048 iterations:   618.84 Frames/second
Benchmarking     4096 iterations:   715.51 Frames/second
Benchmarking     8192 iterations:   642.75 Frames/second
Benchmarking    16384 iterations:   537.40 Frames/second
Benchmarking    32768 iterations:   431.01 Frames/second
Benchmarking    65536 iterations:   338.94 Frames/second
Benchmarking   131072 iterations:   243.64 Frames/second
Benchmarking   262144 iterations:   151.30 Frames/second
```
