#!/bin/bash

USER="$USER"

if [ "$USER" == "root" ]; then
    echo "This is root user"
else
    echo "This is not root user"
fi

