// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "solmate/utils/SafeCastLib.sol";
import {Monaco} from "../../Monaco.sol";
import {BradburyBase} from "./Base.sol";

contract BradburyBiggerBetter is BradburyBase {
    using SafeCastLib for uint256;

    constructor() BradburyBase(Params({beg_accel_mul: 6})) {}

    function hodl_target_spend_pct() internal view override returns (uint256) {
        return 80;
    }

    function lag_target_spend_pct() internal view override returns (uint256) {
        return 80;
    }

    function sayMyName() external pure returns (string memory) {
        return "Bradbury-BiggerBetter";
    }
}
