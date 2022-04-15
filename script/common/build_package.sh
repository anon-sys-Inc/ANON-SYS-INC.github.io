#!/usr/bin/env sh
#!/bin/bash

# chmod +xrw ./script/common/build_package.sh

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

echo "\n\n<Automated Execution Command 🕐  $(date +%00000:%S)>:  \$>_  ⚠️   Please Enter The Build Version  ✅  "
read -p "⚠️  Tips 1. _> Please Enter The Build Version: e.g. X.X.X：" parameter_v1
#sleep 3
echo "\n"

echo "\n\n<Automated Execution Command 🕐  $(date +%00000:%S)>:  \$>_  ⚠️   Please Enter A Description Of The Build Version Info  ✅  "
echo "⚠️  Tips 2. _> XXXX- Release  x.x.x-Beat.x | Time : xxxx/xxx-xx/xx:xx"
read -p "⚠️  Tips 2. _> Please Enter A Description Of The Build Version Information: e.g. Update XXX：" parameter_v2
#sleep 3
echo "\n"

echo "\n<Automated Execution Command 🕑  $(date +%00000:%S)>:  \$_>  💬   Creating Package Description Information  📲\n"
git tag -u "7FB56C9F0D98D92C7A0CD812F84171596D5D9101" -s $parameter_v1 -m "$parameter_v2"
#sleep 3
echo "\n<Automated Execution Command 🕑  $(date +%00000:%S)>:  \$_>  💬   Information Summary  💬\n"
echo "⚠️  Tips 3. _> Repositories Version => $parameter_v1 & Information Summary => $parameter_v2"
echo "\n"

echo "\n<Automated Execution Command 🕒  $(date +%00000:%S)>:  \$>_  📮   Build Package & Push Remotely  📤\n"
git push origin $parameter_v1
#sleep 2

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