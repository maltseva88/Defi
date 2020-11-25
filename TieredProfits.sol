pragma solidity ^0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    address payable employee_one; // Lidia
    address payable employee_two; // Frank
    address payable employee_three; // King
    address payable employee_four; // George
    address payable employee_five; // Ted
    
    constructor(address payable _one, address payable _two, address payable _three, address payable _four, address payable _five) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
        employee_four = _four;
        employee_five = _five;
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
        amount = points * 20;
        total += amount;
        employee_one.transfer(amount);
        
        amount = points * 20;
        total += amount;
        employee_two.transfer(amount);
        
        amount = points * 20;
        total += amount;
        employee_three.transfer(amount);
        
        amount = points * 20;
        total += amount;
        employee_four.transfer(amount);
        
        amount = points * 20;
        total += amount;
        employee_five.transfer(amount);
     
        

        employee_one.transfer(msg.value - total); // ceo gets the remaining wei
    }

    function() external payable {
        deposit();
    }
}
