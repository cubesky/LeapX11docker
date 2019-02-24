# LeapMotion X11 Docker 
Need [x11docker](https://github.com/mviereck/x11docker).

## How to use
First of all, clone this repo to your disk.  
```bash
git clone https://github.com/cubesky/LeapX11docker.git
```

And then, build it.

```bash
cd LeapX11docker
docker build -t leap .
```

Now, you can use x11docker to use it

```bash
x11docker --webcam leap LeapControlPanel
```

## License
Leap Motion Driver deb is provide by Leap Motion. You can download it from [here](https://warehouse.leapmotion.com/apps/4186/download).  
`Dockerfile` is licensed under public domain. Feel free to use it.
