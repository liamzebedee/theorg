contract Player is ERC721 {
    enum PlayerRole {
        CITIZEN,
        POLICE
    }
    
    struct PlayerInfo {
        uint1 role;
    }

    mapping(uint => Info) info;
    mapping(bytes32 => uint) ensUserRegistered;

    function register() external {
        require(!ensUserRegistered[msg.sender]);
        ensUserRegistered[msg.sender] = true;

        uint id = mint(msg.sender);
        info[id].role = PlayerRole.CITIZEN;
    }
}