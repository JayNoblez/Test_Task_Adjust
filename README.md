# **Test_Task_Adjust**

## **Task 1 Description**  

This script that writes the numbers from 1 - 10 in random order.  Each number should appear only once.
You can tweak the script to run bigger ranges by increasing the _"loop"_ and _"range"_ variables values in the script.

1. **Build instruction**: Clone the repo, and make the file *"random_ten.sh"* executable. 
`$ chmod +x random_ten.sh` 
2. **Usage**: Run with `./random_ten.sh`  in your given terminal
Output should be 10 numbers ranging from 1-10 in random order.
3. **Known limitation**:
The _srand()_ and _rand()_ function as pseudorandom. The randomness is limited to each run, and can be predictable with other runs. This is fit for our purposes in this task.  
