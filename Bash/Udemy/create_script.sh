#! /bin/bash

read -p "What do you want to give to the executable Script file? " name

touch ${name}

echo " #! /bin/bash " >> ${name}
echo " ###### Automatically Created Script ####### " >> ${name}
echo " pwd" >> ${name}
echo " cal " >> ${name}


chmod +x ${name}

echo " DONE "
