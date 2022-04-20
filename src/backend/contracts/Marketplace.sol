// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MarketPlace is ReentrancyGuard {
    address payable public immutable feeAccount; // the account that receives feel
    uint256 public immutable feePercent; // the percentage on sales
    uint256 public itemCount;

    constructor (uint256 _feePercent) {
        feeAccount = payable(msg.sender);
        feePercent = _feePercent;
    }
}
