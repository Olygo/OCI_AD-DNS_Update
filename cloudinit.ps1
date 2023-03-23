#ps1_sysnative

# set the ip address of your domain controller
$DCip = "10.0.0.100"

Write-Output " LIST & GET ETHERNET INTERFACE" > c:\cloudinit.log
$ETH = Get-NetIPInterface -AddressFamily IPv4 | Out-String -Stream | Select-String  "Ethernet"

Write-Output $ETH >> c:\cloudinit.log
Write-Output "REMOVE FIRST BLANK LINE" >> c:\cloudinit.log
$ETH = $ETH -replace [Environment]::NewLine,"";

Write-Output $ETH >> c:\cloudinit.log
Write-Output "GET THE ETHERNET ID" >> c:\cloudinit.log
$ETH = $ETH.substring(0,2)

Write-Output $ETH >> c:\cloudinit.log
Write-Output "SET DNS ENTRY USING DC” >> c:\cloudinit.log
Set-DnsClientServerAddress -InterfaceIndex $ETH -ServerAddresses $DCip -PassThru >> c:\cloudinit.log

Write-Output "CHECK CONFIG" >> c:\cloudinit.log
ipconfig /all | Select-String -Pattern "DNS" >> c:\cloudinit.log


####### CHECK AD CONNECTIVITY after reboot
# nltest.exe /sc_query:YOUR_DC_NAME.local
# nltest.exe /dsgetdc:YOUR_DC_NAME
# dcdiag /TEST:DNS /V /E /S:YOUR_DC_IP
# gpupdate /force 
