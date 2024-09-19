# Terraform Infra

## Pre Requirements To Run This Pipeline.
-
- Create a S3 Bucket in AWS Console (Unique Global Name)
- Create a DynamoDB Table in AWS Console
  - Put In *Partition key* to *LockID* And Set *String* And *Crete Table*

* Change the *Bucket Name and DynamoDB Table Name* in backend.conf files `(./terraform/envs/dev | ./terraform/envs/prod)`

This Pipeline Runs With a Pull Request:
- Branches:
    - developer - Runs Developer Infra
    - main      - Runs Productions Infra

### Login in Cluster EKS
```bash
  aws eks update-kubeconfig --name <CLUSTER_NAME>
```
### Access Grafana
- Get the Grafana Init Password
```shell
kubectl get secret --namespace monitoring prometheus-stack-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
```
- Expose in Your Browser
```shell
kubectl port-forward svc/prometheus-stack-grafana -n monitoring 5000:80
```
- Open Browser:
  - *http://127.0.0.1/5000* `Or change port 5000 to other in kubectl comand`
    - user: admin
    - pass: *Output command:* `kubectl get secret` *if you runs before.*

### Access Prometheus
```shell
kubectl port-forward svc/prometheus-stack-grafana -n monitoring 3000:80
```
- Open Browser:
  - *http://127.0.0.1/3000* `Or change port 3000 to other in kubectl comand`

### Get Metrics of Metrics Server
- After run *aws eks update-kubeconfig --name <CLUSTER_NAME>*
```shell
kubectl top nodes
```
Or, to See Pods Metrics All Namespaces
```shell
kubectl top pods -A
