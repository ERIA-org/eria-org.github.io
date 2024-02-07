$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition

'Test date:' > $ScriptPath\result.txt
Get-Date >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'IP info:' >> $ScriptPath\result.txt
Invoke-RestMethod -Method Get -Uri "http://ip-api.com/json/"  >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'PC info:' >> $ScriptPath\result.txt
Get-ComputerInfo  >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'CPU usage info:' >> $ScriptPath\result.txt
(Get-WmiObject -Class win32_processor -ErrorAction Stop | Measure-Object -Property LoadPercentage -Average | Select-Object Average).Average  >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'RAM usage:' >> $ScriptPath\result.txt
Get-WmiObject win32_OperatingSystem |%{"Total Physical Memory: {0}KB`nFree Physical Memory : {1}KB`nTotal Virtual Memory : {2}KB`nFree Virtual Memory  : {3}KB" -f $_.totalvisiblememorysize, $_.freephysicalmemory, $_.totalvirtualmemorysize, $_.freevirtualmemory}   >> $ScriptPath\result.txt

'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt

### Test local
'1. LOCAL TESTS' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'1-1 Test ping connectivity to the router' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'1-2 Test ping connectivity to the router with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "192.168.0.1" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'1-3 Test TCP connectivity to the router' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt


### Test remote (ISP - Linknet)
'2. REMOTE TESTS (ISP - LINKNET)' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'2-1 Test ping connectivity to www.linknet.co.id' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'2-2 Test ping connectivity to www.linknet.co.id with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.linknet.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'2-3 Test TCP connectivity to www.linknet.co.id' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt



### Test remote (ISP - Astinet)
'3. REMOTE TESTS (ISP - ASTINET)' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'3-1 Test ping connectivity to www.telkom.co.id' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'3-2 Test ping connectivity to www.telkom.co.id with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.telkom.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'3-3 Test TCP connectivity to www.telkom.co.id' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt

### Test remote (ISP - Biznet)
'4. REMOTE TESTS (ISP - BIZNET)' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'4-1 Test ping connectivity to www.biznetnetworks.com' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'4-2 Test ping connectivity to www.biznetnetworks.com with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.biznetnetworks.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'4-3 Test TCP connectivity to www.biznetnetworks.com' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt


### Test remote (domestic)
'5. REMOTE TESTS (DOMESTIC)' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'5-1 Test ping connectivity to www.detik.com' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'5-2 Test ping connectivity to www.detik.com with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -ComputerName "www.detik.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'5-3 Test TCP connectivity to www.detik.com' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt

### Test remote (global)
'6. REMOTE TESTS (GLOBAL)' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt
'6-1 Test ping connectivity to Microsoft' >> $ScriptPath\result.txt
Test-NetConnection -InformationLevel "Detailed" >> $ScriptPath\result.txt 
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt

'6-2 Test ping connectivity to Microsoft with routing diagnosis' >> $ScriptPath\result.txt
Test-NetConnection -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.txt
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt 

'6-3 Test TCP connectivity to Microsoft' >> $ScriptPath\result.txt
Test-NetConnection -Port 80 -InformationLevel "Detailed" >> $ScriptPath\result.txt 
'---------------------------------------------' >> $ScriptPath\result.txt
'' >> $ScriptPath\result.txt



# If running in the console, wait for input before closing.
#if ($Host.Name -eq "ConsoleHost")
#{
#    Write-Host "Press any key to continue..."
#    $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
#    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
#}