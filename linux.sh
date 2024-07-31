#!/bin/bash
	
read -p "Enter your package manager: " pkgMan

if efi-readvar -v PK ; then
	efi-readvar -v PK	
else
	sudo $pkgMan -y install efitools
	efi-readvar -v PK
fi
