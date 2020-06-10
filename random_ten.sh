#!/bin/bash
#Script to generate random digit from 1 to 10 making sure that each digit appears only once 
awk -v loop=10 -v range=10 'BEGIN{
  srand() # Uses the time of day to generate the seed
  do {
    rnd_digit = 1 + int(rand() * range)
    if (!(rnd_digit in array)) {
       print rnd_digit
       array[rnd_digit] = 1
       count++
    }
  } while (count<loop)
}'
