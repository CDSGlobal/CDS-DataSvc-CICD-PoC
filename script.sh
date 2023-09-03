#!/bin/bash

DESTINATION_DIR="flyway-9.21.2/sql" 

# Create the destination directory if it doesn't exist

mkdir -p "$DESTINATION_DIR" 

for i in $(git show --diff-filter=d --pretty="" --name-only "$CODEBUILD_RESOLVED_SOURCE_VERSION");
do

    FILE_NAME=$(echo "$i" | awk -F "/" '{ print $NF }')

    echo "Source file: $i"

    echo "Destination: $DESTINATION_DIR/$FILE_NAME"

    

    if [ "${FILE_NAME##*.}" = "sql" ]; then

        echo "Copying..."

        cp "$i" "$DESTINATION_DIR/$FILE_NAME"

        echo "Copy complete."

    fi

done