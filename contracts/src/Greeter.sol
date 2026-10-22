//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

//@title Greeter: My first Contract
contract Greeter {
    // state variables (stored on-chain)
    string private greeting; //text
    address public owner; //an account
    uint256 public totalUpdates; //a whole number
    mapping(address => uint256) public greetCount;//address => number

    //--- event (a log apps can listen for) ---
    event GreetingChanged(address indexed by, string newGreeting);

    // --- runs once, at deployment ---
    constructor(string memory _greeting) {
        greeting = _greeting;
        owner = msg.sender;
    }

    // --- read-only function (does not cost gas) ---
    function greet() external view returns (string memory) {
        return greeting;
    }

    // --- changes state: needs a trasaction (costs gas) ---
    function setGreeting(string calldata  _greeting) external {
        greeting = _greeting;
        greetCount[msg.sender] += 1;
        totalUpdates += 1;
        emit GreetingChanged(msg.sender, _greeting);
    }

    // --- internal helper: Only usable inside this contract ---
    function _isOwner(address who) internal view returns (bool) {
        return who == owner;
    }

    function amIOwner() external view returns (bool) {
        return _isOwner(msg.sender);
    }
}
