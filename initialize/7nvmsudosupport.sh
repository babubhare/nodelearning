#! /bin/bash
. ~/.nvm/nvm.sh

DIR=$NVM_DIR/versions/node/$(nvm version)/bin/*
DEST=/usr/local/bin

for filename in $DIR; do
    filename=$(basename $filename)
    DEST_FILE=$DEST/$filename
    echo "Copying $filename to $DEST_FILE"
    sudo ln -sf "$NVM_DIR/versions/node/$(nvm version)/bin/$filename" "$DEST_FILE"
done