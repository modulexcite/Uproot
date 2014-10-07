$FilePath = 'C:\Users\assessor\Desktop\'

#PROCESS_CREATION
$Name = 'PROCESS_CREATION'
$Query = "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_Process'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Name% Process Created|ComputerName: %TargetInstance.CSName%, Name: %TargetInstance.Name%, ProcessId: %TargetInstance.ProcessId%, ParentProcessId: %TargetInstance.ParentProcessId%, Session: %TargetInstance.SessionId%, Path: %TargetInstance.ExecutablePath%, CommandLine: %TargetInstance.CommandLine%"

Add-Signature -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"

#PROCESS_DELETION
$Name = 'PROCESS_DELETION'
$Query = "SELECT * FROM __InstanceDeletionEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_Process'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Name% Process Deleted|ComputerName: %TargetInstance.CSName%, Name: %TargetInstance.Name%, ProcessId: %TargetInstance.ProcessId%, ParentProcessId: %TargetInstance.ParentProcessId%, Session: %TargetInstance.SessionId%, Path: %TargetInstance.ExecutablePath%, CommandLine: %TargetInstance.CommandLine%"

Add-Signature -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"