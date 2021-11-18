!#/bin/sh

# bootstrap the cluster with args and calico manifest

k3d cluster create "artemis" \
--servers 1\
--agents 2\
--k3s-arg '--flannel-backend=none@server:*' \
--k3s-arg '--no-deploy traefik' \
--k3s-arg '--write-kubeconfig-mode 644' \
--k3s-arg '--kube-apiserver-arg=feature-gates=MixedProtocolLBService=true'\
--volume "./bootstrap/calico.yamls:/var/lib/rancher/k3s/server/manifests/calico.yaml"