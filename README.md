# **Test_Task_Adjust**

## **Task 1 Description**  

This script writes the numbers from 1 - 10 in random order.  Each number should appear only once.
You can tweak the script to run bigger ranges by increasing the _"loop"_ and _"range"_ variables values in the script.

1. **Build instruction**: Clone the repo, and make the file *"random_ten.sh"* executable. 
`$ chmod +x random_ten.sh` 

2. **Usage**: Run with `./random_ten.sh`  in your given terminal. 

Your Output should look like 
``` 
4
10
2
7
8
6
5
1
9
3
```

3. **Known limitation**:
The _srand()_ and _rand()_ function as pseudorandom. The randomness is limited to each run, and can be predictable with other runs. This is fit for our purposes in this task.  

***

## **Task 2 Description** 

Imagine a server with the following specs:

* 4 X Intel(R) Xeon(R) CPU E7-4830 v4 @ 2.00GHz
* 64GB of ram
* 2 tb HDD disk space
* 2 x 10Gbit/s nics

The server is used for SSL offloading and proxies around 25000 requests per second.
Which metrics are interesting to monitor in that specific case and how would I do that? What are the challenges of monitoring this?
