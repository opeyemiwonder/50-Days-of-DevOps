# 60-Days-of-DevOps
## DevOps Fundamental and Linux Shell Scripting
> Write a script to report AWS resources
>> Automate Tasks Using Shell Script and Cron Job
### Ansible
> Set up a passwordless aunthentication on Ansible
>> Group server in the inventory file
   -   Create a file for inventory: inventory simple means where target IP Address are stored
>>> Used Ansible Adhoc to execute small task on host server and Ansible Playbook to execute multiple task
       ``` Example using Ansible Adhoc to create a file ```
       ``` ansible -i inventory IP -m "shell" -a "touch file"  ```
   - ```  To execute playbook created in yml ```
      -  ```  ansible-playbook -i inventory nameofplaybook ```
#### More Ansible Task
> Create 3 ec2 instances on AWS
>> Configure 1 of the ec2 instances as master and the 2 as worker
>> Ansible Role is used here to improve the efficiency of complex ansible playbook
     ```  ansible-galaxy role init kuberetes   : This creates a k8 folder and it's simply the concept of role ```
#### Terraform
> Create an ec2 instance using infrastructure as a code
>> Create an aws remote backend on s3 and a locking solution on DynamoDB to store terraform .tfstate
