// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity ^0.6.0;                         // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma
contract Logger {                               // Declaration du contract
    address[] private  logs;
    function log() internal {
        logs.push(msg.sender);
    }
    function getLast() internal view returns(address) {
        return logs[logs.length - 1];
    }

    function getVisitorByPosition(uint _pos) internal view returns(address) {
        return logs[_pos - 1];
    }

    function getAll() internal view returns(address[] memory) {
        return logs;
    }
}