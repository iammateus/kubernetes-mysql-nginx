# Kubernetes, MySQL & Nginx
Example of deploying MySQL and Nginx containers to a local Kubernetes cluster using Minikube and Docker.

## Requeriments

- [Docker](https://www.docker.com/get-started)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Usage

Run the following script to start the project.

    $ ./start.sh   

The result will be the local IP of the cluster ingress with the Nginx accessible by the root route.

## License
[MIT](https://github.com/iammateus/kubernetes-mysql-nginx/blob/main/LICENSE)
