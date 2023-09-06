// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract quisscoin {
    string public tokenanme = "quisscoin";
    string public tokenabbrv = "qc";

    uint public totalsupply = 0;

    mapping (address => uint) public balances;

    function mint(address user, uint amount) public {
        totalsupply += amount;
        balances[user] += amount;
    }

    function burn(address user, uint amount) public {
        require(amount<= balances [user], "the amount of quisscoins the user has is not enough to destroy)");
        
        totalsupply -= amount;
        balances[user] -= amount;
    }
}
