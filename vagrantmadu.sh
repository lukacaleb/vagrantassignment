HP@CalebLuka MINGW64 ~/Documents/Altschool/html101/vagrant-projects (main)
$ vagrant ssh
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-156-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Support:        https://ubuntu.com/advantage

  System information as of Fri Aug 18 08:29:37 UTC 2023

  System load:  0.65              Processes:               126
  Usage of /:   7.2% of 38.70GB   Users logged in:         0
  Memory usage: 5%                IPv4 address for enp0s3: 10.0.2.15
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Applications is not enabled.

4 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

New release '22.04.3 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Fri Aug 18 08:01:29 2023 from 10.0.2.2
vagrant@ubuntu-focal:~$ vim update
vagrant@ubuntu-focal:~$ visudo
visudo: /etc/sudoers: Permission denied
vagrant@ubuntu-focal:~$ sudo su
root@ubuntu-focal:/home/vagrant# visudo
>>> /etc/sudoers: syntax error near line 21 <<<
What now? exit
root@ubuntu-focal:/home/vagrant# visudo
root@ubuntu-focal:/home/vagrant# visudo --help
visudo - safely edit the sudoers file

usage: visudo [-chqsV] [[-f] sudoers ]

Options:
  -c, --check              check-only mode
  -f, --file=sudoers       specify sudoers file location
  -h, --help               display help message and exit
  -q, --quiet              less verbose (quiet) syntax error messages
  -s, --strict             strict syntax checking
  -V, --version            display version information and exit

root@ubuntu-focal:/home/vagrant# visudo
root@ubuntu-focal:/home/vagrant# usermod -aG sudo micah
root@ubuntu-focal:/home/vagrant# su to micah
su: user to does not exist
root@ubuntu-focal:/home/vagrant# su - micah
su: warning: cannot change directory to /home/altschool: No such file or directory
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

micah@ubuntu-focal:/home/vagrant$ sudo yum update
[sudo] password for micah: 
sudo: yum: command not found
micah@ubuntu-focal:/home/vagrant$ sudo su yum update
su: user yum does not exist
micah@ubuntu-focal:/home/vagrant$ su yum update
su: user yum does not exist
micah@ubuntu-focal:/home/vagrant$ sudo yum update
sudo: yum: command not found
micah@ubuntu-focal:/home/vagrant$ sudo -y update
sudo: invalid option -- 'y'
usage: sudo -h | -K | -k | -V
usage: sudo -v [-AknS] [-g group] [-h host] [-p prompt] [-u user]
usage: sudo -l [-AknS] [-g group] [-h host] [-p prompt] [-U user] [-u user] [command]
usage: sudo [-AbEHknPS] [-r role] [-t type] [-C num] [-g group] [-h host] [-p prompt] [-T timeout] [-u user] [VAR=value] [-i|-s] [<command>]usage: sudo -e [-AknS] [-r role] [-t type] [-C num] [-g group] [-h host] [-p prompt] [-T timeout] [-u user] file ...
micah@ubuntu-focal:/home/vagrant$ sudo yum --help
sudo: yum: command not found
micah@ubuntu-focal:/home/vagrant$ sudo apt update -y
Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
Get:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Get:3 http://archive.ubuntu.com/ubuntu focal-backports InRelease [108 kB]
Get:4 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
Get:5 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [2753 kB]
Get:6 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [2362 kB]
Get:7 http://archive.ubuntu.com/ubuntu focal-updates/main Translation-en [456 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [17.0 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [2185 kB]    
Get:10 http://archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [306 kB]
Get:11 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [1101 kB]
Get:12 http://archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [263 kB]
Get:13 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [25.5 kB]
Get:14 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [373 kB]
Get:15 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [13.0 kB]
Get:16 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [2070 kB]
Get:17 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [289 kB]
Get:18 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [872 kB]
Get:19 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [183 kB]
Get:20 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [19.0 kB]
Fetched 13.6 MB in 15s (935 kB/s)
Reading package lists... Done
Building dependency tree       
Reading state information... Done
7 packages can be upgraded. Run 'apt list --upgradable' to see them.
micah@ubuntu-focal:/home/vagrant$ sudo apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
micah@ubuntu-focal:/home/vagrant$ uname -a
Linux ubuntu-focal 5.4.0-156-generic #173-Ubuntu SMP Tue Jul 11 07:25:22 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
micah@ubuntu-focal:/home/vagrant$ apt list --upgradable
Listing... Done
cloud-init/focal-updates 23.2.2-0ubuntu0~20.04.1 all [upgradable from: 23.2.1-0ubuntu0~20.04.2]
distro-info/focal-updates 0.23ubuntu1.1 amd64 [upgradable from: 0.23ubuntu1]
libgpgme11/focal-updates 1.13.1-7ubuntu2.1 amd64 [upgradable from: 1.13.1-7ubuntu2]
libtiff5/focal-updates,focal-security 4.1.0+git191117-2ubuntu0.20.04.9 amd64 [upgradable from: 4.1.0+git191117-2ubuntu0.20.04.8]
python3-distro-info/focal-updates 0.23ubuntu1.1 all [upgradable from: 0.23ubuntu1]
sosreport/focal-updates 4.5.6-0ubuntu1~20.04.1 amd64 [upgradable from: 4.4-1ubuntu0.20.04.1]
ufw/focal-updates 0.36-6ubuntu1.1 all [upgradable from: 0.36-6ubuntu1]
micah@ubuntu-focal:/home/vagrant$ sudo apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
micah@ubuntu-focal:/home/vagrant$ yum update -y

Command 'yum' not found, did you mean:

  command 'gum' from snap gum (0.12.0)
  command 'uum' from deb freewnn-jserver (1.1.1~a021+cvs20130302-7build1)
  command 'num' from deb quickcal (2.4-1)
  command 'zum' from deb perforate (1.2-5.1)
  command 'sum' from deb coreutils (8.30-3ubuntu2)

See 'snap info <snapname>' for additional versions.

micah@ubuntu-focal:/home/vagrant$ apt install -y yum-utils
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
micah@ubuntu-focal:/home/vagrant$ exit
logout
root@ubuntu-focal:/home/vagrant# sudo apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
root@ubuntu-focal:/home/vagrant#  apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
root@ubuntu-focal:/home/vagrant# sudo su
root@ubuntu-focal:/home/vagrant# sudo apt update && sudo apt upgrade -y
Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:3 http://security.ubuntu.com/ubuntu focal-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu focal-backports InRelease
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Preconfiguring packages ...
(Reading database ... 109960 files and directories currently installed.)
Preparing to unpack .../0-python3-distro-info_0.23ubuntu1.1_all.deb ...
Unpacking python3-distro-info (0.23ubuntu1.1) over (0.23ubuntu1) ...
Preparing to unpack .../1-ufw_0.36-6ubuntu1.1_all.deb ...
Unpacking ufw (0.36-6ubuntu1.1) over (0.36-6ubuntu1) ...
Preparing to unpack .../2-distro-info_0.23ubuntu1.1_amd64.deb ...
Unpacking distro-info (0.23ubuntu1.1) over (0.23ubuntu1) ...
Preparing to unpack .../3-libgpgme11_1.13.1-7ubuntu2.1_amd64.deb ...
Unpacking libgpgme11:amd64 (1.13.1-7ubuntu2.1) over (1.13.1-7ubuntu2) ...
Preparing to unpack .../4-libtiff5_4.1.0+git191117-2ubuntu0.20.04.9_amd64.deb ...
Unpacking libtiff5:amd64 (4.1.0+git191117-2ubuntu0.20.04.9) over (4.1.0+git191117-2ubuntu0.20.04.8) ...
Preparing to unpack .../5-sosreport_4.5.6-0ubuntu1~20.04.1_amd64.deb ...
Unpacking sosreport (4.5.6-0ubuntu1~20.04.1) over (4.4-1ubuntu0.20.04.1) ...
Preparing to unpack .../6-cloud-init_23.2.2-0ubuntu0~20.04.1_all.deb ...
Unpacking cloud-init (23.2.2-0ubuntu0~20.04.1) over (23.2.1-0ubuntu0~20.04.2) ...
Setting up distro-info (0.23ubuntu1.1) ...
Setting up cloud-init (23.2.2-0ubuntu0~20.04.1) ...
Setting up ufw (0.36-6ubuntu1.1) ...
Setting up libgpgme11:amd64 (1.13.1-7ubuntu2.1) ...
Setting up sosreport (4.5.6-0ubuntu1~20.04.1) ...
Setting up libtiff5:amd64 (4.1.0+git191117-2ubuntu0.20.04.9) ...
Setting up python3-distro-info (0.23ubuntu1.1) ...
Processing triggers for rsyslog (8.2001.0-1ubuntu1.3) ...
Processing triggers for systemd (245.4-4ubuntu3.22) ...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
root@ubuntu-focal:/home/vagrant# sudo su
root@ubuntu-focal:/home/vagrant# sudo apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
root@ubuntu-focal:/home/vagrant# sudo add-apt-repository main
'main' distribution component is already enabled for all sources.
root@ubuntu-focal:/home/vagrant# sudo add-apt-repository universe
'universe' distribution component is already enabled for all sources.
root@ubuntu-focal:/home/vagrant# sudo add-apt-repository restricted
'restricted' distribution component is already enabled for all sources.
root@ubuntu-focal:/home/vagrant# sudo add-apt-repository multiverse
'multiverse' distribution component is already enabled for all sources.
root@ubuntu-focal:/home/vagrant# sudo apt install -y yum-utils
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package yum-utils
root@ubuntu-focal:/home/vagrant# sudo su
root@ubuntu-focal:/home/vagrant# su micah
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

micah@ubuntu-focal:/home/vagrant$ usermod -aG sudo micah
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ su usermod -aG sudo micah 
su: invalid option -- 'a'
Try 'su --help' for more information.
micah@ubuntu-focal:/home/vagrant$ usermod -a sudo micah
Usage: usermod [options] LOGIN

Options:
  -b, --badnames                allow bad names
  -c, --comment COMMENT         new value of the GECOS field
  -d, --home HOME_DIR           new home directory for the user account
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -f, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -g, --gid GROUP               force use GROUP as new primary group
  -G, --groups GROUPS           new list of supplementary GROUPS
  -a, --append                  append the user to the supplemental GROUPS
                                mentioned by the -G option without removing
                                the user from other groups
  -h, --help                    display this help message and exit
  -l, --login NEW_LOGIN         new value of the login name
  -L, --lock                    lock the user account
  -m, --move-home               move contents of the home directory to the
                                new location (use only with -d)
  -o, --non-unique              allow using duplicate (non-unique) UID
  -p, --password PASSWORD       use encrypted password for the new password
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             new login shell for the user account
  -u, --uid UID                 new UID for the user account
  -U, --unlock                  unlock the user account
  -v, --add-subuids FIRST-LAST  add range of subordinate uids
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids
  -w, --add-subgids FIRST-LAST  add range of subordinate gids
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids
  -Z, --selinux-user SEUSER     new SELinux user mapping for the user account

micah@ubuntu-focal:/home/vagrant$ usermod -G sudo micah
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ usermod -aG sudo micah
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ usermod -a admin micah
Usage: usermod [options] LOGIN

Options:
  -b, --badnames                allow bad names
  -c, --comment COMMENT         new value of the GECOS field
  -d, --home HOME_DIR           new home directory for the user account
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -f, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -g, --gid GROUP               force use GROUP as new primary group
  -G, --groups GROUPS           new list of supplementary GROUPS
  -a, --append                  append the user to the supplemental GROUPS
                                mentioned by the -G option without removing
                                the user from other groups
  -h, --help                    display this help message and exit
  -l, --login NEW_LOGIN         new value of the login name
  -L, --lock                    lock the user account
  -m, --move-home               move contents of the home directory to the
                                new location (use only with -d)
  -o, --non-unique              allow using duplicate (non-unique) UID
  -p, --password PASSWORD       use encrypted password for the new password
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             new login shell for the user account
  -u, --uid UID                 new UID for the user account
  -U, --unlock                  unlock the user account
  -v, --add-subuids FIRST-LAST  add range of subordinate uids
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids
  -w, --add-subgids FIRST-LAST  add range of subordinate gids
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids
  -Z, --selinux-user SEUSER     new SELinux user mapping for the user account

micah@ubuntu-focal:/home/vagrant$ usermod -aG admin micah
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ sudo mount -o rw,remount /
[sudo] password for micah: 
micah@ubuntu-focal:/home/vagrant$ sudo rm -rvf /etc/passwd.lock /etc/shadow.lock /etc/group.lock /etc/gshadow.lock
micah@ubuntu-focal:/home/vagrant$ usermod -aG sudo micah
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ sudo mount -o rw,remount /
micah@ubuntu-focal:/home/vagrant$ sudo rm -rvf /etc/passwd.lock /etc/shadow.lock /etc/group.lock /etc/gshadow.lock
micah@ubuntu-focal:/home/vagrant$ useradd -u 1009 -d /home/altschool -s /bin/bash -c bigman yusuf
useradd: Permission denied.
useradd: cannot lock /etc/passwd; try again later.
micah@ubuntu-focal:/home/vagrant$ exit
exit
root@ubuntu-focal:/home/vagrant# useradd -u 1009 -d /home/altschool -s /bin/bash -c bigman yusuf
root@ubuntu-focal:/home/vagrant# us yusuf
us: command not found
root@ubuntu-focal:/home/vagrant# su yusuf
yusuf@ubuntu-focal:/home/vagrant$ useradd -aG sudoer yusuf
useradd: invalid option -- 'a'
Usage: useradd [options] LOGIN
       useradd -D
       useradd -D [options]

Options:
      --badnames                do not check for bad names
  -b, --base-dir BASE_DIR       base directory for the home directory of the
                                new account
      --btrfs-subvolume-home    use BTRFS subvolume for home directory
  -c, --comment COMMENT         GECOS field of the new account
  -d, --home-dir HOME_DIR       home directory of the new account
  -D, --defaults                print or change default useradd configuration
  -e, --expiredate EXPIRE_DATE  expiration date of the new account
  -f, --inactive INACTIVE       password inactivity period of the new account
  -g, --gid GROUP               name or ID of the primary group of the new
                                account
  -G, --groups GROUPS           list of supplementary groups of the new
                                account
  -h, --help                    display this help message and exit
  -k, --skel SKEL_DIR           use this alternative skeleton directory
  -K, --key KEY=VALUE           override /etc/login.defs defaults
  -l, --no-log-init             do not add the user to the lastlog and
                                faillog databases
  -m, --create-home             create the user's home directory
  -M, --no-create-home          do not create the user's home directory
  -N, --no-user-group           do not create a group with the same name as
                                the user
  -o, --non-unique              allow to create users with duplicate
                                (non-unique) UID
  -p, --password PASSWORD       encrypted password of the new account
  -r, --system                  create a system account
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             login shell of the new account
  -u, --uid UID                 user ID of the new account
  -U, --user-group              create a group with the same name as the user
  -Z, --selinux-user SEUSER     use a specific SEUSER for the SELinux user mapping
      --extrausers              Use the extra users database

yusuf@ubuntu-focal:/home/vagrant$ useradd -aG sudo yusuf
useradd: invalid option -- 'a'
Usage: useradd [options] LOGIN
       useradd -D
       useradd -D [options]

Options:
      --badnames                do not check for bad names
  -b, --base-dir BASE_DIR       base directory for the home directory of the
                                new account
      --btrfs-subvolume-home    use BTRFS subvolume for home directory
  -c, --comment COMMENT         GECOS field of the new account
  -d, --home-dir HOME_DIR       home directory of the new account
  -D, --defaults                print or change default useradd configuration
  -e, --expiredate EXPIRE_DATE  expiration date of the new account
  -f, --inactive INACTIVE       password inactivity period of the new account
  -g, --gid GROUP               name or ID of the primary group of the new
                                account
  -G, --groups GROUPS           list of supplementary groups of the new
                                account
  -h, --help                    display this help message and exit
  -k, --skel SKEL_DIR           use this alternative skeleton directory
  -K, --key KEY=VALUE           override /etc/login.defs defaults
  -l, --no-log-init             do not add the user to the lastlog and
                                faillog databases
  -m, --create-home             create the user's home directory
  -M, --no-create-home          do not create the user's home directory
  -N, --no-user-group           do not create a group with the same name as
                                the user
  -o, --non-unique              allow to create users with duplicate
                                (non-unique) UID
  -p, --password PASSWORD       encrypted password of the new account
  -r, --system                  create a system account
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             login shell of the new account
  -u, --uid UID                 user ID of the new account
  -U, --user-group              create a group with the same name as the user
  -Z, --selinux-user SEUSER     use a specific SEUSER for the SELinux user mapping
      --extrausers              Use the extra users database

yusuf@ubuntu-focal:/home/vagrant$ usermod -aG sudo yusuf
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
yusuf@ubuntu-focal:/home/vagrant$ tail /etc/passwd
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
caleb:x:1002:1002::/home/caleb:/bin/sh
faith:x:1003:1004::/home/faith:/bin/sh
zuriel:x:1004:1005::/home/zuriel:/bin/sh
michael:x:1005:1006::/home/michael:/bin/sh
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
kas:x:1006:1010::/home/kas:/bin/sh
ephraim:x:1007:1011:greatman:/home/altschool:/bin/sh
micah:x:1008:1012:champion:/home/altschool:/bin/bash
yusuf:x:1009:1013:bigman:/home/altschool:/bin/bash
yusuf@ubuntu-focal:/home/vagrant$ sudo vim /etc/shadow
[sudo] password for yusuf: 
Sorry, try again.
[sudo] password for yusuf:
Sorry, try again.
[sudo] password for yusuf: 
sudo: 3 incorrect password attempts
irc:*:19569:0:99999:7:::   
yusuf@ubuntu-focal:/home/vagrant$ passwd yusuf
Changing password for yusuf.
Current password:
passwd: Authentication token manipulation error
passwd: password unchanged
yusuf@ubuntu-focal:/home/vagrant$ exit
exit
root@ubuntu-focal:/home/vagrant# passwd yusuf
New password:
Retype new password:
passwd: password updated successfully
root@ubuntu-focal:/home/vagrant# su yusuf
yusuf@ubuntu-focal:/home/vagrant$ sudo vim /etc/shadow
[sudo] password for yusuf:
yusuf is not in the sudoers file.  This incident will be reported.
yusuf@ubuntu-focal:/home/vagrant$ sudo vim /etc/shadow
[sudo] password for yusuf:
yusuf is not in the sudoers file.  This incident will be reported.
yusuf@ubuntu-focal:/home/vagrant$ sudo vim /etc/shadowfile
[sudo] password for yusuf:
yusuf is not in the sudoers file.  This incident will be reported.
yusuf@ubuntu-focal:/home/vagrant$ exit
exit
root@ubuntu-focal:/home/vagrant# su micah
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

micah@ubuntu-focal:/home/vagrant$ sudo vim /etc/shadow
[sudo] password for micah:

[1]+  Stopped                 sudo vim /etc/shadow
micah@ubuntu-focal:/home/vagrant$ sudo change -l micah
sudo: change: command not found
micah@ubuntu-focal:/home/vagrant$ sudo chage -l micah
Last password change                                    : Aug 18, 2023
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
micah@ubuntu-focal:/home/vagrant$ sudo usermod -e 2023-09-01 micah
micah@ubuntu-focal:/home/vagrant$ sudo chage -l micah
Last password change                                    : Aug 18, 2023
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : Sep 01, 2023
Minimum number of days between password change          : 0
irc:*:19569:0:99999:7:::
gnats:*:19569:0:99999:7:::
nobody:*:19569:0:99999:7:::
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
micah@ubuntu-focal:/home/vagrant$
micah@ubuntu-focal:/home/vagrant$
micah@ubuntu-focal:/home/vagrant$
micah@ubuntu-focal:/home/vagrant$ sudo passwd --expire micah
[sudo] password for micah:
passwd: password expiry information changed.
micah@ubuntu-focal:/home/vagrant$ sudo chage -l micah
sudo: Account or password is expired, reset your password and try again
Changing password for micah.
Current password:
New password:
Retype new password:
Bad: new and old password are too similar
New password:
Retype new password:
Last password change                                    : Aug 18, 2023
Password expires                                        : never
Password inactive                                       : never
input:x:107:
Account expires                                         : Sep 01, 2023
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
micah@ubuntu-focal:/home/vagrant$ exit




















input:x:107:
exit
There are stopped jobs.
micah@ubuntu-focal:/home/vagrant$ exit
exit
Vim: Caught deadly signal HUP
Vim: preserving files...
Vim: Finished.

root@ubuntu-focal:/home/vagrant# cd altschool
bash: cd: altschool: No such file or directory
root@ubuntu-focal:/home/vagrant# cd html101
bash: cd: html101: No such file or directory
root@ubuntu-focal:/home/vagrant# mkdir altschool
root@ubuntu-focal:/home/vagrant# cd altschool
root@ubuntu-focal:/home/vagrant/altschool# ls
root@ubuntu-focal:/home/vagrant/altschool# ls -la




















input:x:107:
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 .
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ..
root@ubuntu-focal:/home/vagrant/altschool# ll
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 ./
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ../
root@ubuntu-focal:/home/vagrant/altschool# vi /etc/group

[1]+  Stopped                 vi /etc/group
root@ubuntu-focal:/home/vagrant/altschool# sudo visudo
root@ubuntu-focal:/home/vagrant/altschool# visudo
root@ubuntu-focal:/home/vagrant/altschool# vi /etc/group

[2]+  Stopped                 vi /etc/group
root@ubuntu-focal:/home/vagrant/altschool# ll
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 ./
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ../
root@ubuntu-focal:/home/vagrant/altschool# ls
root@ubuntu-focal:/home/vagrant/altschool# ls -la
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 .
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ..
root@ubuntu-focal:/home/vagrant/altschool# ls -al
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 .
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ..
root@ubuntu-focal:/home/vagrant/altschool# vi /etc/group
root@ubuntu-focal:/home/vagrant/altschool# ll
total 8
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 ./
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ../
root@ubuntu-focal:/home/vagrant/altschool# cat micah
cat: micah: No such file or directory
root@ubuntu-focal:/home/vagrant/altschool# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
systemd-timesync:x:102:104:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:103:106::/nonexistent:/usr/sbin/nologin
syslog:x:104:110::/home/syslog:/usr/sbin/nologin
_apt:x:105:65534::/nonexistent:/usr/sbin/nologin
tss:x:106:111:TPM software stack,,,:/var/lib/tpm:/bin/false
uuidd:x:107:112::/run/uuidd:/usr/sbin/nologin
tcpdump:x:108:113::/nonexistent:/usr/sbin/nologin
sshd:x:109:65534::/run/sshd:/usr/sbin/nologin
landscape:x:110:115::/var/lib/landscape:/usr/sbin/nologin
pollinate:x:111:1::/var/cache/pollinate:/bin/false
fwupd-refresh:x:112:116:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
vagrant:x:1000:1000:,,,:/home/vagrant:/bin/bash
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
ubuntu:x:1001:1001:Ubuntu:/home/ubuntu:/bin/bash
lxd:x:998:100::/var/snap/lxd/common/lxd:/bin/false
caleb:x:1002:1002::/home/caleb:/bin/sh
faith:x:1003:1004::/home/faith:/bin/sh
zuriel:x:1004:1005::/home/zuriel:/bin/sh
michael:x:1005:1006::/home/michael:/bin/sh
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
kas:x:1006:1010::/home/kas:/bin/sh
ephraim:x:1007:1011:greatman:/home/altschool:/bin/sh
micah:x:1008:1012:champion:/home/altschool:/bin/bash
yusuf:x:1009:1013:bigman:/home/altschool:/bin/bash
root@ubuntu-focal:/home/vagrant/altschool# cd
root@ubuntu-focal:~# pwd
/root
root@ubuntu-focal:~# cd home/vagrant
bash: cd: home/vagrant: No such file or directory
root@ubuntu-focal:~# cd home





















kvm:x:108:
bash: cd: home: No such file or directory
root@ubuntu-focal:~# cd /
root@ubuntu-focal:/# cd home
root@ubuntu-focal:/home# cd vagrant
root@ubuntu-focal:/home/vagrant# groupadd altschool
root@ubuntu-focal:/home/vagrant# ll
total 56
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ./
drwxr-xr-x 4 root    root    4096 Aug  1 21:37 ../
-rw------- 1 vagrant vagrant 1740 Aug 18 07:48 .bash_history
-rw-r--r-- 1 vagrant vagrant  220 Jul 31 21:55 .bash_logout
-rw-r--r-- 1 vagrant vagrant 3771 Jul 31 21:55 .bashrc
drwx------ 3 vagrant vagrant 4096 Aug  1 21:39 .cache/
drwx------ 2 vagrant vagrant 4096 Aug 11 18:03 .links2/
drwxrwxr-x 3 vagrant vagrant 4096 Aug 11 21:14 .local/
-rw-r--r-- 1 vagrant vagrant  807 Jul 31 21:55 .profile
drwx------ 2 vagrant vagrant 4096 Aug 15 01:10 .ssh/
-rw-r--r-- 1 vagrant vagrant    0 Aug  9 00:58 .sudo_as_admin_successful
-rw------- 1 vagrant vagrant  800 Aug 18 08:40 .viminfo
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 altschool/
drwxr-xr-x 2 root    root    4096 Aug  9 03:43 altschul/
-rw-r--r-- 1 root    root       0 Aug  8 12:08 ifconfig
drwxrwxr-x 2 vagrant vagrant 4096 Aug  2 19:12 ubuntu20/
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save.1
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save.2
root@ubuntu-focal:/home/vagrant# cat /etc/group | grep altschool
altschool:x:1014:
root@ubuntu-focal:/home/vagrant# vi /etc/group
root@ubuntu-focal:/home/vagrant# cat /etc/group
root:x:0:micah, caleb
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog,ubuntu
tty:x:5:syslog
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:ubuntu
fax:x:21:
voice:x:22:
cdrom:x:24:ubuntu
floppy:x:25:ubuntu
tape:x:26:
sudo:x:27:ubuntu,vagrant,micah
audio:x:29:ubuntu
dip:x:30:ubuntu
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
gnats:x:41:
shadow:x:42:
utmp:x:43:
video:x:44:ubuntu
sasl:x:45:
plugdev:x:46:ubuntu
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:101:
systemd-network:x:102:
systemd-resolve:x:103:
systemd-timesync:x:104:
crontab:x:105:
messagebus:x:106:
input:x:107:
kvm:x:108:
render:x:109:
syslog:x:110:
tss:x:111:
uuidd:x:112:
tcpdump:x:113:
ssh:x:114:
landscape:x:115:
fwupd-refresh:x:116:
admin:x:117:
netdev:x:118:ubuntu
lxd:x:119:ubuntu
vboxsf:x:120:
vagrant:x:1000:
systemd-coredump:x:999:
ubuntu:x:1001:
caleb:x:1002:
nyeyluka:x:1003:caleb
faith:x:1004:
zuriel:x:1005:
michael:x:1006:
adminn:x:1007:faith
support:x:1008:zuriel
engineering:x:1009:michael
kas:x:1010:
ephraim:x:1011:
micah:x:1012:
yusuf:x:1013:
altschool:x:1014:micah, caleb
root@ubuntu-focal:/home/vagrant# ll
total 56
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 ./
drwxr-xr-x 4 root    root    4096 Aug  1 21:37 ../
-rw------- 1 vagrant vagrant 1740 Aug 18 07:48 .bash_history
-rw-r--r-- 1 vagrant vagrant  220 Jul 31 21:55 .bash_logout
-rw-r--r-- 1 vagrant vagrant 3771 Jul 31 21:55 .bashrc
drwx------ 3 vagrant vagrant 4096 Aug  1 21:39 .cache/
drwx------ 2 vagrant vagrant 4096 Aug 11 18:03 .links2/
drwxrwxr-x 3 vagrant vagrant 4096 Aug 11 21:14 .local/
-rw-r--r-- 1 vagrant vagrant  807 Jul 31 21:55 .profile
drwx------ 2 vagrant vagrant 4096 Aug 15 01:10 .ssh/
-rw-r--r-- 1 vagrant vagrant    0 Aug  9 00:58 .sudo_as_admin_successful
-rw------- 1 vagrant vagrant  800 Aug 18 08:40 .viminfo
drwxr-xr-x 2 root    root    4096 Aug 18 13:05 altschool/
drwxr-xr-x 2 root    root    4096 Aug  9 03:43 altschul/
-rw-r--r-- 1 root    root       0 Aug  8 12:08 ifconfig
drwxrwxr-x 2 vagrant vagrant 4096 Aug  2 19:12 ubuntu20/
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save.1
-rw------- 1 root    root       0 Aug 11 21:23 vagrantfile.save.2
root@ubuntu-focal:/home/vagrant# cat /etc/group | grep altschool
altschool:x:1014:micah, caleb
root@ubuntu-focal:/home/vagrant# useradd --h
useradd: option '--h' is ambiguous; possibilities: '--home-dir' '--help'
Usage: useradd [options] LOGIN
       useradd -D
       useradd -D [options]

Options:
      --badnames                do not check for bad names
  -b, --base-dir BASE_DIR       base directory for the home directory of the
                                new account
      --btrfs-subvolume-home    use BTRFS subvolume for home directory
  -c, --comment COMMENT         GECOS field of the new account
  -d, --home-dir HOME_DIR       home directory of the new account
  -D, --defaults                print or change default useradd configuration
  -e, --expiredate EXPIRE_DATE  expiration date of the new account
  -f, --inactive INACTIVE       password inactivity period of the new account
  -g, --gid GROUP               name or ID of the primary group of the new
                                account
  -G, --groups GROUPS           list of supplementary groups of the new
                                account
  -h, --help                    display this help message and exit
  -k, --skel SKEL_DIR           use this alternative skeleton directory
  -K, --key KEY=VALUE           override /etc/login.defs defaults
  -l, --no-log-init             do not add the user to the lastlog and
                                faillog databases
  -m, --create-home             create the user's home directory
  -M, --no-create-home          do not create the user's home directory
  -N, --no-user-group           do not create a group with the same name as
                                the user
  -o, --non-unique              allow to create users with duplicate
                                (non-unique) UID
  -p, --password PASSWORD       encrypted password of the new account
  -r, --system                  create a system account
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             login shell of the new account
  -u, --uid UID                 user ID of the new account
  -U, --user-group              create a group with the same name as the user
  -Z, --selinux-user SEUSER     use a specific SEUSER for the SELinux user mapping
      --extrausers              Use the extra users database

root@ubuntu-focal:/home/vagrant# useradd -m luka
root@ubuntu-focal:/home/vagrant# 
root@ubuntu-focal:/home/vagrant# 
root@ubuntu-focal:/home/vagrant# useradd -M anita
root@ubuntu-focal:/home/vagrant# cd home
bash: cd: home: No such file or directory
root@ubuntu-focal:/home/vagrant# cd
root@ubuntu-focal:~# cd home
bash: cd: home: No such file or directory
root@ubuntu-focal:~# cd /
root@ubuntu-focal:/# cd
root@ubuntu-focal:~# cd home
bash: cd: home: No such file or directory
root@ubuntu-focal:~# cd /home
root@ubuntu-focal:/home# ls -l
total 12
drwxr-xr-x 2 luka    luka    4096 Aug 18 14:39 luka
drwxr-xr-x 3 ubuntu  ubuntu  4096 Aug  1 21:37 ubuntu
drwxr-xr-x 9 vagrant vagrant 4096 Aug 18 13:05 vagrant
root@ubuntu-focal:/home#