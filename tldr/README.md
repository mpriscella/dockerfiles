# tldr-pages

Containerized version of [tldr](https://github.com/tldr-pages/tldr).


## Building

```bash
$ docker build -t mpriscella/tldr .
```


## Running

```bash
$ docker run -it --rm --name tldr -v tldr:/root/.tldr mpriscella/tldr -t base16
```
