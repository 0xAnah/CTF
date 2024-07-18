# Solution

The Task asks us to write our address (note: the address you should write has to be the address of the wallet you used in deploying the temple contract) to the mainHall variable of the temple contract. Since the temple contract has a write fuction which can be used to write to any storage slot of the temple contract all we have to do is to call the write function with the storage slot of the mainHall variable (mainHall storage slot is slot 1) and our address encoded into bytes. 

The easiest way to go about this is to define a new contract (I created a changeMainHall contract) and create a function that takes the address of the temple contract as a parameter then execute an external call to the temple write function passing the required arguments.  