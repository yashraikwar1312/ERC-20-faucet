// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken {
    function transfer(address to, uint amount) external returns (bool);
}

contract Faucet {
    address public tokenAddress;
    address public owner;

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
        owner = msg.sender;
    }

    function sendTokens(address recipient) public {
        IToken(tokenAddress).transfer(recipient, 100 * 10 ** 18);
    }
}
