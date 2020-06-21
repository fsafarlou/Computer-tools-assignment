cd  Desktop
mkdir fsafarlou-CMSC6950-A1
cd fsafarlou-CMSC6950-A1
rm numbers.dat
if ! [ "$#" -eq 3 ]
then
        echo "arg not equal to 3"
    exit
fi
for (( c=$1 ; c<=$2; c+=$3 ))
do
   echo "$c" >> "numbers.dat"
done
mkdir DIVIDE-BY-7
cd DIVIDE-BY-7
unlink numbers link.dat
ln -s ../numbers.dat numbers_link.dat
rm divisible-by-7.dat
while read number
	do
		if [ $(( $number % 7 )) -eq 0 ]
		then
		    echo $number  	
			echo "$number" >> "divisible-by-7.dat"
		fi	
	done < <(cat "numbers_link.dat")
cd ..
cd ..
