#!/bin/bash
hello() {
	echo "Hello!"
	now
}
hello
now() {
        echo "it's $(date +%r)"
}

