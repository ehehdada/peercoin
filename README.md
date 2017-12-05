# Peercoin docker image

[Peercoin](https://peercoin.net/https://en.wikipedia.org/wiki/Peercoin) is a fork of the original bitcoin intended to be more energy-efficient.

More information at the [Peercoin page at Wikipedia](https://peercoin.net/https://en.wikipedia.org/wiki/Peercoin)

## Configure

You need a configuration file to replace the one that comes with the image at /root/.peercoin/peercoin.conf

Please reference the one at [https://github.com/peercoin/peercoin/wiki/Installation#sample-ppcoin-configuration](https://github.com/peercoin/peercoin/wiki/Installation#sample-ppcoin-configuration)

## Help

### Help about options of the daemon
```
docker exec -it <your_container_name> /peercoin-0.6.1ppc/src/peercoind --help
```
### Help about commands of the daemon
```
docker exec -it <your_container_name> /peercoin-0.6.1ppc/src/peercoind help
```

## Run the container

Create a folder where to host the `peercoin.conf` file like for example "mypeercoin", that must be mapped with the `/root/.peercoin` folder. The container will set the permissions `peercoin.conf` file as it is holding the RPC password. 

The ports 9901, 9902, and 9903 are exposed. Map the 9901 to your host. 

The database will also be stored in your folder together with `peercoin.conf` file.

Make it run with a command like:
```
docker run \
  --name <your_cointainer_name> \
  -dit \
  -v $(pwd)/mypeercoin:/root/.peercoin \
  -p 9901:9901 \
  ehehdada/peercoin
```

## Donations

Peercoins address `PEkmXcgL4wWb2mSZiLXr5cMfRKvpFY1kaA`
