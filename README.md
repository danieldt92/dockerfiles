# dockerfiles

Simple and single Docker-Tomcat-Java App image orchestrator, Jenkins triggered.
\
SH script stop all containers and remove them, then remove all images, build a new one using the dockerfile and run a container.
\
Same feauture implemented using yml // Ansible playbook
\
Dockerfile use centos:latest image, configure repos, install Java, download and install 10.0.27 tomcat version, copy .xml config files, deploy latest *.war ,
expose it at 8080 and start tomcat service. 
