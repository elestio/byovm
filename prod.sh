sudo mkdir -p /root/.ssh/;
sudo sh -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmAlfBn8fy00sHq4DV2lUDNJ73XNwCtSDgHAAEjVt8lVcPOyb+drHK7TmHtF6mIhax/qeFdS/27bqmuu2/+QyXuvG98WL47cJinVkuUNR1bqKfpjwvlGtPkVQTiz2aN9ktY8+RaKoJUg6YrL23wiRgqibRuRYJgG1tIx7O4pUAK8XPsIVw2kvTuaVWu+iQq968KozJP8t1C6U8eqwbV2H8xpMLAsuIA82S1vGkqx42TBLo8XOgQo1ZIoY4dsO+ElvJZ5sqxAg4GB57OIgpaav/2SkKau6Oh4ndkKTJms5kTc2wUm96VVea2eOrOL0TPNQOhb1uy2MgxS9LLFxm2psmQ== elestio-prod-key" >> /root/.ssh/authorized_keys';
sudo sh -c 'echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config';
sudo service ssh restart;
