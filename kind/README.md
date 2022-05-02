### How to creat cluster

`kind create cluster --config cluster.yml --name mc1`

### if deletion didn't prune volume correctly

docker volume ls -f dangling=true
