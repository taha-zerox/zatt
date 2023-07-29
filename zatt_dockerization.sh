# change conf file and exposed port in between builds
docker build . -t zat1 --no-cache
docker build . -t zat2 --no-cache

# run on the host network
docker run -d --network=host zat1
docker run -d --network=host zat2

# build and run simple zatt-client
docker build -f Dockerfile.client -t zatt-client --no-cache .
docker run -d --network=host zat-client

# zattd -s zatt.1.persist -a 127.0.0.1 -p 5254 --remote-address 127.0.0.1 127.0.0.1 127.0.0.1 --remote-port 5254, 5255, 5256