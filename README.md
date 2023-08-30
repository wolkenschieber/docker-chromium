# docker-chromium

In today's digital landscape, web browsing has become an integral part of our daily lives, enabling us to access a wealth of information, services, and entertainment at our fingertips. However, this convenience comes with its fair share of risks, including malicious advertisements, tracking scripts, and potentially harmful content that can compromise our online privacy and security.

To address these concerns and provide users with a robust solution, we are excited to unveil that this project [wolkenschieber/docker-chromium](https://hub.docker.com/r/wolkenschieber/docker-chromium) enhances the [linuxserver/chromium](https://hub.docker.com/r/linuxserver/chromium) image by adding the power of uBlock Origin, a highly effective ad-blocker and content filter.

## Building

### Amd64

```bash
docker build --no-cache --pull -t wolkenschieber/docker-chromium:latest .
```

### Arm64v8

```bash
docker buildx build --platform linux/arm64  --pull -t wolkenschieber/docker-chromium:arm64v8-latest -f Dockerfile.aarch64 .
```

## Running

```bash
docker run --rm \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/Berlin \
    -e CHROME_CLI=https://github.com/wolkenschieber/docker-chromium \
    -p 3000:3000 \
    -p 3001:3001 \
    --shm-size="1gb" \
    wolkenschieber/docker-chromium:latest
```

The application can be accessed at 
- http://yourhost:3000/
- https://yourhost:3001/

## Extensions

| Name | ID |
|---|---|
| I don't care about cookies | fihnjjcciajhdojfnbdddfaoknhalnja |
| Locale Switcher | kngfjpghaokedippaapkfihdlmmlafcc |
| uBlock Origin | cjpalhdlnbpafiamejdnhcphjbkeiagm |

## Further configuration

As this image is based of *linuxserver/chromium* have a look into [linuxserver/chromium](https://github.com/linuxserver/docker-chromium) for further configuration options.

## Links

- [The Chromium Projects - Linux Quick Start](https://www.chromium.org/administrators/linux-quick-start/)
- [Chrome Enterprise policy list](https://chromeenterprise.google/policies/)
