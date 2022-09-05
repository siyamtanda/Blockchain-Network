# Blockchain-Network

# Blockchain Network For Shipping



## Installation

```
 Clone Repository - git clone https://github.com/siyamtanda/Shipping-chain.git
 cd Shipping
 npm install

 Install truffle global - npm install -g truffle

  Start truffle - truffle init

  Configure truffle from truffle-configure.js to make deployable on gananche-cli

  Install ganache-cli - npm install ganache --global

## Usage

```bash

  Start ganache-cli - ganache-cli

  Compile contract - truffle compile 

  Test contract - truffle test

  Deploy contract - truffle deploy


```


# Production Testing

   You will comment out The marketplace contract and deploy it like the same way you did with Shipping.sol

   The Idea of this Marketplace Contract is to show how we can use the Shipping.sol contract into production.

   On the marketplace contract i show how we interact with the shipping.sol contract, when we bought or sell an Item to the markeplace the shipping.sol contract  will track the Item status that is (Pending, Delivered, Shipped).

   I imported the shipping.sol contract with use of Inheritance into marketplace.sol
   
   


## Contributing
   Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.



## License
   [MIT](https://choosealicense.com/licenses/mit/)

