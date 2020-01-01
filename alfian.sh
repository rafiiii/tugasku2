#!/bin/bash                                                                     
# set an infinite loop                                                          
while :                                                                         
do                                                                              
clear                                                                           
# display menu                                                                  
echo "Server Name - $(hostname)"                                                
echo "*******************************"                                          
echo "M A I N - M E N U"                                                        
echo "-------------------------------"                                          
echo "A. Aritmatika."                                                           
echo "B. Tentang Pembuat."                                                      
echo "C. Exit"                                                                  
# get input from the user                                                       
read -p "Enter your choice [ A -C ] " choice                                    
# make decision using case..in..esac                                            
case $choice in                                                                 
        A)                                                                      
                #display menu                                                   
                echo "1. penjumlahan"                                           
                echo "2. pengurangan"                                           
                echo "3. perkalian"                                             
                echo "4. pembagian"                                             
                echo "5. kembali ke menu"                                       
                # get input from the user                                       
                read -p "enter your choice [ 1 -5 ]" choice2                    
                case $choice2 in                                                
                1)                                                              
                  echo "penjumlahan"                                            
                  echo "Selamat Datang di Program Penjumlahan"                  
                  echo -n "inputkan bilangan pertama = "                        
                  read bilA                                                     
                  echo -n "inputkan bilangan kedua   = "
                  read bilB                                                     
                  jumlah=$((bilA + bilB))                                       
                  echo "$bilA + $bilB = $jumlah"                                
                  ;;                                                            
                 2)                                                             
                  echo "pengurangan"                                            
                  echo "Selamat Datang di Program Pengurangan"                  
                  echo -n "inputkan bilangan pertama = "                        
                  read bilA                                                     
                  echo -n "inputkan bilangan kedua   = "                        
                  read bilB                                                     
                  jumlah=$((bilA - bilB))                                       
                  echo "$bilA - $bilB = $jumlah"                                
                  ;;                                                            
                3)                                                              
                  echo "perkalian"                                              
                  echo "Selamat Datang di Program Perkalian"
                 echo -n "inputkan bilangan pertama = "                        
                  read bilA                                                     
                  echo -n "inputkan bilangan kedua   = "                        
                  read bilB                                                     
                  jumlah=$((bilA * bilB))                                       
                  echo "$bilA * $bilB = $jumlah"                                
                  ;;                                                            
                4)                                                              
                  echo "pembagian"                                              
                  echo "Selamat Datang di Program Pembagian"                    
                  echo -n "inputkan bilangan pertama = "                        
                  read bilA                                                     
                  echo -n "inputkan bilangan kedua   = "                        
                  read bilB                                                     
                  jumlah=$((bilA / bilB))                                       
                  echo "$bilA / $bilB = $jumlah"                                
                  ;;
                5)                                                              
                  echo "kembali Ke  menu utama"                                 
                  ;;                                                            
              esac                                                              
              read -p "Press [Enter] key to continue..."                        
              readEnterKey                                                      
              ;;                                                                
        B)                                                                      
                #display menu                                                   
                echo "1. nama, nim, home dir"                                   
                echo "2. username@ hostname"                                    
                echo "3. kembali ke menu"                                       
                # get input from the user                                       
                read -p "enter your choice [ 1 -3 ]" choice3                    
                case $choice3 in                                                
                 1)                                                             
                  echo "NAMA = Alfian Rafi Pratama"
                  echo "NIM     = 2197200871"                                      
                 ;;                                                             
                 2)                                                             
                  echo "USERNAME = rafi"                                       
                  echo "HOSTNAME = 124.40.252.156 "                             
                 ;;                                                             
                 3)                                                             
                  echo " Kembali ke menu utama"                                 
                  ;;                                                            
                esac                                                            
                read -p "Press [Enter] key to continue..."                      
                readEnterKey                                                    
                ;;                                                              
        C)                                                                      
                echo "Bye!"                                                     
                exit 0                                                          
                ;;
        *)                                                                      
                echo "Error: Invalid option..."                                 
                read -p "Press [Enter] key to continue..."                      
                readEnterKey                                                    
                ;;                                                              
esac                                                                            
done