./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh    
sudo fdisk -l  
sudo fdisk /dev/sdc  
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
sudo lvcreate -l +100%FREE vg_temp
sudo mkswap /dev/mapper/vg_temp-lv_swap  
sudo swapon /dev/mapper/vg_temp-lv_swap  
free -h   
sudo pvs; sudo vgs 
sudo lvcreate -L +1.5G vg_datos
sudo lvcreate -L +10M vg_datos
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
history | awk '{print $2
history    
history | tail -n 36
history | tail -n 40
history | tail -n 41
