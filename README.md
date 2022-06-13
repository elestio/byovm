# byovm
BringYourOwnVM setup script

To connect your VM to Elestio, run this command on your VM then continue the process on Elestio dashboard:
  
  curl https://raw.githubusercontent.com/elestio/byovm/main/prod.sh | sudo bash
  

Warning: on AWS you will need to manually edit the file `/root/.ssh/authorized_keys` to remove the first line
