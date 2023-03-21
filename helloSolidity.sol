// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract HelloSolidity {
    mapping(address => uint) balance;
    address owner; 
    constructor() { 
        owner = msg.sender; 
        // address that deploys contract will be the owner 
    } 

    function isValidAccount() public returns(uint) {
        require(msg.sender == owner, "Not a Member.");
        balance[msg.sender] += 10;

        return balance[msg.sender];
    }

    function getBalance() public view returns(uint) {
        return balance[msg.sender]; 
    } 
}
