#!/bin/bash

my_password="Pavankumarms77@"


echo "Enter the password"
read p

if [ "$p" = "$my_password" ]; then
	echo "Access allowed"
else
	echo "Access denied"
fi
