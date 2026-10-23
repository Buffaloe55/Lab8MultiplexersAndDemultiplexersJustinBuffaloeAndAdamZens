# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Justin Buffaloe & Adam Zens

## Summary
This lab uses a multiplexer and demultiplexer in Verilog to route four-bit data from one of four senders to one of four destinations. The multiplexer selects the sender, and the demultiplexer selects the receiver. Switches provide the data, buttons control selection and enable, and LEDs display the data at the selected destination. Something cool is we can 
have all data selected to be sent for every person but till we hit their selector buttons what ever combo that is 00,01,10,
11 it will not select them to send their data. We then have to hit the other two buttons with same logic to send it to one 
of four different places. It will not send overall however till we hit the enable button. We could flip the switches of data
wanting to be sent have them selected and the place they want to send it to throught the buttons but if the enable button is not
pressed; nothing will be sent over. Pretty cool system we built this class. 

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexer selects one of several inputs and sends it to a single output. Selection signals control which input passes through. It lets multiple data sources share one connection, like choosing which person’s data goes onto the internet line in this lab.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer takes one input and routes it to one of several outputs. Selection signals control which output receives the data. It lets one data source send information to a chosen destination, like selecting which business receives the data in this lab.

### What other uses might these circuits have? (Think Shannon’s)
Shannon's Expansion says we can split a boolean funciton into two cases based on one input.
If input is 0 what is output? if input is 1 what is output?
A multiplexer chooses between those two cases. An example would be A AND B. 
When A = 0 the answer is always 0. When A = 1 the answer equals B.
We could connect a two input MUX like
MUX connection                     what we connect
Select                              A
input selected when A = 0           0
input slected when A = 1            B

With this set up the Mux now is a AND gate. 
With this and by choosing differnt connections, multiplexers can implement other boolean functions too.
A demultiplexer can help decode selection bits, activating a particular output. For example choosing which
device recieves a signal. 
