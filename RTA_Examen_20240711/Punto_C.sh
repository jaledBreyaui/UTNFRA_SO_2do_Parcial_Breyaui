cd docker/   
ls    
cd web/   
ll    
vim index.html   
cd ..   
vim dockerfile   
docker login   
docker build -t web_parcial 
docker build -t web_parcial .
ls    
cd UTN-FRA_SO_Examenes/202407_Recu/docker/   
docker build -t web_parcial .
cd ..   
sudo lvextend -l +100%free /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker  
df -h   
cd UTN-FRA_SO_Examenes/202407_Recu/docker/   
docker build -t web_parcial .
docker push jaledbreyaui/web_parcial  
docker push jaledbreyaui/web_parcial:latest  
docker ps   
docker images   
docker login   
docker push jaledbreyaui/web_parcial:latest  
docker build -t jaledbreyaui/web_parcial .
docker push jaledbreyaui/web_parcial  
docker run -d -p 8080:80
curl localhost:8080   
ll    
cd web/   
ll    
cd file/   
ll    
MODELO=$(cat /proc/cpuinfo |grep 'model name'
echo $MODELO   
FRECUENCIA=$(cat /proc/cpuinfo |grep 'cpu MHz'
echo $MODELO $FRECUENCIA  
echo "$MODELO $FRECUENCIA" > info.txt
cat info.txt   
cd ..   
ll    
vim docker-compose.yml   
docker compose up -d 
docker exec docker-web-1 cat /usr/share/nginx/html/file
history    
history | tail -n 50
history | tail -n 50
cd ..   
history | tail -n 50
