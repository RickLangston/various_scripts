!/bin/bash
# Server maint script
# for testing a centos server for updates and emailing if found

EML=youremail@domain.com
yum check-update 2> /dev/null

if [ $? -eq 100 ]
        then
         echo "updates ready"
         yum check-update |mailx $EML
else
     echo "NO updates ready"

fi
