# Development VM as code

This is how I've started maintaining my development environment in a VM using vagrant.  Packer will build the image from a source OVF, run provisioning scripts and ansible to set up all the things.  Vagrant is also configured to run the same ansible playbook, so I can do incremental changes between rebuilding the base box.

## Build the base OVF file

I couldn't easily get packer to build a VM from the ubuntu desktop ISO, so I've built the source OVF manually with a minimum of steps.  This should only have to be re-done on major revisions of the OS:

* create a VM in virtualbox
* mount ubuntu 14.04 desktop ISO
* boot to live cd, then install
* user/pass vagrant
* enable remote login
* shut down
* remove ISO mount
* export as OVF to ovf/ubuntu-desktop-14.04.ovf
