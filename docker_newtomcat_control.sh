docker stop $(docker ps -aq)
echo "Hola"
if [ $? -eq 0 ]
then
        docker rm $(docker ps -aq)
        if [ $? -eq 0 ]
        then
                docker rmi $(docker images -q)
                if [ $? -eq 0 ]
                then
                        docker build -t tomcat .
                        sleep 5
                        docker run -d --name tomcat-ct -p 8081:8080 tomcat
                else
                        echo "No docker images to build"
                fi
        else
                echo "No containers to remove"
        fi
else
docker build -t tomcat .
sleep 5
docker run -d --name tomcat-ct -p 8081:8080 tomcat
fi