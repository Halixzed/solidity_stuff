//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract mySimpleContract
{
    uint a;
    uint b;

    function set_a(uint x) public 
    {
        a = x;
    }

    function set_b(uint y) public 
    {
        b = y;
    }

    function addition() view public returns (uint)
    {
        uint answer = a + b;

        return answer;
    }
}
