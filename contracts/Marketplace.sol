/**pragma solidity ^0.5.0;

import "./shipping.sol";

contract Marketplace {
     address public seller;
     address public buyer;
     mapping (address => uint) public balances;
     ShippingStatus public status;

     event ListItem(address seller, uint price);
     event PurchasedItem(address seller, address buyer, uint price);

     enum StateType{
        ItemAvailable,
        ItemPurchased
     } 

     StateType public State;

     constructor() public {
        seller = msg.sender;
        State = StateType.ItemAvailable;
        status = new ShippingStatus();
     }

     function iniBalance(address receiver, uint amount) public {
        require(msg.sender == receiver, "Sender == Receiver");
        require(balances[receiver] == 0, "Receiver already has a balance");
        require(amount <1e60, "Amount isn't too big");
        balances[receiver] += amount;
     }
     
     function buy(address seller, address buyer, uint price) public payable{
        balances[buyer]+=10;
        State = StateType.ItemPurchased;
        balances[buyer] -= price;
        balances[seller] += price;

        emit PurchasedItem(seller, buyer, msg.value);
        status.Shipped();
     }
}**/