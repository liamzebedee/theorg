
contract TheORG {
    mapping(address => bool) bannedReceipes;

    mapping(uint => bool) bannedItems;
    
    // Allowed tokens to flow through the bridge.
    mapping(address => bool) allowedOuterworldTokens;

    uint public epochLength = 4 weeks;
    uint public policeFunding = 200000 ether;

    address players;
}