echo "TEST L2 BEGIN"
# Run 3 times
sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 TRAILING=-no-reboot /home/johnsa1/run.sh'
echo "TEST L2 RAN 1"
sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 TRAILING=-no-reboot /home/johnsa1/run.sh'
echo "TEST L2 RAN 2"
sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 TRAILING=-no-reboot /home/johnsa1/run.sh'
echo "TEST L2 RAN 3"
echo "TEST L2 END"
rebooter
