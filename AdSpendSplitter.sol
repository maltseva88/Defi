pragma solidity ^0.5.0;

// lvl 2: tiered split
contract AdSpendSplitter {
    address payable content_creator; // Content Creator
    address payable biz_account; //  Biz Bank Account
   
    
    constructor(address payable _one, address payable _two) public {
        content_creator = _one;
        biz_account = _two;
        
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total;
        uint amount;

        // @TODO: Calculate and transfer the distribution percentage
        amount = points * 80;
        total += amount;
        content_creator.transfer(amount);
        
        amount = points * 20;
        total += amount;
        biz_account.transfer(amount);
        
      
        content_creator.transfer(msg.value - total); // Content Creator Gets Remaining Value
    }

    function() external payable {
        deposit();
    }
}
