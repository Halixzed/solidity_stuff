// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.7;

contract Will {
    address owner;
    uint    fortune;
    bool    deceased;

    constructor() payable public {
        owner = msg.sender; //the address that is being called
        fortune = msg.value; 
        deceased = false;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier isDeceased {
        require(deceased == true);
        _;

    }

    address payable[] familyWallets;

    mapping (address => uint) inheritance;


    function setInheritance (address payable wallets, uint amount) public {
        familyWallets.push(wallets);
        inheritance[wallets] = amount;
    }  
    
}