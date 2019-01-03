#!/bin/bash

# Qlustar HEAD node installation script
# https://www.qlustar.com/download

declare iso_name="qlustar-installer-10.1.1-0.iso"
declare iso_fn="/tmp/$iso_name"
declare sha_1=""
declare sha_2=""
# declare usb_drive="/dev/sdb"

function prepareISO() {
	gunzip "$iso_name".gz
	if [ ! -f "$iso_fn" ]; then
		mv "$iso_name" /tmp
	fi
}

function enterUSB() {
	read -p "USB pen drive device (/dev/sd_):" usb_drive
	if [ -b "$usb_drive" ]; then
		echo "USB not recognized"; exit 1;
	fi
}

function burnISO() {
	# Now burn ISO to USB drive (assuming it's /dev/sdb) as follows
	dd if="$iso_fn" of="$usb_drive"
	sync
	echo "Unplug USB drive and plug it back in (to be sure not to read back from cache in the next step)."
	echo "Make sure that it's block device remains the same (here /dev/sdb)."
}

function checkISO() {
	sha_1=$(sha256sum "$iso_fn")
	echo "SHA1 : $sha_1"
	echo -n "SHA2 : "
	dd if="$usb_drive" bs=2048 count=$(( $(stat -c '%s' "$iso_fn") / 2048 )) | sha256sum
}

enterUSB
prepareISO
burnISO
checkISO
