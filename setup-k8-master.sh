sudo hostconnectl set-hostname k8s-control
#need to setup hostfile for names of each node and master
cat << EDF | sudo tee /etc/modules-load.d/containerd.conf
>overlay
>br_netfilter
>EOF
sudo modprobe overlay
sudo modprobe br_netfilter