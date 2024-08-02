echo "[webservers]" >> inventory/hosts
echo "server1 ansible_host=172.31.1.180 ansible_user=ubuntu" >> inventory/hosts
echo "server2 ansible_host=172.31.8.121 ansible_user=ubuntu" >> inventory/hosts

echo "[databases]" >> inventory/hosts
echo "dbserver ansible_host=172.31.1.100 ansible_user=ubuntu" >> inventory/hosts

