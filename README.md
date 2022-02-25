# passthehash
Some static binaries for passing the hash. These are the same binaries you will find in Kali (https://www.kali.org/tools/passing-the-hash/). You can either run Kali in Docker and install the `passing-the-hash` package, or use these statically compiled versions.

I've only compiled `pth-curl` so far. Some tools (e.g. `smbclient`) have already got some good alternatives via `impacket`. If you need PTH in the browser, consider using Windows and injecting the hash via mimikatz into a browser session (see [here](https://labs.f-secure.com/blog/pth-attacks-against-ntlm-authenticated-web-applications/)). I'm still waiting for a Burp plugin that implements pass-the-hash support :)

The code in this repo is entirely based on https://gitlab.com/kalilinux/packages/passing-the-hash.

Work in progress.. I intend to add at least `pth-rpcclient` here as well.

## pth-curl

Download x86-64 build: [pth-curl](https://github.com/c3c/passthehash/raw/main/builds/pth-curl)

Usage:
```
./pth-curl -u username:LMLMLMLMLMLMLMLMLMLMLMLMLMLMLMLM:NTNTNTNTNTNTNTNTNTNTNTNTNTNTNTN http://intranet.corp
```
