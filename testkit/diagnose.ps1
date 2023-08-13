$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition

### Test local
'1. LOCAL TESTS' > $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'1-1 Test ping connectivity to ERIA router' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'1-2 Test ping connectivity to ERIA router with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "192.168.0.1" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'1-3 Test TCP connectivity to ERIA router' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

### Test remote (domestic)
'2. REMOTE TESTS (DOMESTIC)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'2-1 Test ping connectivity to www.detik.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'2-2 Test ping connectivity to www.detik.com with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "192.168.0.1" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'2-3 Test TCP connectivity to www.detik.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

### Test remote (global)
'3. REMOTE TESTS (GLOBAL)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'3-1 Test ping connectivity to Microsoft' >> $ScriptPath\diagnose.txt
Test-NetConnection -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt 
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

'3-2 Test ping connectivity to Microsoft with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'3-3 Test TCP connectivity to Microsoft' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt 
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt



# If running in the console, wait for input before closing.
#if ($Host.Name -eq "ConsoleHost")
#{
#    Write-Host "Press any key to continue..."
#    $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
#    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
#}