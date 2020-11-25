pragma solidity ^0.5.0;

contract BizAccount {
    address payable owner
    address payable account_developers 
    address payable account_miners 
    address payable account_employees 
    address payable account_creators 
    address payable account_refunds 
    address payable account_advertising 
    address payable account_savings 
    address payable account_investment 
    
    
     constructor(
        string memory name,
        uint payable address,
        string mnemonic 
    )
      

    
    function withdraw(uint amount, address payable recipient) public {
        require(recipient == account_developers || recipient == account_miners || recipient == account_employees 
        recipient == account_creators  || recipient == account_refunds || recipient == acccount_advertising || recipient
        == account_savings || recipient == account_investment, "You do not own this account");
        recipient.transfer(amount);
        }
        
    function deposit() public payable {}
    
    function() external payable {}   
}
