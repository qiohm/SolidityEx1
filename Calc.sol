// SPDX-License-Identifier : MIT 
pragma solidity 0.6.0;
pragma experimental ABIEncoderV2;

/** @title calculator */
/** @author Alyra EthersJs Course */
/** @notice you can calculate addition, substraction, multiplication, division of two numbers*/
/** @param uint put in two integers you want to calculate separated with a coma (,)*/
/** @return will return the result of operation*/
/** */
contract Calculator {
    
        address private owner;


 constructor() public {
        owner = msg.sender;
    }

    function add(uint w, uint h) public view returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = w + h;
        }
    function sub(uint x, uint y) public view returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = x - y;
    }
    function mul(uint g, uint j) public view returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = g * j;
    }
    function div(uint r, uint t) public view returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = r / t;
    }
}