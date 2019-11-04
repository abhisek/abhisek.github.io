# Personal Website

## Build Container

```
./jekyll.sh build
```

## Use Jekyll

```
./jekyll.sh
```

> Provide commands as args

```
./jekyll.sh s -H 0.0.0.0
```

> Start serve on 4000 (default)

## Debugging

```
docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/site docker-jekyll
```