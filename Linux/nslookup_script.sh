nslookup script

#! /bin/bash

cd ~/Documents/NSLOOKUP ;

echo "$1" > $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup info" >> $1nslookup.txt ;
echo "Name Server Lookup searches (DNS) Domain Name System records of any domain." >> $1nslookup.txt ;
nslookup $1 >> $1nslookup.txt ;
sleep 3  ;
echo "End of nslookup info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=A info" >> $1nslookup.txt ;
echo "A specifies a computer's IP address." >> $1nslookup.txt ;
nslookup -type=A $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=A info"  >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=ANY info" >> $1nslookup.txt ;
echo "ANY also specifies a computer's IP address." >> $1nslookup.txt ;
nslookup -type=ANY $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=ANY info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=CNAME info" >> $1nslookup.txt ;
echo "CNAME specifies a cannonical name for an alias." >> $1nslookup.txt ;
nslookup -type=CNAME $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup-tpye=CNAME info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=GID info" >> $1nslookup.txt ;
echo "GID specifies a group identifier of a group name." >> $1nslookup.txt ;
nslookup -type=GID $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=GID info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=HINFO info" >> $1nslookup.txt ;
echo "HINFO specifies a computer's CPU and type of operating system." >> $1nslookup.txt ;
nslookup -type=HINFO $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=HINFO info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=MB info" >> $1nslookup.txt ;
echo "MB specifies a mailbox domain name" >> $1nslookup.txt ;
nslookup -type=MB info $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=MB info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=MG info" >> $1nslookup.txt ;
echo "MG specifies a mail group member." >> $1nslookup.txt ;
nslookup -type=MG $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=MG info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=MINFO info" >> $1nslookup.txt ;
echo "MINFO specifies mailbox or mail list information." >> $1nslookup.txt ;
nslookup -type=MINFO $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=MINFO info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=MR info" >> $1nslookup.txt ;
echo "MR specifies the mail rename domain name." >> $1nslookup.txt ;
nslookup -type=MR $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=MR info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=MX info" >> $1nslookup.txt ;
echo "MX specifies the mail exchanger." >> $1nslookup.txt ;
nslookup -type=MX $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=MX info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -t>> $1nslookup.txtype=NS info" >> $1nslookup.txt ;
echo "NS specifies a DNS name server for the named zone." >> $1nslookup.txt ;
nslookup -type=NS $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=NS info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;


echo "nslookup -type=PTR info" >> $1nslookup.txt ;
echo "PTR specifies a computer name if the query is an IP address; otherwise,
specifies the pointer to other information." >> $1nslookup.txt ;
nslookup -type=PTR $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=PTR info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=SOA info" >> $1nslookup.txt ;
echo "SOA specifies the start-of-authority for a DNS zone." >> $1nslookup.txt ;
nslookup -type=SOA $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=SOA info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;


echo "nslookup -type=TXT info" >> $1nslookup.txt ;
echo "TXT specifies the text information." >> $1nslookup.txt ;
nslookup -type=TXT $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=TXT info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;

echo "nslookup -type=UID info" >> $1nslookup.txt ;
echo "UID specifies the user idientifier." >> $1nslookup.txt ;
nslookup -type=UID $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=UID info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;
echo "nslookup -type=UINFO info" >> $1nslookup.txt ;
echo "UIINFO specifies the user information." >> $1nslookup.txt ;
nslookup -type=UINFO $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=UINFO info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt ;
>> $1nslookup.txt
echo "nslookup -type=WKS info" >> $1nslookup.txt ;
echo "WKS describes a well-known service." >> $1nslookup.txt ;
nslookup -type=WKS $1 >> $1nslookup.txt ;
sleep 3 ;
echo "End of nslookup -type=WKS info" >> $1nslookup.txt ;
echo "________________________________________________________________________________" >> $1nslookup.txt


