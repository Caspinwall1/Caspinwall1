#!/bin/bash
 
#function to display the menu, it can be called anywhere as many times as you like but we'll do so in loop just once
show_menu() {
    clear
    echo "....................................."
    echo "       Simple Bash Menu Script       "
    echo "....................................."
    echo "1. Disk Usage"
    echo "2. Files in Current Directory"
    echo "3. Date and Time"
    echo "4. Check System Uptime"
    echo "5. Exit"
    echo "....................................."
}
 
#infinite loop in which our main program is written
while true; do
    #display the menu
    show_menu
     
    #read user choice
    read -p "Enter your choice [1-5]: " choice
    #using case statement, you could also use multiple if-elif but case is recommended
    case $choice in
       #in case of 1, do following
        1)
            echo ">> Disk Usage:"
            df -h
            read -p "Press [Enter] to continue..."
            ;;
        #in case of 2, do following
        2)
            echo ">> Files in Current Directory:"
            ls -l
            read -p "Press [Enter] to continue..."
            ;;
        #in case of 3, do following
        3)
            echo ">> Current Date and Time:"
            date
            read -p "Press [Enter] to continue..."
            ;;
        #in case of 4, do following
        4)
            echo ">> System Uptime:"
            uptime
            read -p "Press [Enter] to continue..."
            ;;
        #in case of 5, do following
        5)
            echo "Exiting the script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option! Please try again."
            read -p "Press [Enter] to continue..."
            ;;
    esac
done
