
echo "# Ansible Project" >> README.md
echo "## Project Structure" >> README.md

# 1. Ansible installation
echo "1. Ansible installation" >> README.md
echo '```bash' >> README.md
echo "sudo apt update" >> README.md
echo "sudo apt install ansible" >> README.md
echo '```' >> README.md

# 2. Setting up Ansible server and Target server (EC2 instance)
echo "2. Setting up Ansible server and Target server (EC2 instance)" >> README.md
echo "   - On the Ansible server, ensure you have Python and OpenSSH installed." >> README.md
echo "   - Connect to your EC2 instance using SSH." >> README.md
echo '```bash' >> README.md
echo "ssh -i path_to_your_key.pem ubuntu@your_ec2_instance_ip" >> README.md
echo '```' >> README.md

# 3. Configure passwordless authentication using ssh-keygen
echo "3. Configure passwordless authentication using ssh-keygen" >> README.md
echo '```bash' >> README.md
echo "ssh-keygen -t rsa -b 4096" >> README.md
echo "ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@your_ec2_instance_ip" >> README.md
echo '```' >> README.md

# 4. Ansible adhoc commands
echo "4. Ansible adhoc commands" >> README.md
echo "   - Example: Ping all hosts in the inventory file." >> README.md
echo '```bash' >> README.md
echo "ansible -i inventory all -m "shell" -a "touch devopstest" >> README.md
echo '```' >> README.md

# 5. Inventory file (grouping servers using syntax [$server_type])
echo "5. Inventory file (grouping servers using syntax [\$server_type])" >> README.md
echo "   - Example of an inventory file:" >> README.md
echo '```ini' >> README.md
echo "[webservers]" >> README.md
echo "server1 ansible_host=172.31.1.180 ansible_user=ubuntu" >> README.md
echo "server2 ansible_host=172.31.8.121 ansible_user=ubuntu" >> README.md
echo "" >> README.md
echo "[databases]" >> README.md
echo "dbserver ansible_host=172.31.1.100 ansible_user=ubuntu" >> README.md
echo '```' >> README.md

# 6. Ansible playbook
echo "6. Ansible playbook" >> README.md
echo "   - Example playbook to install and start Nginx:" >> README.md
echo '```yaml' >> README.md
echo "---" >> README.md
---
- name: Install and Start Nginx
  hosts: all
  become: root


  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present
    - name: Start Nginx
      service:
        name: nginx
        state: started
echo "ansible-playbook -i inventory first-playbook.yml" >> README.md
# 7. Ansible galaxy (Roles)
echo "7. Ansible galaxy (Roles)" >> README.md
echo "   - Install a role from Ansible Galaxy." >> README.md
echo '```bash' >> README.md
echo "ansible-galaxy init kubernetes" >> README.md
echo '```' >> README.md


