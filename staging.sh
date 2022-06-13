mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgtww2Rx6osyBK+Q93s7CQcYgji3z5UT9wLQJ9YxhN5rLMTTgcxf3iFffR+HjpBaKBZWgqANsixMw/1XJYhmLVHJJdMMD5T0VN35d0rn8WiDA4Y2B0FE4RdcT6qmB1eilOE7ShuGykOGcOmMvnbD1/0xLgmjDJUbH/evcNdy2HnN0FW0FRREkF1VQ3z/qyIqmqXblcKUq1+HoOiDwYwGDMPvbQrD85detfD5ZDpmt/10KFnGpAdlNC+rOJA+DQgWmRISRtMAzLWwJXYEmjcEyaIzWtKcmlvKkF0UVpK1dun+Uml81ZEUPr8ont+25Z/RWtif6V+orKTrHMdBdVIao8Q== elestio-staging-key" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
