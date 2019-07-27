#!/bin/bash
#minikube version: v1.2.0
tee << EOF > /etc/docker/daemon.json
{
  "registry-mirrors": ["https://i5b0l4gz.mirror.aliyuncs.com"],
  "dns": ["10.0.2.3","223.5.5.5"]
}
EOF
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/kube-proxy:v1.15.0
#k8s.gcr.io/kube-proxy:v1.15.0

#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/kube-apiserver:v1.15.0
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/kube-controller-manager:v1.15.0
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/kube-scheduler:v1.15.0
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/kube-addon-manager:v9.0
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/coredns:1.3.1
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/etcd:3.3.10
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/pause:3.1
#docker pull registry.cn-hangzhou.aliyuncs.com/dck8s/
#k8s.gcr.io/echoserver:1.4
