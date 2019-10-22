#! /bin/sh

set -e

echo "Giving permissions!!"
chmod +x *.sh  || exit 1;

username=`whoami`
echo "Username : " $username

desk_file=*.desktop
if [ -f "$desk_file" ] ; then
    echo "$desk_file" exists !!!
    echo "Uninstalling.."
    sudo make uninstall || exit 1;
    rm *.desktop || exit 1;

else
    echo "$desk_file"  does not exist !!!
    echo "Running autogen.sh....."
    path=/home/$username/.local
    echo "Path is :" $path
    . ./autogen.sh --prefix=$path || exit 1;
    echo "Installing..."
    sudo make install || exit 1;
    echo "Giving permissions to .desktop"
    sudo chmod +x $path/share/applications/hello-world.desktop || exit 1;
fi



echo $0 Finished succesfully at `date`!


