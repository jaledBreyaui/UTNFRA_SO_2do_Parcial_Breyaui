sudo apt-get update
sudo apt install git ansible tree
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get update
sudo apt install net-tools
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo usermod -a -G docker breyaui
sudo usermod -a -G docker jb
su - jb
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
sudo fdisk -l
sudo fdisk  /dev/sdc
sudo mkswap /dev/sdc1 
sudo swapon /dev/sdc1 
free -h
sudo fdisk -l
sudo fdisk /dev/sde
sudo fdisk /dev/sdd
sudo fdisk -l
sudo pvcreate /dev/sdd1 /dev/sde1 /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdd1 /dev/sde1
sudo vgcreate vg_temp /dev/sdc2
sudo vgs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo swapon /dev/mapper/vg_temp-lv_swap 
free -h
sudo pvs; sudo vgs
sudo lvcreate -L  +1.5G vg_datos -n lv_multimedia
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo lvs
sudo mkdir /Multimedia
cd ..
ll
cd home/jb/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
df -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
df -h
sudo systemctl restart docker
ls
history | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}'
history 
history | tail -n 36
history | tail -n 40 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}'
history | tail -n 41 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' > RTA_Examen_20240711/Punto_A.sh 
cat RTA_Examen_20240711/Punto_A.sh 
cd UTN-FRA_SO_Examenes/202407_Recu/
ll
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
docker run -d -p 8080:80 jaledbreyaui/web_parcial
curl localhost:8080
ll
cd web/
ll
cd file/
ll
MODELO=$(cat /proc/cpuinfo |grep 'model name' |head -n1 |awk '{print "Modelo: " $4" "$5" "$6 }')
echo $MODELO
FRECUENCIA=$(cat /proc/cpuinfo |grep 'cpu MHz' |head -n1 |awk '{print "Frecuencia:" $4 " MHz"}')
echo $MODELO $FRECUENCIA
echo "$MODELO $FRECUENCIA" > info.txt
cat info.txt 
cd ..
ll
vim docker-compose.yml 
docker compose up -d
docker exec docker-web-1 cat /usr/share/nginx/html/file
history
history | tail -n 50 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' 
history | tail -n 50 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' > RTA_Examen_20240711/Punto_C.sh
cd ..
history | tail -n 50 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' > RTA_Examen_20240711/Punto_C.sh
cat RTA_Examen_20240711/Punto_C
cat RTA_Examen_20240711/Punto_C.sh
cd UTN-FRA_SO_Examenes/202407_Recu/bash_script/
ll
cat check_URL.sh 
cd ..
ll
cd tmp/
ll
cd ..
cd home/jb/UTN-FRA_SO_Examenes/202407_Recu/bash_script/
ll
cat check_URL.sh 
ll
./check_URL.sh Lista_URL.txt 
ll
cat check_URL.sh 
vim check_URL.sh 
cat Lista_URL.txt 
cat Lista_URL.txt | awk -F '{print $1" "$2}' 
cat Lista_URL.txt | awk -F ' ' '{print $1" "$2}' 
cat Lista_URL.txt | awk -F '' '{print $1}' 
cat Lista_URL.txt | awk  '{print $1}' 
cat Lista_URL.txt | awk -F ':' '{print $1" "$2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
history
cat Lista_URL.txt
cat Lista_URL.txt | awk -F ':' '{print $1" "$2}'| grep -v ^#
cat Lista_URL.txt | awk -F '' '{print $1" "$2}'| grep -v ^#
cat Lista_URL.txt | awk -F '' '{print $1 $2}'| grep -v ^#
cat Lista_URL.txt | awk -F ':' '{print $1 $2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
cat Lista_URL.txt | awk -F '' '{print $1 $2}'| grep -v ^#
cat Lista_URL.txt | awk -F ':' '{print $1 $2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
cat Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
cat Lista_URL.txt 
cat Lista_URL.txt | awk -F ':' '{print $1 $2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
cat Lista_URL.txt | awk -F ':' '{print $1 $2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
cat Lista_URL.txt 
cat Lista_URL.txt | awk -F '' '{print $1 $2}'| grep -v ^#
cat Lista_URL.txt | awk '{print $1 $2}'| grep -v ^#
cat Lista_URL.txt | awk '{print $1" " $2}'| grep -v ^#
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
vim check_URL.sh 
./check_URL.sh Lista_URL.txt 
cd /tmp/head-check/
ll
cd Error/
ll
cd cliente/\
cd cliente/
ll
history
cd ..
cd home/jb/
cd UTN-FRA_SO_Examenes/202407_Recu/bash_script/
ll
rm -rf OK
vim check_URL.sh 
mv check_URL.sh  /usr/local/bin/breyaui_check_URL.sh
sudo mv check_URL.sh  /usr/local/bin/breyaui_check_URL.sh
cd /usr/local/bin/
ll
history
history | tail -n 92 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' > RTA_Examen_20240711/Punto_B.sh
cd ..
cd home/jb/
history | tail -n 92 | awk '{print  $2 " " $3 " " $4 " " $5 " " $6}' > RTA_Examen_20240711/Punto_B.sh
cat RTA_Examen_20240711/Punto_B.sh 
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
ll
ssh-keygen -t ed25519
cd /
ll
cd home/jb
ll
cd .ssh/
ll
cd ..
cat .ssh/id_ed25519.pub >> .ssh/authorized_keys
ll
ls
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
ll
cd roles/
ls
cat 2
cat 2PRecuperatorio/tasks/main.yml 
vim 2PRecuperatorio/tasks/main.yml 
ll
cd ..
ll
ansible-playbook -i inventory/hosts playbook.yml
cd /tmp/alumno/
ll
cat datos.txt 
cd /home/jb/UTN-FRA_SO_Examenes/202407_Recu/ansible/
ansible-galaxy role init instala_tools_Breyaui
cd roles/
ll
cd 2PRecuperatorio/
ll
cd ..
ll
rm -rf instala_tools_Breyaui/
cd roles/
ansible-galaxy role init instala_tools_Breyaui
ls
cd instala_tools_Breyaui/tasks/
ll
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cd roles/instala_tools_Breyaui/
ll
cd tasks/
cat main.yml 
cd ..
ll
ls
git status
git init
git add README.md
git commit -m "first commit"
cat .ssh/authorized_keys 
git commit -m "first commit"
ls
git status
git add .
ls
git commit -m "first commit"
git config --global user.email jaledbreyaui41@gmail.com
git config --global user.name "JaledVM"
git status
git add .
git commit -m "final commit"
ls
cd UTN-FRA_SO_Examenes/202407_Recu/
ls
cd ..
mv UTN-FRA_SO_Examenes/202407_Recu/ /home/jb
ls
cd 202407_Recu/
ls
cd ..
ls
mkdir repositorio
ls
mv 202407_Recu/ repositorio/
ll
ls
mv RTA_Examen_20240711/ repositorio/
cd repositorio/
ls
ll
git init
git commit -m "first commit"
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:jaledBreyaui/UTNFRA_SO_2do_Parcial_Breyaui.git
git push -u origin main
history
history | sed -n '217,259p'
cat history | sed -n '217,259p' > RTA_Examen_20240711/Punto_D.sh 
ls
cd RTA_Examen_20240711/
ls
history | sed -n '217,259p' > Punto_D.sh 
cat Punto_D.sh 
cd ..
git add .
git commit -m "history punto d"
git push -u origin main
cd ..
ls
ll
mv .bash_history repositorio/
