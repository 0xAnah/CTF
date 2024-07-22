# Solution

The Task asks us to write our address (note: the address you should write has to be the address of the wallet you used in deploying the temple contract) to gardens[20][22] slot of the temple contract. Since the temple contract has a write fuction which can be used to write to any storage slot of the temple contract all we have to do is to call the write function with the storage slot at gardens[20][22] and our address encoded into bytes but the problem would be how do we determine the storage slot at gardens[20][22]. 

To determine the storage slot at gardens[20][22] we would need to understand how mappings values are stored in solidity, this (alchemy article)[https://docs.alchemy.com/docs/smart-contract-storage-layout] would do just that. 
