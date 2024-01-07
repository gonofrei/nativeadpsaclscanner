# Native AD, PS, ACL Scanner

This tool is free software and can be redistributed as such. It is intended to simplify ACL enumeration in AD environments by leveraging the AD PowerShell module that is typically already installed on some hosts, allowing for a stealthy approach. It is also recommended for SysAdmins that want to check their ACL integrity across the domain.

Purpose --> Pentesting and/or hardening

Requirements --> You need to have installed the ActiveDirectory PS module in order to run it. It is installed on most administrator-used machines. The script will check first if it is installed, if so, it will try to import it.

Usage --> copy-paste all code into PS terminal and run it or run script file
