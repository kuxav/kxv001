<div align="center">

# kxv001
Example use docker, but can file with Linux based FS?

</div>

## About this project
Contain some file and folders (as linux/unix as file and directories) with [`Dockerfile`](https://docs.docker.com/engine/reference/builder/) as build image Docker based.
In this project contain [Lighttpd/Lighly](http://lighttpd.net) config and some backup from [Ngademin server - but right own user](https://qiqi.ngadem.in).
Well, this project will not take owner because many file has licensed (such as under MIT License, Apache License, etc.).

## Dockerfile
Docker file is "do building objects" as very important for build image Docker based.
Unix FS (File system), filename are case sensitive so name "`Dockerfile`" correct; not "`dockerfile`", "`DockerFile`", or "`DOCKERFILE`".
Windows/DOS FS file name no so sensitive BUT must created filename same as Unix FS, delete wrong filename then create it correctly.
Like as [DYOM in GTA SA](https://dyom.gtagames.nl/), [Minecraft](https://www.minecraft.net/) or [Genshin Impact](https://genshin.hoyoverse.com/)[ in Serenitea Pot](https://ys.mihoyo.com) concept, but in Docker: " ADD-COPY-EXPOSE-RUN-CMD ".

Example:
```Dockerfile
FROM alpine
RUN apk add --no-cache --purge lighttpd

ADD https://nahida.42.svr/Nahida/files/archived/www.tar.gz /var/www/htdocs/localhost # No Decompression
COPY svr/QIQI/ft_Nahida /var/www/htdocs/localhost
ENV OS="Codename Nahida x Kuxav -- ft. Roy (Robocar Poli)"

ENTRYPOINT ["lighttpd"]
VOLUME ["/etc/lighttpd", "/var/www"]
EXPOSE 80
CMD ["-D", "-f", "/etc/lighttpd/lighttpd.conf"]
```
## .github/workflows
Include YAML file/s as Action in Github.
YAML in file extension as `.yml`.
There example picture (sorry for texted browser based) ![Cuplikan Layar_2022-09-06_13-25-31](https://user-images.githubusercontent.com/112876441/188561967-206193be-5ea1-4aee-b7dd-d6599a3f384d.png)
