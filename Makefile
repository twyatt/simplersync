CC=gcc
CFLAGS=

all:
	$(CC) -framework Carbon -o getTrueName getTrueName.c

clean:
	rm -rf getTrueName

install:
	test -d /usr/local/bin || mkdir -p /usr/local/bin
	test -d /etc || mkdir /etc

	install -m 0755 getTrueName /usr/local/bin
	install -m 0755 simplersync /usr/local/bin

	install -m 0644 simplersync.conf /etc
