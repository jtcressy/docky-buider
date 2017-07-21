#! /bin/bash
echo "Now installing docky..."
cd /docky/docky
./autogen.sh
make
make install