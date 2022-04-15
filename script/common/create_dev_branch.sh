#!/usr/bin/env sh
#!/bin/bash

# chmod +xrw ./script/common/create_dev_branch.sh

echo "
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│									   	 		  		   	    │
│	WELCOME TO                                                                                                          │
│									   	 		  		   	    │
│                █████╗ ███╗   ██╗ ██████╗ ███╗   ██╗    ███████╗██╗   ██╗███████╗       ██╗███╗   ██╗ ██████╗              │
│               ██╔══██╗████╗  ██║██╔═══██╗████╗  ██║    ██╔════╝╚██╗ ██╔╝██╔════╝       ██║████╗  ██║██╔════╝              │
│               ███████║██╔██╗ ██║██║   ██║██╔██╗ ██║    ███████╗ ╚████╔╝ ███████╗       ██║██╔██╗ ██║██║                   │
│               ██╔══██║██║╚██╗██║██║   ██║██║╚██╗██║    ╚════██║  ╚██╔╝  ╚════██║       ██║██║╚██╗██║██║                   │
│               ██║  ██║██║ ╚████║╚██████╔╝██║ ╚████║    ███████║   ██║   ███████║▄█╗    ██║██║ ╚████║╚██████╗██╗           │
│               ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝    ╚══════╝   ╚═╝   ╚══════╝╚═╝    ╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝           │
│                                                                                                                           │
│									   	 		  		   	    │
│                  	                     -- WE ARE ANON SYS. WE ARE LEGION. --                                          │
│									   	 		  		   	    │
│                     :: DISTRIBUTED REMOTELY NETWORK API FOR ANON SYS, INC. - VERSION (27.2.5-SNAPSHOT) ::                 │
│									   	 		  		   	    │
└───────────────────────────────────────────── (START AUTOMATED BUILD SERVICE) ─────────────────────────────────────────────┘
"

#echo "\n\n<Automated Execution Command 🕐  $(date +%00000:%S)>:  \$>_  🔐   UnSet Proxy -> HTTP  🔓 "
#git config --global --unset http.proxy
#sleep 1
#echo "\n"

#echo "\n<Automated Execution Command 🕑  $(date +%00000:%S)>:  \$_>  🔐   UnSet Proxy -> HTTPS  🔓  \n"
#git config --global --unset https.proxy
#sleep 2
#echo "\n"

echo "\n\n<Automated Execution Command 🕐  $(date +%00000:%S)>:  \$>_  ⚠️   Create Locally And Switch To The 'Dev' Branch  ✅  "
git checkout -b dev
sleep 1
echo "\n"

echo "\n<Automated Execution Command 🕑  $(date +%00000:%S)>:  \$_>  💬   Submit The Local 'Dev' Branch To The Remote Bran  📲\n"
git add .
git commit -m "Success Build - Distributed APT-X4OYP63YCV85E9K (REMOTELY NETWORK API) - Dev Branch"
sleep 2
echo "\n"

echo "\n<Automated Execution Command 🕒  $(date +%00000:%S)>:  \$>_  📮   Synchronize The Local 'Dev' Branch To The Remote Warehouse  📤\n"
git push origin dev
sleep 2

echo "\n\n -- WE ARE ANON SYS. WE ARE LEGION. --"

echo "
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│									   	 		  		   	    │
│	WELCOME TO                                                                                                          │
│									   	 		  		   	    │
│                █████╗ ███╗   ██╗ ██████╗ ███╗   ██╗    ███████╗██╗   ██╗███████╗       ██╗███╗   ██╗ ██████╗              │
│               ██╔══██╗████╗  ██║██╔═══██╗████╗  ██║    ██╔════╝╚██╗ ██╔╝██╔════╝       ██║████╗  ██║██╔════╝              │
│               ███████║██╔██╗ ██║██║   ██║██╔██╗ ██║    ███████╗ ╚████╔╝ ███████╗       ██║██╔██╗ ██║██║                   │
│               ██╔══██║██║╚██╗██║██║   ██║██║╚██╗██║    ╚════██║  ╚██╔╝  ╚════██║       ██║██║╚██╗██║██║                   │
│               ██║  ██║██║ ╚████║╚██████╔╝██║ ╚████║    ███████║   ██║   ███████║▄█╗    ██║██║ ╚████║╚██████╗██╗           │
│               ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝    ╚══════╝   ╚═╝   ╚══════╝╚═╝    ╚═╝╚═╝  ╚═══╝ ╚═════╝╚═╝           │
│                                                                                                                           │
│									   	 		  		   	    │
│                  	                     -- WE ARE ANON SYS. WE ARE LEGION. --                                          │
│									   	 		  		   	    │
│                     :: DISTRIBUTED REMOTELY NETWORK API FOR ANON SYS, INC. - VERSION (27.2.5-SNAPSHOT) ::                 │
│									   	 		  		   	    │
└────────────────────────────────────────────── (END AUTOMATED BUILD SERVICE) ──────────────────────────────────────────────┘
"