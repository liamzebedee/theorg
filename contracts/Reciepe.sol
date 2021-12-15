interface IFabricator {
    function requireAnyItemFromCollection(address item) external;

    function requireNumberOfItems(address item, uint count) external;

    function requireSpecificItems(address item, uint[] calldata ids) external;
}



interface Reciepe {
    function getInputs() external view returns (Input[]);
}