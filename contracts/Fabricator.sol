
contract Fabricator {
    function requireAnyItemFromCollection(address item) external {}

    function requireNumberOfItems(address item, uint count) external;

    function requireSpecificItems(address item, uint[] calldata ids) external;

    // Reciepes:
    // - items
    function make(IReciepe receipe, uint[] calldata itemIds) external {
        require(!banned[receipe]);

        IInput[] inputs = receipe.getInputs();

        for(uint i = 0; i < inputs.length; i++) {
            Item.transferFrom(msg.sender, this, itemIds[i]);
            // check input is satisfied.
            try address(this).call(inputs[i], itemIds[i]) {

            } catch(string memory error) {

            }
        }

        receipe.cook(msg.sender);
    }
}