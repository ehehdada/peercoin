from ubuntu:14.04
maintainer ehehdada, ltd. <ehehdadaltd@gmail.com>
run apt-get update 
run apt-get install -y \
	wget libssl-dev libdb-dev libdb++-dev \
	libboost-dev miniupnpc libminiupnpc-dev \
	qrencode libqrencode-dev build-essential \
	g++ libboost-system-dev libboost-filesystem-dev \
	libboost-program-options-dev libboost-thread-dev 
run wget https://github.com/peercoin/peercoin/archive/v0.6.1ppc.tar.gz 
run tar xvf /v0.6.1ppc.tar.gz 
run rm -rf /v0.6.1ppc.tar.gz 
run cd /peercoin-0.6.1ppc/src && make -f makefile.unix -e PIE=1 
run mkdir -p /root/.peercoin
expose 9901 9902 9903
copy peercoin.conf /root/.peercoin/peercoin.conf
run chmod 0600 /root/.peercoin/peercoin.conf
copy run.sh /run.sh
run chmod +x /run.sh
cmd ["/run.sh"]
