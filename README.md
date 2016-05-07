# External-Disk-for-OwnCloud-Pi
A simple external storage configuration for OwnCloud Raspberry Pi Installations
Particularly when fstab isnt working properly.


1.  Identify the external drive. (leave the $ off when copy pasting)

    $ lsusb
    $ sudo fdisk -l
    $ df

	
2. Mount the driave and make a directory to move the owncloud files to or to have a space for the hd to map to.

		$ sudo mkdir /disk
		$ sudo mount /dev/sda1 /disk	


3. Download the automounthd.sh script. Edit the script, if necessairy, the sda# to match your external drive. (mine is sda1).    


4.  copy automounthd.sh file to :

		/etc/init.d
or
	copy paste via :
	
		$ sudo nano /etc/init.d/automounthd.sh


5. Update permissions for automouthd.sh.

		$ sudo chmod 755 /etc/init.d/automounthd
		$ sudo update-rc.d automounthd defaults

6. Reboot the pi.

		$ sudo reboot.
	
	
Your external drive is now automounting.    
Test it with:
	$ df
