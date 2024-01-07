###########################################
### MAIN MENU
###########################################

function Show-MainMenu {
    Clear-Host
    Write-Host "

//////////////////////////////////////////////////////////////////////////////////////////
//                                                                                      //
//  #     #                                    #    ######         ######   #####       //
//  ##    #   ##   ##### # #    # ######      # #   #     #        #     # #     #      //
//  # #   #  #  #    #   # #    # #          #   #  #     #        #     # #            //
//  #  #  # #    #   #   # #    # #####     #     # #     # ###    ######   #####  ###  //
//  #   # # ######   #   # #    # #         ####### #     # ###    #             # ###  //
//  #    ## #    #   #   #  #  #  #         #     # #     #  #     #       #     #  #   //
//  #     # #    #   #   #   ##   ######    #     # ######  #      #        #####  #    //
//     #     #####  #           #####                                                   //
//    # #   #     # #          #     #  ####    ##   #    # #    # ###### #####         //
//   #   #  #       #          #       #    #  #  #  ##   # ##   # #      #    #        //
//  #     # #       #           #####  #      #    # # #  # # #  # #####  #    #        //
//  ####### #       #                # #      ###### #  # # #  # # #      #####         //
//  #     # #     # #          #     # #    # #    # #   ## #   ## #      #   #         //
//  #     #  #####  #######     #####   ####  #    # #    # #    # ###### #    #        //
//                                                                                      //
//////////////////////////////////////////////////////////////////////////////////////////

"
    Write-Host "This tool is free software and can be redistributed as such. It is intended to simplify ACL enumeration in AD environments by leveraging the AD PowerShell module that is typically already installed on some hosts, allowing for a stealthy approach. It is also recommended for SysAdmins that want to check their ACL integrity across the domain."
    Write-Host ""
    Write-Host "George-Emilian Onofrei, 2024"
    Write-Host "============================"
    Write-Host ""
    Write-Host "1. Generate Listings (Users, Groups, Computers)"
    Write-Host "2. Execute Queries"
    Write-Host "X. Exit"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-2, X to exit)"
    return $choice
}


###########################################
### LISTS GENERATION MENU
###########################################

function Show-ListingMenu {
    Clear-Host
    Write-Host "Select the listing to generate:"
    Write-Host ""
    Write-Host "1. Generate list of users"
    Write-Host "2. Generate list of groups"
    Write-Host "3. Generate list of computers"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### ACL OBJECT TYPE QUERY MENU
###########################################

function Show-QueryMenu {
    Clear-Host
    Write-Host "Select the type of object whose ACLs you want to check:"
    Write-Host ""
    Write-Host "1. User"
    Write-Host "2. Group"
    Write-Host "3. Computer"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}

###########################################
### ACL GENERAL QUERY TYPE MENU
###########################################

function Show-QueryTypeMenu {
    Clear-Host
    Write-Host "Select the general query type you want to use:"
    Write-Host ""
    Write-Host "1. Specific object as source, object list as target"
    Write-Host "2. Specific object as source, specific object as target"
    Write-Host "3. Object list as source, object list as target (developing...)"
    Write-Host "4. Object list as source, specific object as target (developing...)"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-2, X to go back)"
    return $choice
}


###########################################
### USER ACL LIST QUERY TYPE MENU
###########################################

function Show-UserQueryTypeMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a list:"
    Write-Host ""
    Write-Host "1. Query specific user ACLs against user list"
    Write-Host "2. Query specific user ACLs against group list"
    Write-Host "3. Query specific user ACLs against computer list"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### USER ACL INDIVIDUAL QUERY TYPE MENU
###########################################

function Show-UserIndividualQueryMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a specific object:"
    Write-Host ""
    Write-Host "1. Query specific user ACLs against specific user"
    Write-Host "2. Query specific user ACLs against specific group"
    Write-Host "3. Query specific user ACLs against specific computer"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### GROUP ACL LIST QUERY TYPE MENU
###########################################

function Show-GroupQueryTypeMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a list:"
    Write-Host ""
    Write-Host "1. Query specific group ACLs against user list"
    Write-Host "2. Query specific group ACLs against group list"
    Write-Host "3. Query specific group ACLs against computer list"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### GROUP ACL INDIVIDUAL QUERY TYPE MENU
###########################################

function Show-GroupIndividualQueryMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a specific object:"
    Write-Host ""
    Write-Host "1. Query specific group ACLs against specific user"
    Write-Host "2. Query specific group ACLs against specific group"
    Write-Host "3. Query specific group ACLs against specific computer"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### COMPUTER ACL LIST QUERY TYPE MENU
###########################################

function Show-ComputerQueryTypeMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a list:"
    Write-Host ""
    Write-Host "1. Query specific computer ACLs against user list"
    Write-Host "2. Query specific computer ACLs against group list"
    Write-Host "3. Query specific computer ACLs against computer list"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### COMPUTER ACL INDIVIDUAL QUERY TYPE MENU
###########################################

function Show-ComputerIndividualQueryMenu {
    Clear-Host
    Write-Host "Select the query type you want to use against a specific object:"
    Write-Host ""
    Write-Host "1. Query specific computer ACLs against specific user"
    Write-Host "2. Query specific computer ACLs against specific group"
    Write-Host "3. Query specific computer ACLs against specific computer"
    Write-Host "X. Back"
    Write-Host ""
    $choice = Read-Host "Enter your choice (1-3, X to go back)"
    return $choice
}


###########################################
### LISTS MENU
###########################################

# Función para generar listado de usuarios
function Generate-UserList {
    try {
        Get-ADUser -Filter * | Select-Object -ExpandProperty SamAccountName > ad_users.txt
        Write-Host "User list generated successfully." -ForegroundColor Green
    } catch {
        Write-Host "Error generating user list: $_" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}

# Función para generar listado de grupos
function Generate-GroupList {
    try {
        Get-ADGroup -Filter * | Select-Object -ExpandProperty Name > ad_groups.txt
        Write-Host "Group list generated successfully." -ForegroundColor Green
    } catch {
        Write-Host "Error generating group list: $_" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}

# Función para generar listado de equipos
function Generate-ComputerList {
    try {
        Get-ADComputer -Filter * | Select-Object -ExpandProperty Name > ad_computers.txt
        Write-Host "Computer list generated successfully." -ForegroundColor Green
    } catch {
        Write-Host "Error generating computer list: $_" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### SPECIFIC TO LIST USER QUERIES
###########################################

###########################################
### GET SOURCE MATCH FUNCTION
###########################################

function Get-MatchValue {
    Write-Host ""
    Write-Host "Please enter the source match value (e.g., george -user-, Domain Admins -group-, DC_NY_PROD_01 -computer-):"
    $matchValue = Read-Host "Enter source match value"
    return $matchValue
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A USER LIST
###########################################

function QueryUser-UserACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $userListPath = Join-Path $currentPath "ad_users.txt"
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Users List Path: $userListPath"
    Write-Host ""

    if (Test-Path $userListPath) {
        foreach ($line in [System.IO.File]::ReadLines($userListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADUser $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green
                        
                        # Imprimir la información detallada del ACL
                        Write-Host "SamAccountName: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing $line" -ForegroundColor Red
            }
        }
    } else {
        Write-Host "User list file not found at $userListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A GROUP LIST
###########################################

function QueryUser-GroupACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $groupListPath = Join-Path $currentPath "ad_groups.txt"
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Groups List Path: $groupListPath"
    Write-Host ""

    if (Test-Path $groupListPath) {
        foreach ($line in [System.IO.File]::ReadLines($groupListPath)) { 
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADGroup $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Group: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $line -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$line' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$line'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $line | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$line' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$line'." -ForegroundColor Red
                        }#
                Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing group '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Group list file not found at $groupListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A COMPUTER LIST
###########################################

function QueryUser-ComputerACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $computerListPath = Join-Path $currentPath "ad_computers.txt"
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Computers List Path: $computerListPath"
    Write-Host ""

    if (Test-Path $computerListPath) {
        foreach ($line in [System.IO.File]::ReadLines($computerListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADComputer $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Computer: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing computer '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Computer list file not found at $computerListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### SPECIFIC TO LIST GROUP QUERIES
###########################################

###########################################
### GET SPECIFIC GROUP ACLs AGAINST A USER LIST
###########################################

function QueryGroup-UserACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $userListPath = Join-Path $currentPath "ad_users.txt"
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Users List Path: $userListPath"
    Write-Host ""

    if (Test-Path $userListPath) {
        foreach ($line in [System.IO.File]::ReadLines($userListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADUser $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "SamAccountName: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing user '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "User list file not found at $userListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC GROUP ACLs AGAINST A GROUP LIST
###########################################

function QueryGroup-GroupACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $groupListPath = Join-Path $currentPath "ad_groups.txt"
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Groups List Path: $groupListPath"
    Write-Host ""

    if (Test-Path $groupListPath) {
        foreach ($line in [System.IO.File]::ReadLines($groupListPath)) { 
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADGroup $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.Access.IdentityReference -match $matchValue) {
                        $objectType = $entry.Access.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.Access.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Group: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.Access.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.Access.InheritanceType)"
                        Write-Host "ObjectType: $($entry.Access.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.Access.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.Access.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.Access.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.Access.IdentityReference)"
                        Write-Host "IsInherited: $($entry.Access.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.Access.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.Access.PropagationFlags)"
                        # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $line -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$line' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$line'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $line | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$line' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$line'." -ForegroundColor Red
                        }#
                Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing group '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Group list file not found at $groupListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC GROUP ACLs AGAINST A COMPUTER LIST
###########################################

function QueryGroup-ComputerACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $computerListPath = Join-Path $currentPath "ad_computers.txt"
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Computers List Path: $computerListPath"
    Write-Host ""

    if (Test-Path $computerListPath) {
        foreach ($line in [System.IO.File]::ReadLines($computerListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADComputer $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Computer: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing computer '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Computer list file not found at $computerListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### SPECIFIC TO LIST COMPUTER QUERIES
###########################################

###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A USER LIST
###########################################

function QueryComputer-UserACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $userListPath = Join-Path $currentPath "ad_users.txt"
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Users List Path: $userListPath"
    Write-Host ""

    if (Test-Path $userListPath) {
        foreach ($line in [System.IO.File]::ReadLines($userListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADUser $line -ErrorAction Stop)" | Select-Object -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "SamAccountName: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing user '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "User list file not found at $userListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A GROUP LIST
###########################################

function QueryComputer-GroupACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $groupListPath = Join-Path $currentPath "ad_groups.txt"
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Groups List Path: $groupListPath"
    Write-Host ""

    if (Test-Path $groupListPath) {
        foreach ($line in [System.IO.File]::ReadLines($groupListPath)) { 
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADGroup $line -ErrorAction Stop)" | Select-Object -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Group: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $line -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$line' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$line'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $line | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$line' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$line' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$line'." -ForegroundColor Red
                        }#
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing group '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Group list file not found at $groupListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A COMPUTER LIST
###########################################

function QueryComputer-ComputerACLsList {
    $matchValue = Get-MatchValue
    $currentPath = Get-Location
    $computerListPath = Join-Path $currentPath "ad_computers.txt"
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Current Path: $currentPath"
    Write-Host "Computers List Path: $computerListPath"
    Write-Host ""

    if (Test-Path $computerListPath) {
        foreach ($line in [System.IO.File]::ReadLines($computerListPath)) {
            try {
                $aclEntries = Get-ACL "AD:\$(Get-ADComputer $line -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
                foreach ($entry in $aclEntries) {
                    if ($entry.IdentityReference -match $matchValue) {
                        $objectType = $entry.ObjectType
                        
                        if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                            $resolvedObjectType = "Woaah, that ACL looks nice"
                        } else {
                            try {
                                $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                                $resolvedObjectType = $adObject.Name
                            } catch {
                                $resolvedObjectType = "Unresolved ObjectType: $objectType"
                            }
                        }
                        
                        Write-Host "$line - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                        # Imprimir la información detallada del ACL
                        Write-Host "Computer: $line"
                        Write-Host "Path: $($entry.Path)"
                        Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                        Write-Host "InheritanceType: $($entry.InheritanceType)"
                        Write-Host "ObjectType: $($entry.ObjectType)"
                        Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                        Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                        Write-Host "AccessControlType: $($entry.AccessControlType)"
                        Write-Host "IdentityReference: $($entry.IdentityReference)"
                        Write-Host "IsInherited: $($entry.IsInherited)"
                        Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                        Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                        Write-Host ""
                    }
                }
            } catch {
                Write-Host "Error processing computer '$line'." -ForegroundColor Red
            }
        }
    } else {
        Write-Host "Computer list file not found at $computerListPath, try generating it from main menu" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### SPECIFIC TO SPECIFIC QUERIES
###########################################

###########################################
### GET TARGET MATCH FUNCTION
###########################################

function GetTargetMatchValue {
    Write-Host ""
    Write-Host "Please enter the target match value (e.g., elenita -user-, Remote Desktop Users -group-, DC_MAD_PRE_004 -host-):"
    $targetValue = Read-Host "Enter target match value"
    return $targetValue
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A SPECIFIC USER
###########################################

function QueryUser-UserACLs {
    $matchValue = Get-MatchValue
    $targetUser = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Target Match User: $targetUser"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADUser $targetUser -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetUser - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "SamAccountName: $targetUser"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing user '$targetUser'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A SPECIFIC GROUP
###########################################

function QueryUser-GroupACLs {
    $matchValue = Get-MatchValue
    $targetGroup = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Target Match Group: $targetGroup"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADGroup $targetGroup -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetGroup - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Group: $targetGroup"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $targetGroup -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$targetGroup' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$targetGroup'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $targetGroup | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$targetGroup' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$targetGroup'." -ForegroundColor Red
                        }#
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing group '$targetGroup'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC USER ACLs AGAINST A SPECIFIC COMPUTER
###########################################

function QueryUser-ComputerACLs {
    $matchValue = Get-MatchValue
    $targetComputer = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match User: $matchValue"
    Write-Host "Target Match Computer: $targetComputer"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADComputer $targetComputer -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetComputer - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Computer: $targetComputer"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing computer '$targetComputer'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC GROUP ACLs AGAINST A SPECIFIC USER
###########################################

function QueryGroup-UserACLs {
    $matchValue = Get-MatchValue
    $targetUser = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Target Match User: $targetUser"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADUser $targetUser -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetUser - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "SamAccountName: $targetUser"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing user '$targetUser'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC GROUP ACLs AGAINST A SPECIFIC GROUP
###########################################

function QueryGroup-GroupACLs {
    $matchValue = Get-MatchValue
    $targetGroup = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Target Match Group: $targetGroup"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADGroup $targetGroup -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetGroup - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Group: $targetGroup"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $targetGroup -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$targetGroup' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$targetGroup'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $targetGroup | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$targetGroup' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$targetGroup'." -ForegroundColor Red
                        }#
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing group '$targetGroup'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC GROUP ACLs AGAINST A SPECIFIC COMPUTER
###########################################

function QueryGroup-ComputerACLs {
    $matchValue = Get-MatchValue
    $targetComputer = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Group: $matchValue"
    Write-Host "Target Match Computer: $targetComputer"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADComputer $targetComputer -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetComputer - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Computer: $targetComputer"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing computer '$targetComputer'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A SPECIFIC USER
###########################################

function QueryComputer-UserACLs {
    $matchValue = Get-MatchValue
    $targetUser = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Target Match User: $targetUser"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADUser $targetUser -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetUser - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "SamAccountName: $targetUser"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing user '$targetUser'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A SPECIFIC GROUP
###########################################

function QueryComputer-GroupACLs {
    $matchValue = Get-MatchValue
    $targetGroup = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Target Match Group: $targetGroup"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADGroup $targetGroup -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetGroup - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Group: $targetGroup"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                # Retrieve groups where actual group is member of
                        try {
                            $memberOf = Get-ADGroup -Identity $targetGroup -Properties MemberOf | Select-Object -ExpandProperty MemberOf
                            if ($memberOf) {
                                Write-Host "Group '$targetGroup' is a member of the following groups:" -ForegroundColor Yellow
                                $memberOf | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' is not a member of any other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve membership info for group '$targetGroup'." -ForegroundColor Red
                        }

                        # Retrieve groups who are member of the actual group
                        try {
                            $groupMembers = Get-ADGroupMember -Identity $targetGroup | Where-Object { $_.objectClass -eq 'group' }
                            if ($groupMembers) {
                                Write-Host "Group '$targetGroup' contains the following groups:" -ForegroundColor Yellow
                                $groupMembers | ForEach-Object { Write-Host $_.Name -ForegroundColor Yellow }
                            } else {
                                Write-Host "Group '$targetGroup' does not contain other groups." -ForegroundColor Yellow
                            }
                        } catch {
                            Write-Host "Could not retrieve group members for group '$targetGroup'." -ForegroundColor Red
                        }#
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing group '$targetGroup'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### GET SPECIFIC COMPUTER ACLs AGAINST A SPECIFIC COMPUTER
###########################################

function QueryComputer-ComputerACLs {
    $matchValue = Get-MatchValue
    $targetComputer = GetTargetMatchValue
    Write-Host ""
    Write-Host "Source Match Computer: $matchValue"
    Write-Host "Target Match Computer: $targetComputer"
    Write-Host ""

    try {
        $aclEntries = Get-ACL "AD:\$(Get-ADComputer $targetComputer -ErrorAction Stop)" | Select-Object Path -ExpandProperty Access
        foreach ($entry in $aclEntries) {
            if ($entry.IdentityReference -match $matchValue) {
                $objectType = $entry.ObjectType

                if ($objectType -eq "00000000-0000-0000-0000-000000000000") {
                    $resolvedObjectType = "Woaah, that ACL looks nice"
                } else {
                    try {
                        $adObject = Get-ADObject -SearchBase "CN=Extended-Rights,$((Get-ADRootDSE).ConfigurationNamingContext)" -Filter {ObjectClass -like 'ControlAccessRight'} -Properties * | Select Name,DisplayName,DistinguishedName,rightsGuid | Where-Object {$_.rightsGuid -eq $objectType} -ErrorAction Stop
                        $resolvedObjectType = $adObject.Name
                    } catch {
                        $resolvedObjectType = "Unresolved ObjectType: $objectType"
                    }
                }

                Write-Host "$targetComputer - $($entry.IdentityReference) - $resolvedObjectType - $objectType" -ForegroundColor Green

                # Imprimir la información detallada del ACL
                Write-Host "Computer: $targetComputer"
                Write-Host "Path: $($entry.Path)"
                Write-Host "ActiveDirectoryRights: $($entry.ActiveDirectoryRights)"
                Write-Host "InheritanceType: $($entry.InheritanceType)"
                Write-Host "ObjectType: $($entry.ObjectType)"
                Write-Host "InheritedObjectType: $($entry.InheritedObjectType)"
                Write-Host "ObjectFlags: $($entry.ObjectFlags)"
                Write-Host "AccessControlType: $($entry.AccessControlType)"
                Write-Host "IdentityReference: $($entry.IdentityReference)"
                Write-Host "IsInherited: $($entry.IsInherited)"
                Write-Host "InheritanceFlags: $($entry.InheritanceFlags)"
                Write-Host "PropagationFlags: $($entry.PropagationFlags)"
                Write-Host ""
            }
        }
    } catch {
        Write-Host "Error processing computer '$targetComputer'" -ForegroundColor Red
    }
    Read-Host "Press Enter to continue..."
}


###########################################
### SCRIPT MAIN BODY
###########################################

try {
    Import-Module ActiveDirectory -ErrorAction Stop
    Write-Host "Active Directory module successfully loaded." -ForegroundColor Green
} catch {
    Write-Host "Active Directory module failed to load, be sure that it is installed and try again." -ForegroundColor Red
    Read-Host "Press Enter to continue..."
    exit
}

$scriptRunning = $true
while ($scriptRunning) {
    $mainChoice = Show-MainMenu
    switch ($mainChoice) {
        "1" {
            do {
                $listingChoice = Show-ListingMenu
                switch ($listingChoice) {
                    "1" { Generate-UserList }
                    "2" { Generate-GroupList }
                    "3" { Generate-ComputerList }
                    "X" { break }
                    default { Write-Host "Invalid choice. Please select a number between 1 and 3, or X to go back." -ForegroundColor Red }
                }
            } while ($listingChoice -ne "X")
        }
        "2" {
            do {
                $queryChoice = Show-QueryMenu
                switch ($queryChoice) {
                    "1" { # Query user ACLs
                        $queryType = Show-QueryTypeMenu
                        switch ($queryType) {
                            "1" { # List based query
                                $listQueryType = Show-UserQueryTypeMenu
                                switch ($listQueryType) {
                                    "1" { QueryUser-UserACLsList }
                                    "2" { QueryUser-GroupACLsList }
                                    "3" { QueryUser-ComputerACLsList }
                                }
                            }
                            "2" { # Individual query
                                $individualQueryType = Show-UserIndividualQueryMenu
                                switch ($individualQueryType) {
                                    "1" { QueryUser-UserACLs }
                                    "2" { QueryUser-GroupACLs }
                                    "3" { QueryUser-ComputerACLs }
                                }
                            }
                            "X" { break }
                        }
                    }
                    "2" { # Query group ACLs
                        $queryType = Show-QueryTypeMenu
                        switch ($queryType) {
                            "1" { # List based query
                                $listQueryType = Show-GroupQueryTypeMenu
                                switch ($listQueryType) {
                                    "1" { QueryGroup-UserACLsList }
                                    "2" { QueryGroup-GroupACLsList }
                                    "3" { QueryGroup-ComputerACLsList }
                                }
                            }
                            "2" { # Individual query
                                $individualQueryType = Show-GroupIndividualQueryMenu
                                switch ($individualQueryType) {
                                    "1" { QueryGroup-UserACLs }
                                    "2" { QueryGroup-GroupACLs }
                                    "3" { QueryGroup-ComputerACLs }
                                }
                            }
                            "X" { break }
                        }
                    }
                    "3" { # Query computer ACLs
                        $queryType = Show-QueryTypeMenu
                        switch ($queryType) {
                            "1" { # List based query
                                $listQueryType = Show-ComputerQueryTypeMenu
                                switch ($listQueryType) {
                                    "1" { QueryComputer-UserACLsList }
                                    "2" { QueryComputer-GroupACLsList }
                                    "3" { QueryComputer-ComputerACLsList }
                                }
                            }
                            "2" { # Individual query
                                $individualQueryType = Show-ComputerIndividualQueryMenu
                                switch ($individualQueryType) {
                                    "1" { QueryComputer-UserACLs }
                                    "2" { QueryComputer-GroupACLs }
                                    "3" { QueryComputer-ComputerACLs }
                                }
                            }
                            "X" { break }
                        }
                    }
                    "X" { break }
                    default { Write-Host "Invalid choice. Please select a number between 1 and 3, or X to go back." -ForegroundColor Red }
                }
            } while ($queryChoice -ne "X")
        }
        "X" {
            $scriptRunning = $false
            Write-Host "Exiting script..." -ForegroundColor Green
        }
        default { Write-Host "Invalid choice. Please select 1, 2, or X to exit." -ForegroundColor Red }
    }
}

