#!/bin/bash

case ${1} in
	init)
		;;
	start)
		cp -Rf /usr/src/app/* /data/
		rm -rf /usr/src/app/*
		cd /data
		./nodebb start
		;;
	*)
		exec "$@"
		;;
esac

