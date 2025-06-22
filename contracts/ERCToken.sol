// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERCToken {
    string public name = "ERCTOKEN";
    string public symbol = "ERC";
    uint8 public decimals = 18;
    uint public totalSupply = 1000000 * 10 ** uint(decimals);
    mapping(address => uint) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) public returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Not enough tokens");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        return true;
    }
}
