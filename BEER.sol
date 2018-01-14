pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BEER is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BEER(address _owner)  UpgradeableToken(_owner) {
    name = "BEER";
    symbol = "BEER";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}