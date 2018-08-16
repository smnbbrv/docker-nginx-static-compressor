# smnbbrv/nginx-static-compressor

CI Docker image for precompressing files for NGINX. Plays well with https://github.com/fholzer/docker-nginx-brotli

Requires enabling 

    brotli_static	on;
    gzip_static on;
    
on the final nginx configuration.

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
