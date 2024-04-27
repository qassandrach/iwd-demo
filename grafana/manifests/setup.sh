#setup project
gcloud config set project test-qassie
gcloud container clusters get-credentials iwd-demo --zone asia-southeast2-a


# apply manifest
# please make sure you already change the namespace
kubectl apply -f grafana.yaml
