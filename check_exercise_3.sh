#!/bin/bash

#Automatically check answers for exercise 3

#3. Check for shortest mountain
if [ -e ~/20180302-unix-basic/exercise3/shortest-mountain/Mount-Mitchell.txt ]
then
	echo "3. Correct! Of the mountains listed, Mont Mitchell is the shortest."
	echo
else
	echo "3. Not quite. Check to make sure you didn't accidentally rename the mountain while moving it, or check the other mountains to find the shortest."
	echo
fi

#5. Check for correct K2 movement
if [ -e ~/20180302-unix-basic/exercise3/Karakoram/Chhogori.txt ]
then
	echo "5. Correct! Chhogori is in the correct place."
	echo
else
	echo "5. Not quite. Check to make sure you spelled 'Chhogori' correctly when copying K2, and that it's in the correct place."
	echo
fi

#6. Check for correct K2 movement
if [ -e ~/20180302-unix-basic/exercise3/Karakoram/Mount-Godwin-Austen.txt ]
then
	echo "6. Correct! Mount Godwin-Austen is in the right place."
	echo
else
	echo "6. Not quite. Check to make sure you named the file 'Mount-Godwin-Austen.txt' when moving K2, and that it's in the correct range."
	echo
fi

#7. Check for mountains in the correct ranges 
echo "7. Answers: "
mc=0
#Check for Everest
if [ -e ~/20180302-unix-basic/exercise3/Himalayas/Mount-Everest.txt ]
then
	mc=$((mc+1))
else
	echo "Mount Everest isn't in the correct range."
fi

#Check for AnnapurnaI
if [ -e ~/20180302-unix-basic/exercise3/Himalayas/AnnapurnaI.txt ]
then
	mc=$((mc+1))
else
	echo "Annapurna I isn't in the correct range."
fi

#Check for Mount Godwin-Austen and Chhogori
if [ -e ~/20180302-unix-basic/exercise3/Karakoram/Mount-Godwin-Austen.txt ] && [ -e ~/20180302-unix-basic/exercise3/Karakoram/Chhogori.txt ]
then
	mc=$((mc+1))
else
	echo "Something's hinky with K2. Check your answers for 5 and 6."
fi

#Check for Mont Blanc
if [ -e ~/20180302-unix-basic/exercise3/Swiss-Alps/Mont-Blanc.txt ]
then
	mc=$((mc+1))
else
	echo "Mont Blanc isn't in the correct range."
fi


#Check for Mount Elbert
if [ -e ~/20180302-unix-basic/exercise3/Rocky-Mountains/Mount-Elbert.txt ]
then
	mc=$((mc+1))
else
	echo "Mount Elbert isn't in the correct range."
fi

#Check for Mount Mitchell
if [ -e ~/20180302-unix-basic/exercise3/Appalachian-Mountains/Mount-Mitchell.txt ]
then
	mc=$((mc+1))
else
	echo "Mount Mitchell isn't in the correct range."
fi

#Print if all the mountains are correct
if [ $mc == 6 ]
then
	echo "All mountains are in their correct ranges!"
	echo
else 
	echo
	echo "Check to make sure you've spelled the mountain ranges correctly; for example, the 'Rocky Mountains' directory should be called 'Rocky-Mountains', the 'Swiss Alps' directory should be called 'Swiss-Alps', and the 'Appalachian Mountains' should be 'Appalachian-Mountains'."
	echo
fi

#8. Deadliest Mountain check
if [ -e ~/20180302-unix-basic/exercise3/deadliest-mountain/AnnapurnaI.txt ]
then
	echo "8. Correct! Annapurna I is the deadliest mountain in this set."
	echo
else
	echo "8. Not quite. Check to make sure you didn't rename the mountain while moving it, or check the mountains to make sure you found the deadliest."
	echo
fi

