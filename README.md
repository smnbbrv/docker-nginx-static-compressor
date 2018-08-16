# nginx-static-compressor

CI Docker image for precompressing files for nginx. Plays well with [fholzer/docker-nginx-brotli](https://github.com/fholzer/docker-nginx-brotli)

Requires enabling 

    brotli_static	on;
    gzip_static on;
    
on the final nginx configuration.

## Running

```sh
compress dist
```

## CI confiruation

Gitlab CI config:

```yml
lint:
  image: smnbbrv/nginx-static-compressor
  stage: postbuild
  script: compress dist
```

## Example nginx config

```nginx
server {
  ...

  gzip on;
  gzip_static on;
  gzip_vary on;

  brotli on;
  brotli_comp_level 4;
  brotli_static on;

  ...
}
```

## Credits

This docker image internally uses https://www.npmjs.com/package/bread-compressor-cli.