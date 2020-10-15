 
 #########################################
 ## -------------- Lab 2 -------------- ##
 #########################################


## 2.1 Channel specification for the application

oc login -u admin -p passw0rd https://ocp.ibm.demo:8443

oc get pods -n multicluster-endpoint


## 2.2 Channel specification for the application

mkdir -p /home/ibmuser/student/modresortchan
cd /home/ibmuser/student/modresortchan

vi channel.yaml     ## opc: vim channel.yaml
# opc: cp /<route>/channel.yaml /home/ibmuser/student/modresortchan

vi deployable.yaml     ## opc: vim deployable.yaml
# opc: cp /<route>/deployable.yaml /home/ibmuser/student/modresortchan


## 2.3 Set up

mkdir -p /home/ibmuser/student/modresortapp
cd /home/ibmuser/student/modresortapp

vi  application.yaml     ## opc: vim application.yaml
# opc: cp /<route>/application.yaml /home/ibmuser/student/modresortapp

vi  placementrules.yaml     ## opc: vim placementrules.yaml
# opc: cp /<route>/placementrules.yaml /home/ibmuser/student/modresortapp

vi  subscription.yaml     ## opc: vim subscription.yaml
# opc: cp /<route>/subscription.yaml /home/ibmuser/student/modresortapp


## 2.4 Deployment

oc login -u admin -p Passw0rd! https://master.ibm.demo:8443

cloudctl login -a https://icp-console.10.0.10.2.nip.io -u admin -p Passw0rd! -n default

oc new-project modresort-project
oc new-project modresort-entitlement

cd /home/ibmuser/student

oc apply -f modresortchan

oc project modresort-project
oc apply -f modresortapp


## 2.5 Migration from one cluster to another

oc login -u admin -p passw0rd https://ocp.ibm.demo:8443 -n default

oc get pods
oc get svc

## url: ocp:<NodePort>/resorts
## ocp replica: vendor: OpenShift


./oclogin.sh

oc get pods -n multicluster-endpoint



 
 #########################################
 ## -------------- Lab 3 -------------- ##
 #########################################

######
## IR a comandos_pt2
######
