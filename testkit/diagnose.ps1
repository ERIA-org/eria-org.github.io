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


### Test remote (ISP - Linknet)
'2. REMOTE TESTS (ISP - LINKNET)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'2-1 Test ping connectivity to www.linknet.co.id' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'2-2 Test ping connectivity to www.linknet.co.id with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.linknet.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'2-3 Test TCP connectivity to www.linknet.co.id' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt



### Test remote (ISP - Astinet)
'3. REMOTE TESTS (ISP - ASTINET)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'3-1 Test ping connectivity to www.telkom.co.id' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'3-2 Test ping connectivity to www.telkom.co.id with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.telkom.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'3-3 Test TCP connectivity to www.telkom.co.id' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

### Test remote (ISP - Biznet)
'4. REMOTE TESTS (ISP - BIZNET)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'4-1 Test ping connectivity to www.biznetnetworks.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'4-2 Test ping connectivity to www.biznetnetworks.com with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.biznetnetworks.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'4-3 Test TCP connectivity to www.biznetnetworks.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt


### Test remote (domestic)
'5. REMOTE TESTS (DOMESTIC)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'5-1 Test ping connectivity to www.detik.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'5-2 Test ping connectivity to www.detik.com with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -ComputerName "www.detik.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'5-3 Test TCP connectivity to www.detik.com' >> $ScriptPath\diagnose.txt
Test-NetConnection -Port 80 -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

### Test remote (global)
'6. REMOTE TESTS (GLOBAL)' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt
'6-1 Test ping connectivity to Microsoft' >> $ScriptPath\diagnose.txt
Test-NetConnection -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt 
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt

'6-2 Test ping connectivity to Microsoft with routing diagnosis' >> $ScriptPath\diagnose.txt
Test-NetConnection -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\diagnose.txt
'---------------------------------------------' >> $ScriptPath\diagnose.txt
'' >> $ScriptPath\diagnose.txt 

'6-3 Test TCP connectivity to Microsoft' >> $ScriptPath\diagnose.txt
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