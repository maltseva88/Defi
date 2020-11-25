pragma solidity ^0.5.0;

// lvl 3: equity plan
contract DeferredEquityPlan {
    uint fakenow = now;
    
    address human_resources;

    address payable employee; // Ted
    bool active = true; // this employee is active at the start of the contract

    // @TODO: Set the total shares and annual distribution
    uint total_shares = 1000;
    uint annual_distribution = 250;
    
    
    uint start_time = fakenow; // permanently store the time this contract was initialized

    // @TODO: Set the `unlock_time` to be 365 days from now
     uint unlock_time = fakenow + 365;
    
     
    uint public distributed_shares; // starts at 0

  
    function fastforward() public {
    fakenow += 100 days;
}

        constructor(address payable _employee) public {
        human_resources = msg.sender;
        employee = _employee;
    }


    function distribute() public {
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to execute this contract.");
        require(active == true, "Contract not active.");

        // @TODO: Add "require" statements to enforce that:
        require(unlock_time <= fakenow);
        require(distributed_shares < total_shares);
        // Your code here!

        // @TODO: Add 365 days to the `unlock_time`
         unlock_time = fakenow + 365;

        // @TODO: Calculate the shares distributed by using the function (now - start_time) / 365 days * the annual distribution
        distributed_shares = (((fakenow - start_time) / 365) * annual_distribution);
        if ((fakenow - start_time) < 365) {distributed_shares = 0;}
        if((fakenow - start_time) > 365) {distributed_shares = 250;}

        // double check in case the employee does not cash out until after 5+ years
        if (distributed_shares > 1000) {
            distributed_shares = 1000;
        }
    }

    // human_resources and the employee can deactivate this contract at-will
    function deactivate() public {
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to deactivate this contract.");
        active = false;
    }

    // Since we do not need to handle Ether in this contract, revert any Ether sent to the contract directly
    function() external payable {
        revert("Do not send Ether to this contract!");
    }
}
