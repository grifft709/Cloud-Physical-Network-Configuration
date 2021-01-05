#!/bin/bash
if [ $4 == 'blackjack' ] || [ $4 == 'BlackJack' ] || [ $4 == 'BLACKJACK' ]
then
	grep $1 $3_Dealer_schedule | grep $2 | awk '{print $1,$2,$3,$4}'
elif  [ $4 == 'roulette' ] || [ $4 == 'Roulette' ] || [ $4 == 'ROULETTE' ] 
then
	grep $1 $3_Dealer_schedule | grep $2 | awk '{print $1,$2,$5,$6}'
elif [ $4 == 'texas' ] || [ $4 == 'Texas' ] || [ $4 == 'TEXAS' ]
then
	grep $1 $3_Dealer_schedule | grep $2 | awk '{print $1,$2,$7,$8}'
else
	echo To find the dealer by time and game, enter the time, date and game.
fi
