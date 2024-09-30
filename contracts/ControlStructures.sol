// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ControlStructures {
    bool public isTrue = true;

    function doSomeThing() external {
        if (isTrue == true) {
            // do something
        } else {
            // do something
        }

        for (uint i = 0; i < 10; i++) {
            //do something
        }

        while (isTrue) {
            // do something
            // continue
            // break
        }
    }
}