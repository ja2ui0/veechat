## Prerequisites
You will need:
- a container runtime and a tool for manipulating containers. I'll be using `docker` but any compatible tooling is fine.
- your `~/.weechat` config files. Leave them right where they are, they'll be mounted in the container.
- a working `client.ovpn` file. Use the included `client.ovpn.sample` file for clues as to what needs to be added / changed to make yours work.

## Usage
1. clone this repo and `cd` into it
2. `docker build -t veechat .`
3. `docker run -it --cap-add=NET_ADMIN --device=/dev/net/tun -v ~/.weechat:/root/.weechat veechat` (I recommend aliasing this to `veechat` or something)
4. Follow the prompts
