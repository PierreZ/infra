# infra
My repo describing my infra

![](https://i.imgflip.com/vcdmw.jpg)

## How does it works?

>          +------------------------------------+
>          |--------------+ +-------+ +-------+ |
>          ||nginx-proxy  | |       | |       | |
>          ||is watching  | |Back-1 | |Back-2 | |
>          ||Docker's sock| |       | |       | |
>          ||and generate | |       | |       | |
>          ||conf files   | |       | |       | |
>          ||according to | |       | |       | |
>          ||definition   | |       | |       | |
>          ||             | |       | |       | |
>          ||             | |       | |       | |
>          +--------------+ +-------+ +-------+ |
>          |                                    |
>          |                                    |
>          |CoreOS instance with Docker         |
>          |                                    |
>          +------------------------------------+

All my apps are running into a container running on CoreOS. There's a automatic reverse-proxy to add Container as a Service features. I'm running under HTTP/2 and TLS.

CoreOS is upgrading himself on his own, and he's fetching the latest container each time. It's also fetching my certificates on Let's Encrypt.

In short, this is what I'm doing:

* Creating docker container
* Writing fleetctl unit file
* $fleetctl start my_awesome_app.service
* done!

## Why such infra for a single website? Are you mad?

Maybe, maybe not. I'm the kind of developer who like to automate everything. To give you a hint how far I'm going: I don't even use SSH directly...

For me, there's two types of developers:

* Regular developers who are creating apps related for a company (work stops at "git push")
* Plumber developers who are creating the orchestrator to run all the above containers

I considered myself more on the plomber side, so it was kind of fun to do that on my own infra.

