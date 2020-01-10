

- forker le role geerlingguy.kubernetes pour simplifier mieux gérer
    - virer redhat support
    - virer la boucle d'install des paquets kubernetes
    - mieux séparer les différentes problématiques
        - installation config de kubeadm
        - installation config de kubelet
        - install du control plane
            kube-controller manager ... scheduler etc
        - installation de flannel
