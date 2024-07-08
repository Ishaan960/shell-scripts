#!/bin/bash

now() {
    echo "it's $(date +%r)"
}

hello() {
    echo "Hello!"
    now
}

# Calling the function
hello

