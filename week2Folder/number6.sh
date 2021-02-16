#!/bin/bash
# Tic Tac Toe game
# Mercy Okobi 15/02/2021


GameBoard=(_ _ _ _ _ _ _ _ _)
slots=(0 1 2 3 4 5 6 7 8)
player=1
playerTurn=1
placeholder=_
symbol=X

printBoard(){

        echo    =============== Tic Tac Toe Board ==============
        echo
        echo " ${GameBoard[0]}  ${GameBoard[1]}  ${GameBoard[2]} "
        echo " ${GameBoard[3]}  ${GameBoard[4]}  ${GameBoard[5]} "
        echo " ${GameBoard[6]}  ${GameBoard[7]}  ${GameBoard[8]} "
        echo
        echo    ================================================

}

checkmatch(){
        if [ ! ${GameBoard[$1]} = "_" ] && [ ${GameBoard[$1]} = ${GameBoard[$2]} ] && [ ${GameBoard[$2]} = ${GameBoard[$3]} ]
        then
                echo Hurray!!! player ${GameBoard[$1]} won the game!!

                player=0
        fi
}

checkPosibilities(){
        checkmatch 0 1 2
        checkmatch 3 4 5
        checkmatch 6 7 8
        checkmatch 0 3 6
        checkmatch 1 4 7
        checkmatch 2 5 8
        checkmatch 0 4 8
        checkmatch 2 4 6

}

turnToPlay(){
        if [ $playerTurn -eq 1 ]
        then
                echo It\'s player one\'s turn\; Please input a number ${slots[@]}
                read slots
                symbol=X
                playerTurn=2
        else
                echo It\'s player two\'s turn\; Please input a number ${slots[@]}
                read slots
                symbol=O
                playerTurn=1


        fi
}
resetGame(){
        if [ $playerTurn -eq 1 ]
        then
        playerTurn=2

        else
        playerTurn=1

        fi
}
#call printBoard function to print the tic tac toe board
printBoard

while [ $player -eq 1 ]
do
#call turn to play function
        turnToPlay
        if [[ ! " ${GameBoard[@]} " =~ " ${placeholder} " ]]
        then
                echo Game Over!!
                player=0
                break

        elif [[ ! $slots =~ ^[0-8]$ ]]
        then
                echo Invalid input!!
#call resetGame functiom to start the game over again
                resetGame

        elif [[ ! ${GameBoard[$slots]} = _ ]]
        then
                echo Invalid input!!, choose another spot
                resetGame


        else
                GameBoard[$slots]=$symbol
                printBoard
                checkPosibilities



                if [ $player -eq 0 ]
                then
                        break


                fi

        fi
done

