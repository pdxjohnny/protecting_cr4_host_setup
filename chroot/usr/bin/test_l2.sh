echo "TEST L2 BEGIN"
# Run 3 times
echo "/usr/bin/rebooter" > /do_l2
sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 /home/johnsa1/run.sh'
echo "TEST L2 END"
rebooter
