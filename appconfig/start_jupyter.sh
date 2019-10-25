source /etc/profile.d/updatePath.sh
mkdir -p /opt/bluedata/jupyter
jupyter-notebook --no-browser --allow-root </dev/null & >>/var/log/jupyter-notebook.log
echo $! > /var/run/jupyter-notebook.pid
