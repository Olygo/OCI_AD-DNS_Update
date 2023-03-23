{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww18200\viewh17060\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf2 #ps1_sysnative\
\
# set the ip address of your domain controller\
$DCip = "10.0.0.100\'94\
\
echo " LIST & GET ETHERNET INTERFACE" > c:\\cloudinit.log\
$ETH = Get-NetIPInterface -AddressFamily IPv4 | Out-String -Stream | Select-String  "Ethernet"\
echo $ETH >> c:\\cloudinit.log\
\
echo "REMOVE FIRST BLANK LINE" >> c:\\cloudinit.log\
$ETH = $ETH -replace [Environment]::NewLine,"";\
echo $ETH >> c:\\cloudinit.log\
\
echo "GET THE ETHERNET ID" >> c:\\cloudinit.log\
$ETH = $ETH.substring(0,2)\
echo $ETH >> c:\\cloudinit.log\
\
echo "SET DNS ENTRY USING DC\'94 >> c:\\cloudinit.log\
Set-DnsClientServerAddress -InterfaceIndex $ETH -ServerAddresses $DCip -PassThru >> c:\\cloudinit.log\
\
echo "CHECK CONFIG" >> c:\\cloudinit.log\
ipconfig /all | Select-String -Pattern "DNS" >> c:\\cloudinit.log\
\
\
####### CHECK AD CONNECTIVITY after reboot\
# nltest.exe /sc_query:YOUR_DOMAIN.local\
# nltest.exe /dsgetdc:DC_NAME\
# dcdiag /TEST:DNS /V /E /S:$ADIP\
# gpupdate /force \
}