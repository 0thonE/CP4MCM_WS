

 
 #########################################
 ## -------------- Lab 3 -------------- ##
 #########################################

./oclogin.sh

oc get pods -n multicluster-endpoint


sudo echo "--allow-privileged=true" >> /var/snap/microk8s/current/args/kube-apiserver
sudo systemctl restart snap.microk8s.daemon-apiserver.service
## 3.1 Channel specification for the application



kubectl get nodes

kubectl get pods -n multicluster-endpoint


curl -kLo cloudctl-mc-plugin https://cp-console.apps.demo.ibmdte.net/rcm/plugins/mc-linux-amd64
cloudctl login -a https://cp-console.apps.demo.ibmdte.net -u bob -p Passw0rd -n default
cloudctl plugin install -f cloudctl-mc-plugin

cloudctl mc describe cluster microk8s -n microk8s -c hub0

cloudctl mc label cluster microk8s environment=QA -n microk8s