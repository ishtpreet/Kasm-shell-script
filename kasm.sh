#Swap file

sudo dd if=/dev/zero bs=1M count=1024 of=/mnt/1GiB.swap

sudo chmod 600 /mnt/1GiB.swap

sudo mkswap /mnt/1GiB.swap

sudo swapon /mnt/1GiB.swap


#Verify swap exists

cat /proc/swaps


#Add swap to fstab

echo '/mnt/1GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab



#Download the KASM set up

wget https://kasm-static-content.s3.amazonaws.com/kasm_release_1.10.0.238225.tar.gz


#Unzip the set up files.

tar -xf kasm_release*.tar.gz


#Start the set up script.

sudo bash kasm_release/install.sh

#Open https://ip_Address
