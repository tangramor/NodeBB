#!/bin/bash

case ${1} in
	init)
		;;
	start)
		mv /usr/src/app/* /data/
		cd /data
		./nodebb start
		;;
	*)
		exec "$@"
		;;
esac

