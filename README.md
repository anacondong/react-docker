ref: https://medium.com/@thanatchakromsang/%E0%B8%A1%E0%B8%B2%E0%B8%88%E0%B8%B1%E0%B8%9A-react-%E0%B8%A2%E0%B8%B1%E0%B8%94%E0%B9%83%E0%B8%AA%E0%B9%88-container-%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%96%E0%B8%AD%E0%B8%B0-react-docker-45ece149d603

Build image : docker image build -t start-react .
run image : docker run -it start-react

How to run : docker-compose up -d --build

Create OpenShift --> origin
oc cluster up
https://127.0.0.1:8443

ref: https://www.youtube.com/watch?v=r5VzXvvkiL4


Note: 
** add registry on Docker demon -->> docker-registry-default.127.0.0.1.nip.io
oc login https://127.0.0.1:8443 --token=RYmSLKpKRGg-aH1041R-BK-r9vLlG-HswNMYDFw7sPc
oc create is application_docker-react -n myproject
docker tag application_react-docker docker-registry-default.127.0.0.1.nip.io/myproject/application_react-docker:latest
docker push docker-registry-default.127.0.0.1.nip.io/myproject/application_react-docker:latest

sudo chown -R $USER:$(id -gn $USER) /home/{username}/.config