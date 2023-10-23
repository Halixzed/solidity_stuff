// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract simpleStorage {
    uint _data;

    function setData (uint x) public {
        _data = x;
    }

    function getData() public view returns(uint) {
        return _data;
    }
}