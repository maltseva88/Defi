pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;
    address payable employee_four;
    address payable employee_five;
    
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.



    constructor(address payable _one, address payable _two, address payable _three, address payable _four, address payable _five) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
        employee_four = _four;
        employee_five = _five;
    }


    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into 1/5
        uint amount = msg.value / .20; // Your code here!

        // @TODO: Transfer the amount to each employee
         employee_one.transfer(amount);
         employee_two.transfer(amount);
         employee_three.transfer(amount);
         employee_four.transfer(amount);
         employee_five.transfer(amount);
        
        
        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        msg.sender.transfer(msg.value - amount * .2);
        
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        deposit();
    }
}
