pragma solidity ^0.5.5;

import "./PetrolCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PetrolCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale{

    constructor(
        uint rate,
        address payable wallet,
        PetrolCoin token, 
        uint goal,
        uint openingTime, 
        uint closingTime
        
    )
        TimedCrowdsale(openingTime, closingTime)
        RefundableCrowdsale(goal)
        CappedCrowdsale(goal)
        
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor can stay empty
    }
}
      
contract PetrolCoinSaleDeployer {
    address public petrol_sale_address;
    address public token_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet, // this address will receive all Ether raised by the sale
        uint goal
    )
        public
    {
        // @TODO: create the PetrolCoin and keep its address handy
        PetrolCoin token = new PetrolCoin(name, symbol, 0);
        token_address = address(token);
        
        
        // @TODO: create the PetrolCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        PetrolCoinSale petrol_sale = new PetrolCoinSale(1, wallet, token, goal, now, now + 24 weeks);
        petrol_sale_address = address(petrol_sale);
        
        // make the PetrolCoinSale contract a minter, then have the PetrolCoinSaleDeployer renounce its minter role
        token.addMinter(petrol_sale_address);
        token.renounceMinter();
    
