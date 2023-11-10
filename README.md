# RonToken

### Functions

#### `constructor()`

- Description: Initializes the contract with a name ("RonCoin") and symbol ("RC"), and mints 1,000,000 tokens to the deployer's address.
- Modifiers:
  - None

#### `mint(uint256 _value)`

- Description: Allows the owner to mint (create) new tokens and assign them to the owner's address.
- Parameters:
  - `_value` (uint256): The amount of tokens to mint.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.

#### `burn(uint256 _value)`

- Description: Allows the owner to burn (destroy) a specific amount of tokens.
- Parameters:
  - `_value` (uint256): The amount of tokens to burn.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.

#### `transfer(address _to, uint256 _value)`

- Description: Overrides the standard `transfer` function to add flexibility and custom functionality.
- Parameters:
  - `_to` (address): The address to which the tokens will be transferred.
  - `_value` (uint256): The amount of tokens to transfer.
- Returns:
  - `success` (bool): Indicating whether the transfer was successful.
- Modifiers:
  - None

