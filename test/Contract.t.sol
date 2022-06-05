// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DemonTime.sol";

contract ContractTest is Test {
        DemonTime DT = new DemonTime();
    function setUp() public {
    }

    function testInitSupply() public {
        address L = DT.ownerOf(499);
        assertEq(L, 0x0c40BAa31D20574C8930a6e8f59fa2e11dFE17F2);
    }

    function testMaxSupOrOnePerPerson() public {
        // will fail unless you comment out line 35 in DemonTime.sol
        // if not commented out, test makes sure only one per person
        for (uint i; i < 4500; i++) {
            DT.summonDemon();
        }
        uint ts = DT.totalSupply();
        assertEq(ts, 5000);
    }

    function testFailMaxSup() public {
        // will fail/pass for wrong reasons unless you comment out line 35 in DemonTime.sol
        for (uint i; i < 4501; i++) {
            DT.summonDemon();
        }
    }

    function testDeploymentGas() public {
        DemonTime DT = new DemonTime();
    }
}
