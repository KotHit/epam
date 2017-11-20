#!/bin/bash

pwd=$1
find $pwd  -print | sed -e "s;$pwd;\.;g;s;[^/]*\/;|__;g;s;__|; |;g"
#exit 0 
