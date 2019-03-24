sudo docker run --privileged -dti --name centos -p 18964:18964 -p 18964:18964/udp -p 28964:28964 -p 28964:28964/udp -p 443:443 -p 80:80 -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /home/palfans/work/v2ray/v2ray_config:/etc/v2ray -v /home/palfans/work/v2ray/caddy_config:/etc/caddy palfans/systemd_centos:latest
curl -sL -o /home/palfans/work/v2ray/v2ray.sh https://git.io/fjJaV
chmod +x /home/palfans/work/v2ray/v2ray.sh
sudo docker cp /home/palfans/work/v2ray/v2ray.sh centos:/root/v2ray.sh
sudo docker exec -it centos /root/v2ray.sh


# forwardproxy {
#        basicauth       PROXY_USER      PROXY_PASS
#}