source /etc/profile.d/updatePath.sh
source activate tensorflow3 
setfacl -m g:Domain\ Users:rwx /home/
jupyterhub -f /etc/jupyterhub/jupyterhub_config.py  < /dev/null & >> /var/log/jupyter-hub.log
echo $! > /var/run/jupyter-hub.pid
