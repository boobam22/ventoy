#

## python

```sh
sudo apt install python3-venv
wget -qO- https://pdm-project.org/install-pdm.py | python3 -
```

## nodejs

```sh
ROOT=/usr/local/node
VERSION=22.15.0

sudo mkdir -p $ROOT
wget -qO- https://nodejs.org/dist/v$VERSION/node-v$VERSION-linux-x64.tar.gz | sudo tar -xz -C $ROOT
sudo mv $ROOT/* $ROOT/$VERSION
sudo ln -s $ROOT/$VERSION $ROOT/default

for bin in "$ROOT/default/bin/"*; do
    sudo ln -s $bin /usr/local/bin/$(basename $bin)
done
```

## go

```sh
ROOT=/usr/local/go
VERSION=1.24.3

sudo mkdir -p $ROOT
wget -qO- https://go.dev/dl/go$VERSION.linux-amd64.tar.gz | sudo tar -xz -C $ROOT
sudo mv $ROOT/* $ROOT/$VERSION
sudo ln -s $ROOT/$VERSION $ROOT/default

for bin in "$ROOT/default/bin/"*; do
    sudo ln -s $bin /usr/local/bin/$(basename $bin)
done
```

## java

```sh
ROOT=/usr/local/jdk
VERSION=21.0.6

sudo mkdir -p $ROOT
wget -qO- https://download.oracle.com/java/${VERSION%%.*}/archive/jdk-${VERSION}_linux-x64_bin.tar.gz | sudo tar -xz -C $ROOT
sudo mv $ROOT/* $ROOT/$VERSION
sudo ln -s $ROOT/$VERSION $ROOT/default

for bin in "$ROOT/default/bin/"*; do
    sudo ln -s $bin /usr/local/bin/$(basename $bin)
done
```
