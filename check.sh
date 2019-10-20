#! /bin/sh

set -e

echo "Checking"
. ./conf.sh || exit 1


echo "Giving permissions to the desktop launcher..."
chmod +x ~/.local/share/applications/hello-world.desktop || exit 1;

echo $0 Finishded succesfully at `date`.
exit 0