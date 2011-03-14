#!/bin/sh 

git tag "$1"
git push  # Make sure changes are pushed in addition to the tags!
git push --tags
# copy the compiled pdf output to a unique name so github won't bitch
cp osdev.pdf "osdev-$1.pdf"
# upload using Net::Github::Upload perl script.
github-upload "osdev-$1.pdf" nixeagle/aosd
