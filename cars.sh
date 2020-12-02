#! /bin/bash
# cars.sh
# Gabriel Garcia
quit=0

while [ $quit -eq 0 ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read -r choiceNumber
	echo " "

	case $choiceNumber in
		"1") echo "enter car year"
			read -r carYear
			echo "enter car make"
			read -r carMake
			echo "enter car model"
			read -r carModel
			echo "$carYear:$carMake:$carModel" >> My_old_cars
			echo " "
			;;
		"2") echo "car list"
			sort My_old_cars
			echo " "
			;;
		"3") echo "Goodbye"
			quit=1
			;;
	esac
done

