# BGV-Homomorphic-Encryption

## Install necessary libraries.

## Compile asm code and build library

```shell
cd amd64.gmu
```

```shell
sh script.sh
```

## Compile PSU protocol

```shell
cd psu
```

```shell
sh testPSU.sh
```

## Run PSU protocol

### 2 round PSU

Open terminals and run the following pair of codes in order.
```shell
./PSU 2 0 1048576 65536 60 0
```
```shell
./PSU 2 1 1048576 65536 60 0
```


### 4 round PSU
```shell
./PSU 2 0 1048576 65536 60 1
```
```shell
./PSU 2 1 1048576 65536 60 1
```

