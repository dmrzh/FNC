pragma solidity ^0.4.18;


import "zeppelin-solidity/contracts/token/MintableToken.sol";

contract FanCoin is MintableToken{
    /*
     * Token meta data.
     */
    string public constant name = "FanCoin";
    string public constant symbol = "FNC";
    uint public constant decimals = 18;


    address public icoContract = 0x0;
    /*
     * Modifiers
     */

    modifier onlyIcoContract() {
        // only ICO contract is allowed to proceed
        require(msg.sender == icoContract);
        _;
    }




}