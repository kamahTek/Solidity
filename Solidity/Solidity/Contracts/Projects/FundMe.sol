// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe{

    uint256 private constant FUNDAMOUNT = 2 * 1e18;

    // array of funder address
    address[] funder;

    // map each funder address to their contribution
    mapping(address => uint256) public Contributions;

    function fund() public payable  {
        // Allow users to send $
        //Have minimum $ sent
        require(msg.value >= FUNDAMOUNT,"NOT ENOUGH ETH"); // 1e18 wei = 1 ETH
    
        // Add the address of funders to our mapping (array) funder and add their contribution
        Contributions[msg.sender] += msg.value;

        // add the funder address to our array 
        funder.push(msg.sender);

    }


    // function withdraw() public {}

    function getPrice() public {
        // address
        // ABI
    }


    function getConvertionRate() public {}
}