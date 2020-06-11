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
The SSL offloading process takes the burden of having to run expensive computation like decryption and encryption off of backend systems.

All traffic requests are channelled through the SSL offloading server, it is therefore important to monitor metrics relating to the health of this server. To protect availability when trying to reach the backend webservers/ applications.

Relevant metrics to monitor at the SSL Offloading Server can include some usability impacting metrics like Latency, Number of HTTP status error codes like 5xx. 

1. **Offloading round-trip Latency:** monitors how long each request-response cycle is. It is measured in **Percentiles**. For example, we can say 50th percentile of all the requests have a response time less than x milliseconds, 95th is less than x+eps milliseconds and 99th is less than x+y+eps milliseconds. As there is no right number for laency, this would depend on the expected backend application run time. In any case, latency values should reasonably fall within typical SLA values. **Long response times indicates failures.** 

Latency values could also vary depending on the size of the negotiated requests, caching for abbreviated SSL handshakes, cipher suite selection e.g RSA based cipher vs ECC based cipher, size of the certificate chain etc.

2. **The ratio of successful connections vs total connection requests**. 
Or Error/total requests. This metrics indicates how well the SSL offloading server is servicing incoming request.Connection drops might be a good indicator of servers maxxing at overcapacity or a Denial of Service attack when failed handshaking requests within a short period are astronomically larger than the baseline.
 
3. Active connections
4. CPU Utilization
5. Memory Utilization
6. Number of Active threads per core
7. Backend server/host health

