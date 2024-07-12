  217  ssh-keygen -t ed25519
  218  cd /
  219  ll
  220  cd home/jb
  221  ll
  222  cd .ssh/
  223  ll
  224  cd ..
  225  cat .ssh/id_ed25519.pub >> .ssh/authorized_keys
  226  ll
  227  ls
  228  cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
  229  ll
  230  cd roles/
  231  ls
  232  cat 2
  233  cat 2PRecuperatorio/tasks/main.yml 
  234  vim 2PRecuperatorio/tasks/main.yml 
  235  ll
  236  cd ..
  237  ll
  238  ansible-playbook -i inventory/hosts playbook.yml
  239  cd /tmp/alumno/
  240  ll
  241  cat datos.txt 
  242  cd /home/jb/UTN-FRA_SO_Examenes/202407_Recu/ansible/
  243  ansible-galaxy role init instala_tools_Breyaui
  244  cd roles/
  245  ll
  246  cd 2PRecuperatorio/
  247  ll
  248  cd ..
  249  ll
  250  rm -rf instala_tools_Breyaui/
  251  cd roles/
  252  ansible-galaxy role init instala_tools_Breyaui
  253  ls
  254  cd instala_tools_Breyaui/tasks/
  255  ll
  256  vim main.yml 
  257  cd ..
  258  ansible-playbook -i inventory/hosts playbook.yml
  259  cd roles/instala_tools_Breyaui/
