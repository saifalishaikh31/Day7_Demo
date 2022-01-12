range=100;

for ((i=0;i<$range;i++))
do
	num=$i;
	index=0;
	counter=0;
	while [ $num -ne 0 ]
	do
	   array[index]=$((num%10));
	   num=$(($num/10));
	   ((index++));
	done

		for((j=0;j<$((${#array[@]}-1));j++))
		do
			for((k=$(($j+1));k<${#array[@]};k++))
			do
		    	   if [ ${array[j]} -eq ${array[k]} ]
		    	   then
			  	((counter++));
		    	   fi
			done
		done
	if [ $counter -eq 1 ]
	then
		store[indexb]=$i;
		((indexb++));
	fi
done
echo "Single reapeated number from 1 to 100 are :"
for show in ${!store[@]}
do
	echo ${store[show]}
done
