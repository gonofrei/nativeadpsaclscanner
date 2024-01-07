# Native AD, PS, ACL Scanner

_This tool is free software and can be redistributed as such. It is intended to simplify ACL enumeration in AD environments by leveraging the AD PowerShell module that is typically already installed on some hosts, allowing for a stealthy approach. It is also recommended for SysAdmins that want to check their ACL integrity across the domain._

**Purpose -->** Pentesting and/or hardening

**Requirements -->** You need to have installed the ActiveDirectory PS module in order to run it. It is installed on most administrator-used machines. The script will check first if it is installed, if so, it will try to import it.

**Usage -->** copy-paste all code into PS terminal and run it or run script file. See the following usage example:

Main menu:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/e7bfaed3-645b-4b50-bb34-0bc67022ec79)

The first step if we are going to use list-based queries, is to generate all the lists that we are going to use:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/0c307d21-e7c0-4b20-9388-680136a63bd6)

Now, we are going to execute a sample query. We have to select the object type we are going to query for. If i want to know which ACLs does a user have, i am going to select the first option:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/9d995c93-a286-4227-a772-b57a979f4c48)

Later, i have to select the general query type i want to use. I would want to query for a specific user object ACLs over an object list (that we are going to select later):
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/11c9980f-03f2-45c1-83ac-c16a349bec99)

I want to query my user object against the complete AD user list, so i am selecting the first option:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/e54a0c28-f3e0-4567-9bed-e1faec45722c)

it will ask me to input my source user object name. Then, it will compare that user ACLs over the complete AD user list. If any ACL exists, it will display it, resolving its GUID to a nice name (User-Force-Change-Password), and, also, it will give me the target user name where this ACL applies (damundsen). This means that the wley user can change the password of the damundsen user, which is very nice!!:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/d76b4c02-e8d2-41cb-aec4-6f6d5f1e60f2)

Now, if i go back and execute another search by source user object (damundsen), but, this time, against the AD groups list, it will retrieve me the ACL that this user has against Help Desk Level 1 group. It will also resolve the "00000000-0000-0000-0000-000000000000" GUID telling me that "Woaah, that ACL looks nice" and that the ActiveDirectoryRights are "ListChildren, ReadProperty, GenericWrite". As a new feature, it will also tell us if the resulting groups are nested into another groups or if they have inside another groups, which is very useful for performing further queries:
![image](https://github.com/gonofrei/nativeadpsaclscanner/assets/64318563/68206206-ec8d-408c-890b-d6e85ea470c4)











