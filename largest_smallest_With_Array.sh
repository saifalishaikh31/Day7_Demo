
for ((index=0; index<10; index++))
do
	array[index]=$(($RANDOM%900+100));
done
echo "10 Random 3 Digit number are as follow :"
echo  ${array[@]};


LARGEST=${array[0]};
SMALLEST=${array[0]};
for i in ${!array[@]}
do
	if [ $LARGEST -lt ${array[i]} ]
	then
	SEC_LARGEST=$LARGEST;
	LARGEST=${array[i]};

	elif [[ $SEC_LARGEST -lt ${array[i]} ]]
	then
		SEC_LARGEST=${array[i]};
	fi

	if [[ $SMALLEST -gt ${array[i]} ]]
        then
        SEC_SMALLEST=$SMALLEST;
        SMALLEST=${array[i]};

        elif [[ $SEC_SMALLEST -gt ${array[i]} ]]
        then
                SEC_SMALLEST=${array[i]};
        fi

done

echo "The Second Largest Element is : $SEC_LARGEST";
echo "The Second Smallest Element is : $SEC_SMALLEST";
