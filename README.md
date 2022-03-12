Docker image for https://practicalbinaryanalysis.com/ ([実践バイナリ解析](https://www.kadokawa.co.jp/product/302111001242/))

The following tools are installed.

- gcc
- objdump
- readelf
- strip

```sh
$ cd practicalbinaryanalysis-docker
$ wget -O - 'https://practicalbinaryanalysis.com/file/pba-code.tar.gz' | tar zxvf -
$ docker build -t binary .
$ docker run --rm -it -v $(pwd)/code:/home/binary/code binary
```
