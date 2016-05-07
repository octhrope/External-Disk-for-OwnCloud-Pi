#! /bin/sh
# /etc/init.d/automounthd

case "$1" in
  start)
    echo "Mounting External Hard Drive..."
    sudo mount /dev/sda1 /disk
    ;;
  stop)
    echo "Unmounting External Hard Drive..."
    sudo umount /dev/sda1
    ;;
  *)
    echo "Usage: /etc/init.d/automounthd {start|stop}"
    exit 1
    ;;
esac
