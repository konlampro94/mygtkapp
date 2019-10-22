#! /bin/sh
echo "Launching application..."
gtk-launch hello-world.desktop || exit 1;
echo "Exiting"
echo $0 Finished succesfully at `date`!
