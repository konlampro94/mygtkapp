#! /bin/sh

set -e

echo "Configurations..."
. ./conf.sh || exit 1

# Run application
. ./run.sh || exit 1;
echo $0 Finishded succesfully at `date`.
exit 0