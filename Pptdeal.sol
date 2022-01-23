// SPDX-License-Identifier: MIT

//The idea of the project is to have Person A approve done work and send 0.1 ETH to person B for the task.

pragma solidity ^0.8.7;

contract Pptdeal{

    address public MyAddress;
    uint256 public Balance;
    address payable paytothis = payable(0x60c4fBD84213896dE8E6480c53Ea8922b577DcD0); //Address of the Person B
    

    constructor(){
        MyAddress = msg.sender;
    }

    receive() payable external{
        Balance = Balance + msg.value; 
    }

    function Approve (bool b) public {

        require(msg.sender == MyAddress,"Only Reddy can Approve this");
        require(100000000000000000<=Balance,"Insufficient Funds");

        if (b = true){ //Person A approving the Work
                paytothis.transfer(100000000000000000); //Sending 0.1 ETH to Person B's address
                Balance = Balance - 100000000000000000;
        }



    }
  

}
