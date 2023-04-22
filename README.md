# IntegerInput
coded in x86 assembly language <br>
This program prompts the user on a loop to enter a positive number then keeps track of the running total, min and max values, <br> number of even and odd entries and the number of total entered values before displaying them back to the user <br>

The following directions where given: <br>
Prompt the user to enter a series (0 or more) of positive integers within a loop. <br>
Input of any negative integer will terminate the process and trigger display of summary statistics based on the integers entered. <br> <br>
The program will track these values while entry of integers proceeds: <br>
1) count of the number of positive integers (including zero)
2) sum of positive integers entered
3) count of add integers entered
4) count of even integers entered
5) highest value entered
6) lowest value entered <br>

In order to run this code you will need to modify and upload to vsCode or download the following zip files: <br>
<b> masm615.zip</b> <br>
<b> Irvine.zip</b> <br>
<b> Satterley_ASM.zip</b> <br>
and store them in the C drive of your device. <br> 

Then go to the search bar at the bottom of your screen and type the letters CMD to open your command prompt. <br>
Next type or copy and paste the following lines to create an executable file and execute the program. <br> 
<b> cd C:\Satterley_ASM </b> <br>
<b> make32 Meghan-Satterley_IntegerInput </b> <br> <br>
You should see the following files appear in your folder directory <br> 
![make32_IntegerInput](https://user-images.githubusercontent.com/114275745/233791486-e4e940c5-d3ab-41d7-a218-25a33bcfc252.png)
<br> <br> Lastly type the following line to execute the program <br>
<b> Meghan-Satterley_IntegerInput </b> <br> <br>
The following will result if executed correctly <br>
![IntegerInput_Exe_1](https://user-images.githubusercontent.com/114275745/233791506-0c318873-ad98-47a8-9c99-6748746b5286.png)
![IntegerInput_Exe_2](https://user-images.githubusercontent.com/114275745/233791512-7c3afe82-7095-4a46-ad5d-bf79a2c8216f.png)
![IntegerInput_Exe_3](https://user-images.githubusercontent.com/114275745/233791520-b2c7b272-a9e9-4e12-894e-edde2d196864.png)
![IntegerInput_Exe_4](https://user-images.githubusercontent.com/114275745/233791525-5fd7420d-7bf4-4138-a369-c1b1c3a126e7.png) <br>

The complete assembly program has 13 variables <br>
(An input counter and display for the integer count, sum, odd/even numbers, max/min values, and a prompt for user input). 
<br> While using the following Irvine-supplied routines: WriteString, WriteInt, and ReadInt.
<br> The purpose of this program is to show an understanding of real world simple application implementation. 

