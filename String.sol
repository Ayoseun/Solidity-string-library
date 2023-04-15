pragma solidity >=0.8.0 <0.9.0;

// SPDX-License-Identifier: GPL-3.0

library StringLib {
    /// @notice converts bytes32 into a string.
    /// @param bytesToConvert bytes32 array to convert
    function bytes32ToString(bytes32 bytesToConvert)
        internal
        pure
   
        returns (string memory)
    {
        bytes memory bytesArray = new bytes(32);
        for (uint256 i; i < 32; i++) {
            bytesArray[i] = bytesToConvert[i];
        }
        return string(bytesArray);
    }


    function addressToString(address _address)
        internal
        pure
        returns (string memory)
    {
        bytes32 value = bytes32(uint256(uint160(_address)));
        bytes memory alphabet = "0123456789abcdef";

        bytes memory str = new bytes(42);
        str[0] = "0";
        str[1] = "x";
        for (uint256 i = 0; i < 20; i++) {
            str[2 + i * 2] = alphabet[uint256(uint8(value[i + 12] >> 4))];
            str[3 + i * 2] = alphabet[uint256(uint8(value[i + 12] & 0x0f))];
        }
        return string(str);
    }
}
