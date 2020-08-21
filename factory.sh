######################################################
#         ______         _                           #
#        |  ____|       | |                          #
#        | |__ __ _  ___| |_ ___  _ __ _   _         #
#        |  __/ _` |/ __| __/ _ \| '__| | | |        #
#        | | | (_| | (__| || (_) | |  | |_| |        #
#        |_|  \__,_|\___|\__\___/|_|   \__, |        #
#                                       __/ |        #
#                                      |___/         #
######################################################
#    This script have been crate by HDgaming5758     #
#          so plase if you edit this script          #
#    be respectfule of my work and let my name ;)    #
#	     											 #
#												     #
#                     Thank you                      #
######################################################
#                                                    #
#                   Variable panel                   #
#                                                    #
default=install                                      #
version="Your version"                               #
name="Your logicelle name"                           #
directory=/etc                                       #
dirname=yourfilename                                 #
filename=yourfile.txt                                #
exefilename=factory.sh                               #
bin=/bin                                             #
newexefilename="yourfilename"                        ################
finelmsg="Installation complet, do 'yourfilename -h' for the help." #
#####################################################################
error()
{
	echo $blank
	echo "[E] $1"
	echo $blank
	echo "[E] Error code '$2'"
	exit $2
}
help()
{
	logo
	echo $blank
	echo "Factory v.0.3 by HDgaming5758"
	echo $blank
	echo "-[*]- Help menu -[*]-"
	echo $blank
	echo "Use -vmap to show all the varable by défault in factory"
	echo $blank
	echo "Use -ui for unistalling $name"
	echo $blank
	echo "-[*]- $name -[*]-"
	echo $blank
	echo "/Put your script parameter/"
	echo $blank
}
logo()
{
	echo " __     __                _                   "
	echo " \ \   / /               | |                  "
	echo "  \ \_/ /__  _   _ _ __  | | ___   __ _  ___  "
	echo "   \   / _ \| | | | '__| | |/ _ \ / _\` |/ _ \ "
	echo "    | | (_) | |_| | |    | | (_) | (_| | (_) |"
	echo "    |_|\___/ \__,_|_|    |_|\___/ \__, |\___/ "
	echo "                                   __/ |       $version"
	echo "                                  |___/       "
}
variablemap()
{
	logo
	echo $blank
	echo "Factory v.0.3 by HDgaming5758"
	echo $blank
	echo "-[*]- Variable map -[*]-"
	echo $blank
	echo "Name of the script : '$name'"
	echo $blank
	echo "Default menu : '$default'"
	echo $blank
	echo "$name version : '$version'"
	echo $blank
}
dircheck()
{
	if [ -d $1 ]
	then
		echo "[+] Ok"
	else
		error "A problem is come when the création of '$dirname'"
	fi
}
filecheck()
{
	if [ -e $1 ]
	then
		echo "[+] Ok"
	else
		error "A problem is come when the création of '$2'"
	fi
}
install()
{
	logo
	echo $blank
	echo "-[*]- Installtion $name -[*]-"
	echo $blank
	echo "[*] Création of '$filename'"
	mkdir $directory/$dirname
	echo $blank
	dircheck $directory/$dirname
	echo $blank
	echo "[*] Copy of '$filename' in '$directory/$dirname'"
	cp $filename $directory/$dirname/$filename
	echo $blank
	filecheck $directory/$dirname/$filename $filename
	echo $blank
	echo "[*] Copy of '$exefilename' in '$bin' under the name '$newexefilename'"
	cp $exefilename $bin/$newexefilename
	echo $blank
	filecheck $bin/$newexefilename $exefilename
	echo "[+*+] $finelmsg [+*+]"
	exit 0
}
uninstall()
{
	logo
	echo $blank
	echo "-[*]- Uninstalltion $name -[*]-"
	echo $blank
	echo "[*] Deleting '$filename'"
	rm -rf $directory/$dirname
	echo $blank
	echo "[*] Deleting '$newexefilename' in '$bin'"
	rm $bin/$newexefilename
	echo $blank
	echo "[+*+] Uninstalltion complette [+*+]"
	exit 0
}
case $1 in
	-ui)
	uninstall
	;;
	$blank)
	$default
	;;
	-vmap)
	variablemap
	;;
	*)
	help
	;;
esac