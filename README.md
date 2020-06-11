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

The server is used for SSL offloading and proxies around 25000 requests per second.The server is used for SSL offloading and proxies around 25000
requests per second.
*  Which metrics are interesting to monitor in that specific case and how would I do that? 
* What are the challenges of monitoring
this?


![Image](https://github.com/JayNoblez/Test_Task_Adjust/blob/master/Adjust.png)

### Solution 
The SSL offloading process takes off the burden of having to run expensive computation like decryption and encryption on backend systems.

Since all traffic/ requests are channelled through the SSL offloading server, it is important to keep an eye on metrics relating the health of this server. This is because it poses a single point of failure when trying to reach the backend webservers/ applications.
Metrics of concern at the SSL Offloading Server: can be some usability impacting metrics like Latency, Error Codes like 5xx. 

1. **Offloading round-trip Latency:** How long is each request-response cycle. Measured in **Percentiles**. For example, we can say 50th percentile of all the requests have a response time less than x milliseconds, 95th is less than x+eps milliseconds and 99th is less than x+y+eps milliseconds.
Since there is no right number for Latency, this would depend on the expected backend application run time. In any case, latency values should reasonably fall within typical SLA values.
Long response times indicates failures.

2. **The ratio of successful connections vs total connection requests**. 
Or Error/total requests. This metrics indicates how well the SSL offloading server is servicing incoming requests. Depending on the NICs, 

3. How many active connection  
