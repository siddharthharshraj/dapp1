// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Funder {
    uint256 public numofFunders;

    mapping(uint256=>address) private funders;
     
    receive() external payable{}
    
    function transfer() external payable{
        funders[numofFunders]=msg.sender;
    }
    function withdraw(uint256 withdrawAmount) external{
        require(
            withdrawAmount<=2000000000000000000,
            "Cannot Withdraw morethan 2 ethers"
            );
        payable(msg.sender).transfer(withdrawAmount);
    }
}