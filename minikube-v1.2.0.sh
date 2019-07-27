#!/bin/bash
#minikube version: v1.2.0
#  tee << EOF > /etc/docker/daemon.json
#{
#  "registry-mirrors": ["https://i5b0l4gz.mirror.aliyuncs.com"],
#  "dns": ["10.0.2.3","223.5.5.5"]
#}
#EOF

#k8s.gcr.io/kube-apiserver:v1.15.0
docker pull gcr.azk8s.cn/google_containers/kube-apiserver:v1.15.0
docker tag gcr.azk8s.cn/google_containers/kube-apiserver:v1.15.0 k8s.gcr.io/kube-apiserver:v1.15.0

#k8s.gcr.io/kube-controller-manager:v1.15.0

docker pull gcr.azk8s.cn/google_containers/kube-controller-manager:v1.15.0

docker tag gcr.azk8s.cn/google_containers/kube-controller-manager:v1.15.0 k8s.gcr.io/kube-controller-manager:v1.15.0

#k8s.gcr.io/kube-scheduler:v1.15.0

docker pull gcr.azk8s.cn/google_containers/kube-scheduler:v1.15.0

docker tag gcr.azk8s.cn/google_containers/kube-scheduler:v1.15.0 k8s.gcr.io/kube-scheduler:v1.15.0

#k8s.gcr.io/kube-proxy:v1.15.0

docker pull gcr.azk8s.cn/google_containers/kube-proxy:v1.15.0


docker tag gcr.azk8s.cn/google_containers/kube-proxy:v1.15.0 k8s.gcr.io/kube-proxy:v1.15.0


#k8s.gcr.io/pause:3.1

docker pull gcr.azk8s.cn/google_containers/pause:3.1

docker tag gcr.azk8s.cn/google_containers/pause:3.1 k8s.gcr.io/pause:3.1

#k8s.gcr.io/etcd:3.3.10

docker pull gcr.azk8s.cn/google_containers/etcd:3.3.10

docker tag gcr.azk8s.cn/google_containers/etcd:3.3.10 k8s.gcr.io/etcd:3.3.10

#k8s.gcr.io/coredns:1.3.1

docker pull gcr.azk8s.cn/google_containers/coredns:1.3.1

docker tag gcr.azk8s.cn/google_containers/coredns:1.3.1 k8s.gcr.io/coredns:1.3.1


#k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1
docker pull gcr.azk8s.cn/google_containers/kubernetes-dashboard-amd64:v1.10.1

docker tag gcr.azk8s.cn/google_containers/kubernetes-dashboard-amd64:v1.10.1 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1


#k8s.gcr.io/kube-addon-manager:v9.0

docker pull gcr.azk8s.cn/google_containers/kube-addon-manager:v9.0

docker tag gcr.azk8s.cn/google_containers/kube-addon-manager:v9.0 k8s.gcr.io/kube-addon-manager:v9.0

#k8s.gcr.io/echoserver:1.4

docker pull gcr.azk8s.cn/google_containers/echoserver:1.4

docker tag gcr.azk8s.cn/google_containers/echoserver:1.4 k8s.gcr.io/echoserver:1.4

#gcr.io/k8s-minikube/storage-provisioner:v1.8.1

docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/storage-provisioner:v1.8.1

docker tag registry.cn-hangzhou.aliyuncs.com/dck8s/storage-provisioner:v1.8.1 gcr.io/k8s-minikube/storage-provisioner:v1.8.1

docker rmi $(docker images |grep 'gcr.azk8s.cn' |awk '{print $1":"$2}')
docker rmi $(docker images |grep 'registry.cn-hangzhou.aliyuncs.com' |awk '{print $1":"$2}')
