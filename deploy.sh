echo "Creating configmaps to store configs for grafana, prometheus, nginx conf..."


kubectl create configmap nginx-config --from-file=./configmaps/nginx-conf.yaml
kubectl create configmap grafana-config --from-file=./configs/grafana_dashboard.json
kubectl create configmap grafana-provis-config --from-file=./configs/grafana_provisioning.yaml
kubectl create configmap grafana-datasources --from-file=./configs/prometheus-datasource.yaml
kubectl create configmap prometheus-config --from-file=./congigs/prometheus.yml



echo "Deploy scoring model, nginx, prometheus and grafana..."

kubectl apply -f deployments/scoring-model-deployment.yaml
kubectl apply -f deployments/nginx-proxy-deployment.yaml
kubectl apply -f deployments/prometheus-deployment.yaml
kubectl apply -f deployments/grafana-deployment.yaml


echo "Create servives scoring model, prometheus and grafana..."

kubectl apply -f services/scoring-model-service.yaml
kubectl apply -f services/nginx-proxy-service.yaml
kubectl apply -f services/prometheus-service.yaml
kubectl apply -f services/grafana-service.yaml






