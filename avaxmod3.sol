// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract RonToken is ERC20, Ownable {
    constructor() ERC20("RonCoin", "RC") {
        _mint(msg.sender, 1000000);
    }

    function mint(uint256 _value) public onlyOwner {
        _mint(msg.sender, _value); 
    }

    function burn(uint256 _value) public onlyOwner {
        _burn(msg.sender, _value);
    }
    function transfer(address _to, uint256 _value) public override returns (bool success) {
        _transfer(_msgSender(), _to, _value);
        return true;
    }
}
