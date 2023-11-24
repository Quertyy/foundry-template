// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MockERC20 is ERC20 {
    constructor() ERC20("mock", "mock") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burnFrom(address user, uint256 amount) public {
        _spendAllowance(user, msg.sender, amount);
        _burn(user, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
