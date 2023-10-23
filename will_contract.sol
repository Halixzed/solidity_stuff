// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract DeathWill {
    address payable []familyWallets;

    mapping (address => uint) inheritanceWallets;

    function setWallets (address payable wallets, uint amount) public {
        inheritanceWallets[wallets] = amount;
        familyWallets.push(wallets);
    }

    function checkFamilyWallets() public view returns (uint) {
        return familyWallets.length;
    }

}