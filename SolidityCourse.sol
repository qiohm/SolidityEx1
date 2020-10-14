// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity ^0.6.0;                         // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

import './Logger.sol' as logger;                // import de ./Logger.sol

contract SolidityCourse is logger.Logger {      // Declaration du contract
    address private owner;

    constructor() public {
        owner = msg.sender;
    }

    function whoIsOwner() public returns(address) {
        log();
        return owner;
    }

    function getLastVisitor() public returns(address) {
        address lastVisitor = getLast();
        log();
        return lastVisitor;
    }

    function getNthVisitor(uint _pos) public returns(address) {
        address nthVisitor = getVisitorByPosition(_pos);
        log();
        return nthVisitor;
    }

    function getAllVisitors() public view returns(address[] memory) {
        require(owner == msg.sender, 'Only owner can use this function.');

        return getAll();
    }
}