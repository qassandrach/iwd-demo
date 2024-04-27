#setup project
gcloud config set project test-qassie
gcloud container clusters get-credentials iwd-demo --zone asia-southeast2-a


# apply manifest
# please make sure you already change the namespace
kubectl apply -f grafana.yaml

#port forward
kubectl port-forward service/grafana 3011:3000 --namespace=<your namespace>


# get secret
gcloud secrets versions access 1 --secret="sa-gsm"
