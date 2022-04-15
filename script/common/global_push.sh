#!/usr/bin/env sh
#!/bin/bash

# chmod +xrw ./script/common/global_push.sh

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

echo "\n\n<Automated Execution Command 🕐  $(date +%00000:%S)>:  \$>_  📡   Update Information  🔍"
git add . 
echo "\n"

echo "\n<Automated Execution Command 🕑  $(date +%00000:%S)>:  \$_>  💬   Commit Information  📲\n"
git commit -S -a -m "Automation Build - Distributed APT-X4OYP63YCV85E9K (REMOTELY NETWORK API)"
echo "\n"

echo "\n<Automated Execution Command 🕒  $(date +%00000:%S)>:  \$>_  📮   Push 'Dev' Branch  📤\n"
git push --set-upstream origin dev
#sleep 2
echo "\n"

echo "\n<Automated Execution Command 🕓  $(date +%00000:%S)>:  \$_>  🌈   Checkout 'Main' Branch  🕹\n"
git checkout main
#sleep 2
echo "\n"

echo "\n<Automated Execution Command 🕔  $(date +%00000:%S)>:  \$>_  📬   Merge 'Dev' Branch  📤 \n"
git merge dev
echo "\n"

echo "\n<Automated Execution Command 🕕  $(date +%00000:%S)>:  \$_>  🚀   Push 'Main' Branch  🏆\n"
git push origin main
#sleep 2
echo "\n"

echo "\n<Automated Execution Command 🕖  $(date +%00000:%S)>:  \$>_  🤫   Checkout 'Dev' Branch  🏁\n"
git checkout dev

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