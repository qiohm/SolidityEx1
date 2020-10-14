pragma solidity >=0.4.0 <0.6.0;

/** @title calculator. */
contract Calculator {
    /** @dev Calculates .
      * @param w Width of the rectangle.
      * @param h Height of the rectangle.
      * @return s The calculated surface.
      * @return p The calculated perimeter.
      */

 constructor() public {
        owner = msg.sender;
    }

    function add(uint w, uint h) public pure returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = w + h;
        }
    function sub(uint x, uint y) public pure returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = x - y;
    }
    function mul(uint g, uint j) public pure returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = g * j;
    }
    function div(uint r, uint t) public pure returns (uint s) {
         require(owner == msg.sender, 'Only owner can use this function.');
        s = r / t;
    }
}