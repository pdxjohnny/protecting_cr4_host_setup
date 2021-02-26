echo "TEST L2_kexec BEGIN"
# Run 3 times
echo "test_run_kexec_under_l2.sh" > /do_l2
sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 /home/johnsa1/run.sh'
echo "TEST L2_kexec END"
rebooter
