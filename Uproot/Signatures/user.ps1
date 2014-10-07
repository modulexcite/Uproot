$FilePath = 'C:\Users\assessor\Desktop\'

#USER_CREATION
$Name = 'USER_CREATION'
$Query = "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_UserAccount'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Domain%\%TargetInstance.FullName% User Created|ComputerName: %TargetInstance.__SERVER%, UserName: %TargetInstance.FullName%, Domain: %TargetInstance.Domain%, IsAccountLocal: %TargetInstance.LocalAccount%, SID: %TargetInstance.SID%"

Add-Signature -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"

#USER_DELETION
$Name = 'USER_DELETION'
$Query = "SELECT * FROM __InstanceDeletionEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_UserAccount'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Domain%\%TargetInstance.FullName% User Deleted|ComputerName: %TargetInstance.__SERVER%, UserName: %TargetInstance.FullName%, Domain: %TargetInstance.Domain%, IsAccountLocal: %TargetInstance.LocalAccount%, SID: %TargetInstance.SID%"

Add-Signature -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"