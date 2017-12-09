# lockbat
## How to use it?
Please copy the `blat.exe` from `blat3219_64.full.zip` to where you place the lock.bat, and make a txt file at the sametime.  
Open the `lock.bat` (you can change it into .doc to view it), and change the line 38 and 39  
    `blat -install smtp.163.com  liubaozhu1258@163.com`  
    `blat D:\a.txt -to  3015216069@tju.edu.cn  -u  liubaozhu1258@163.com  -pw asdf1258  -subject  warning`  
the email name change to your email id which  (must _open pop3\stmp_), and the txt file name change to your file( _not support Chinese_), then change line 30  
    `if NOT %pas%%pass%%pas%== locker goto FAIL`   
'locker' to your folderlocker password.  
First time it will establish a folder named 'locker'.  
Second time it will ask you if you want to lock the folder 'locker'.  
Third time it will adk you to type your password.  
When someone want to unfold the folder _locker_ and the key is not right, it will start a _The Matrix_ screensaver and send a warning to your email.
