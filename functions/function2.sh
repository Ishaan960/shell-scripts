#!/bin/bash
hello() {
	echo "Hello!"
	now
}
now() {
	echo "it's $(date +%r)"
}
