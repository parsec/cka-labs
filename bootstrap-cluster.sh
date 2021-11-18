#!/bin/bash

k3d cluster create "artemis" \
--k3s-arg '--flannel-backend=none@server:*' \
--k3s-arg '--no-deploy traefik@server:*' \
--k3s-arg '--write-kubeconfig-mode 644@server:*' \
--k3s-arg '--kube-apiserver-arg=feature-gates=MixedProtocolLBService=true@server:*' \
--volume "/home/parsec/dev/cka-labs/bootstrap/calico.yamls:/var/lib/rancher/k3s/server/manifests/calico.yaml@server:*"