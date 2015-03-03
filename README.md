# StealthBox

Share your favorite content remotely without spoiling your home network.

StealthBox is a [Docker](https://www.docker.com/) image, so you can install it
on any linux server without polluting it.

It embeds several applications that are configured together to automate file 
sharing in the cloud and download content to your home.

## Install

TODO: Publish in docker registry.
```bash
docker run -d -it -p 8080:80 -p 8022:22
```

## Components

- You should change password for each component as soon as possible.
- Replace <stealthbox> with IP address of your server and <8080>/<8022> with
ports used when running docker.

### [Pydio](https://pyd.io/)

[Pydio](https://pyd.io/) (formerly AjaXplorer) is a mature open source
software solution for file sharing and synchronization. With intuitive user
interfaces (web / mobile / desktop), Pydio provides enterprise-grade features
to gain back control and privacy of your data: user directory connectors,
legacy filesystems drivers, comprehensive admin interface, and much more.

> web: http://<stealthbox>:<8080><br>
> username: box<br>
> password: box12345

#### [Deluge](http://deluge-torrent.org/)

[Deluge](http://deluge-torrent.org/) is a lightweight, Free Software,
cross-platform BitTorrent client.

- Full Encryption
- WebUI
- Plugin System
- Much more ...

> web: http://<stealthbox>:<8080>/deluge<br>
> password: box12345
> configuration: ~/.config/deluge
> service: deluge

### SSH/SCP/SFTP

Access StealthBox through SSH/SCP/SFTP to bring content back to home and manage
the environment.

> ssh: ssh -p <8022> <stealthbox><br>
> username: box<br>
> password: box12345<br>
> service: sshd

### [FlexGet](http://flexget.com/)

[FlexGet](http://flexget.com/) is a multipurpose automation tool for
content like torrents, nzbs, podcasts, comics, series, movies, etc. It can use
different kinds of sources like RSS-feeds, html pages, csv files, search
engines and there are even plugins for sites that do not provide any kind of
useful feeds.

> configuration: ~/flexget<br>
> service: flexget

### Others

#### [nginx](http://nginx.org/en/)

[nginx](http://nginx.org/en/) \[engine x\] is an HTTP and reverse proxy
server.

> configuration: /etc/nginx
> service: nginx