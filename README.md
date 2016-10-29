A [ZNC](http://wiki.znc.in/ZNC), an IRC bouncer, image with an easy option to switch between SSL and non-SSL serving.

## Environment Settings

* `SSL`: when set to `true` will enable SSL mode of ZNC and generate a self-signed certificate

## Ports

* Both 6667 and 6697 are exposed by the container

## Volumes

* `/data`
  * If empty:
    * `znc.conf` will be written into `/data/configs`
    * `znc.pem` will be generated into `/data` (if SSL=true)
  * Otherwise can be used to manually or pre configure ZNC
  
