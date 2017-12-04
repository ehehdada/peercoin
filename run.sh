#!/bin/sh
ln -s /dev/stdout /root/.peercoin/db.log
ln -s /dev/stdout /root/.peercoin/debug.log
chmod 0600 /root/.peercoin/peercoin.conf
/peercoin-0.6.1ppc/src/peercoind
