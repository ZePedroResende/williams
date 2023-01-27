// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "solmate/utils/SafeCastLib.sol";
import {Monaco} from "../../Monaco.sol";
import {BradburyBase} from "./Base.sol";

contract BradburyV0 is BradburyBase {
    using SafeCastLib for uint256;

    constructor()
        BradburyBase(Params({beg_accel_mul: 2, lag_accel_mul: 0, lag_banana_pct: 120, hodl_banana_pct: 120}))
    {}

    function sayMyName() external pure returns (string memory) {
        return "Bradbury-v0";
    }
}
