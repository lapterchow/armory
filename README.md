# armory
kubernetes · private docker registry

```
git clone https://github.com/agabert/armory.git
cd armory
make
```

```
docker pull ubuntu && docker tag ubuntu localhost:31337/private_ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
aafe6b5e13de: Pull complete
0a2b43a72660: Pull complete
18bdd1e546d2: Pull complete
8198342c3e05: Pull complete
f56970a44fd4: Pull complete
Digest: sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028
Status: Downloaded newer image for ubuntu:latest
```

```
docker push localhost:31337/private_ubuntu
The push refers to a repository [localhost:31337/private_ubuntu]
73e5d2de6e3e: Pushed
08f405d988e4: Pushed
511ddc11cf68: Pushed
a1a54d352248: Pushed
9d3227c1793b: Pushed
latest: digest: sha256:c96e0cfe8f9d2a66adfee341765829b9a95c628f04741c66c49ac58f80aab8d1 size: 1357
```

```
docker pull localhost:31337/private_ubuntu
Using default tag: latest
latest: Pulling from private_ubuntu

Digest: sha256:c96e0cfe8f9d2a66adfee341765829b9a95c628f04741c66c49ac58f80aab8d1
Status: Downloaded newer image for localhost:31337/private_ubuntu:latest
```

```
docker images
REPOSITORY                                     TAG                 IMAGE ID            CREATED             SIZE
localhost:31337/alex                           latest              f7b3f317ec73        2 days ago          117.3 MB
localhost:31337/private_ubuntu                 latest              f7b3f317ec73        2 days ago
```

Kubernetes CNI does not work with https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/registry any more and the script from http://container-solutions.com/running-secure-registry-kubernetes/ fails in our cluster with 'Error from server: the server does not allow access to the requested resource (post secrets)'.

