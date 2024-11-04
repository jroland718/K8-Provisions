sudo hostconnectl set-hostname k8s-control
#need to setup hostfile for names of each node and master
cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
>overlay
>br_netfilter
>EOF

# 
sudo modprobe overlay
sudo modprobe br_netfilter

# nhyrfngffgf
cat <<EOF  | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
> net.bridge.bridge-nf-call-iptables =1
> net.ipv4.ip.forward                 =1
> net.bridge.bridge-nf-call-ip6tables =1
>EOF