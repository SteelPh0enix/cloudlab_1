# cloudlab_1

## Budowanie i uruchamianie kontenera

### Automatycznie

Sklonuj repozytorium i wykonaj pliki `build.sh` i `first_run.sh` w tej kolejności. Zostanie stworzony obraz o nazwie `cloudlab_img_1` i kontener o nazwie `cloudlab_app_1` który uruchomi serwer lighttpd na porcie 8080. Zmodyfikuj te skrypty, żeby zmienić nazwy kontenerów lub porty.

Żeby zatrzymać aplikację, użyj `stop.sh`. Każde następne uruchomienie wykonuj z użyciem `start.sh`. Skrypt `clean.sh` usuwa kontener i obraz.

### Ręcznie

Żeby zbudować kontener bezpośrednio z repozytorium (bez klonowania), wystarczy do `docker build` przekazać URL repozytorium (i opcjonalnie nazwę)

```sh
docker build https://github.com/SteelPh0enix/cloudlab_1.git -t cloudlab_img_1
```

Następnie, żeby uruchomić aplikację po raz pierwszy należy wykonać

```sh
docker run -d --name cloudlab_app_1 -p 8080:80 cloudlab_img_1
```

Każde kolejne uruchomienie należy wykonywać z użyciem `docker start`

```sh
docker start cloudlab_app_1
```

Żeby zatrzymać aplikację, należy użyć `docker stop`

```sh
docker stop cloudlab_app_1
```

Żeby usunąć kontener i obraz, trzeba zatrzymać aplikację i użyć następujących poleceń

```sh
docker container rm cloudlab_app_1
docker image rm cloudlab_img_1
```