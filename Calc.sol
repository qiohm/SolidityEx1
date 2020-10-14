pragma solidity 0.6.0;

/** @title calculator. */
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