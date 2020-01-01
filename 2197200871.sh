#!/bin/bash                                                                      
# Display welcome massage, computer name and date                                
echo "+++ Backup Shell Script +++"                                               
echo "+++ Run Time: $(date) @ $(hostname)"                                       
echo "+++ Masukan Lokasi Folder Untuk Backup +++"                                
read folder                                                                      
# Define variable                                                                
BACKUP=/home/rafi                                                                
NOW=$(date +"%d-%m-%y")                                                          
# Let us Start Backup                                                            
echo "+++ Dumping MySQL database to $BACKUP/$NOW...."                            
# And we are Done                                                                
if      [ -d $BACKUP/$NOW ]                                                      
then                                                                             
echo "+++ Folder $BACKUP/$NOW Sudah Ada"                                         
sleep 5                                                                          
echo "+++ Mengganti Folder di $BACKUP/$NOW +++"                                  
echo "+++ Berhasil Membackup file $BACKUP/$NOW +++"                              
rm -r $BACKUP/$NOW/                                                              
mkdir $BACKUP/$NOW/                                                              
cd $BACKUP/$NOW/                                                                 
tar -czvf latest.tar.gz $BACKUP                                                  
else                                                                             
echo "++++ Membuat Folder di $BACKUP/$NOW ++"                                    
echo "+++ Berhasil membackup File $BACKUP/$NOW"                                  
mkdir $BACKUP/$NOW/                                                              
cd $BACKUP/$NOW/                                                                 
tar -czvf latest.tar.gz $BACKUP                                                  
fi                                                                               
sleep 3                                                                          
echo "+++ Backup wrote to $BACKUP/$NOW/                                          
latest.tar.gz"                                                                   
