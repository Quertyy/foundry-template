// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { Vm } from "forge-std/Vm.sol";
import { DSTest } from "ds-test/test.sol";
import { console2 } from "forge-std/console2.sol";
import { Utilities } from "test/utils/Utilities.sol";

contract CounterTest is DSTest {
    Vm internal immutable vm = Vm(HEVM_ADDRESS);
    address internal owner;
    Utilities internal utils;

    address[] internal users;

    function setUp() public {
        utils = new Utilities();
        users = utils.createUsers(10);
        owner = vm.addr(0x1);
    }
}
