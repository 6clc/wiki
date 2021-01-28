

# https://broqiang.github.io/2018/01/20/git-auto-commit-on-shutdown/

sudo vim /lib/systemd/system/git-auto-commit.service

[Unit]
Description=Auto commit code on reboot and shutdown
Requires=network.target
After=network.target remote-fs.target nss-lookup.target graphical.target
[Service]
Type=forking
#Type=simple
ExecStart=/home/bro/bin/git_auto_commit start

RemainAfterExit=true ExecStop=/home/bro/bin/git_auto_commit stop
[Install]
WantedBy=graphical.target

sudo systemctl enable git-auto-commit