#!/bin/bash

PROG_NAME=$1

echo here are the list of files

	ls -la

echo Execute script again with the required file from list as argument

	python $1

