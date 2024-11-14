#!/bin/sh
# Remount the system partition in read-write mode to write the certificate. In some devices is not possible to mount
# the /system partition. In this case, the / partition should be mounted
mount -o rw,remount /system
# Copy the certificate to the root store.
cp /sdcard/c8750f0d.0 /system/etc/security/cacerts/
# Change the permissions for the certificate.
chmod 644 /system/etc/security/cacerts/c8750f0d.0
reboot
