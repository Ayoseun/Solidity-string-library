# StringLib Library
A Solidity library that provides utility functions for converting data types to strings.

### Compatibility
This library is compatible with Solidity version >=0.8.0 <0.9.0.

### Installation
To use this library,follow these steps:

Import the library into your Solidity contract:

```
import "./StringLib.sol";
```
Use the library functions in your contract code.

*Usage*
**bytes32ToString(bytes32 bytesToConvert)**
Converts a bytes32 array into a string.
```
function myFunction(bytes32 myBytes32) public pure returns (string memory) {
    string memory result = StringLib.bytes32ToString(myBytes32);
    return result;
}
```

**addressToString(address _address)**
Converts an address into a string representation.

```
function myFunction(address myAddress) public pure returns (string memory) {
    string memory result = StringLib.addressToString(myAddress);
    return result;
}
```

#### License
This library is licensed under the GPL-3.0 License.

#### Contribution
Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.
