#! /bin/bash


for i in $(find . -type d);
do

    if [ "$i" != "./hot-folder" ]; then

    echo "*********** FOLDER: $i *************"

    for myfile in $i/* ;
    do
        if [ -f "$myfile" ]; then
            echo "the file inside is: $myfile"

            # DO WHATEVER YOU WANT HERE..
            #(BUT BE CAREFUL!!!) FOR EX: WE CAN DELETE, CREATE, FETCH....
            check=$(grep -ni "if" "$myfile")
		    if [ -z "$check" ]; then
			    echo "EMPTY"
		    else
			    echo "HOT FILE! FOUND !"

                name_f=$(basename $myfile)
                cp "$myfile" ./hot-folder
                echo " " >> hot-folder/"$name_f"
                echo "********" >> hot-folder/"$name_f"
                echo "$check" >> hot-folder/"$name_f"
		    fi
        fi
        
    done
    echo " ------------------ "
    echo " "
    fi

done
