$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition

'Test date:' > $ScriptPath\result.pdf
Get-Date >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'IP info:' >> $ScriptPath\result.pdf
Invoke-RestMethod -Method Get -Uri "http://ip-api.com/json/"  >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'PC info:' >> $ScriptPath\result.pdf
Get-ComputerInfo  >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'CPU usage info:' >> $ScriptPath\result.pdf
(Get-WmiObject -Class win32_processor -ErrorAction Stop | Measure-Object -Property LoadPercentage -Average | Select-Object Average).Average  >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'RAM usage:' >> $ScriptPath\result.pdf
Get-WmiObject win32_OperatingSystem |%{"Total Physical Memory: {0}KB`nFree Physical Memory : {1}KB`nTotal Virtual Memory : {2}KB`nFree Virtual Memory  : {3}KB" -f $_.totalvisiblememorysize, $_.freephysicalmemory, $_.totalvirtualmemorysize, $_.freevirtualmemory}   >> $ScriptPath\result.pdf

'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf

### Test local
'1. LOCAL TESTS' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'1-1 Test ping connectivity to the router' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'1-2 Test ping connectivity to the router with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "192.168.0.1" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'1-3 Test TCP connectivity to the router' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -ComputerName "192.168.0.1" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf


### Test remote (ISP - Linknet)
'2. REMOTE TESTS (ISP - LINKNET)' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'2-1 Test ping connectivity to www.linknet.co.id' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'2-2 Test ping connectivity to www.linknet.co.id with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.linknet.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'2-3 Test TCP connectivity to www.linknet.co.id' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -ComputerName "www.linknet.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf



### Test remote (ISP - Astinet)
'3. REMOTE TESTS (ISP - ASTINET)' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'3-1 Test ping connectivity to www.telkom.co.id' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'3-2 Test ping connectivity to www.telkom.co.id with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.telkom.co.id" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'3-3 Test TCP connectivity to www.telkom.co.id' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -ComputerName "www.telkom.co.id" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf

### Test remote (ISP - Biznet)
'4. REMOTE TESTS (ISP - BIZNET)' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'4-1 Test ping connectivity to www.biznetnetworks.com' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'4-2 Test ping connectivity to www.biznetnetworks.com with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.biznetnetworks.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'4-3 Test TCP connectivity to www.biznetnetworks.com' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -ComputerName "www.biznetnetworks.com" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf


### Test remote (domestic)
'5. REMOTE TESTS (DOMESTIC)' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'5-1 Test ping connectivity to www.detik.com' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'5-2 Test ping connectivity to www.detik.com with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -ComputerName "www.detik.com" -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'5-3 Test TCP connectivity to www.detik.com' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -ComputerName "www.detik.com" -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf

### Test remote (global)
'6. REMOTE TESTS (GLOBAL)' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf
'6-1 Test ping connectivity to Microsoft' >> $ScriptPath\result.pdf
Test-NetConnection -InformationLevel "Detailed" >> $ScriptPath\result.pdf 
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf

'6-2 Test ping connectivity to Microsoft with routing diagnosis' >> $ScriptPath\result.pdf
Test-NetConnection -DiagnoseRouting -InformationLevel "Detailed" >> $ScriptPath\result.pdf
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf 

'6-3 Test TCP connectivity to Microsoft' >> $ScriptPath\result.pdf
Test-NetConnection -Port 80 -InformationLevel "Detailed" >> $ScriptPath\result.pdf 
'---------------------------------------------' >> $ScriptPath\result.pdf
'' >> $ScriptPath\result.pdf



# If running in the console, wait for input before closing.
#if ($Host.Name -eq "ConsoleHost")
#{
#    Write-Host "Press any key to continue..."
#    $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
#    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
#}