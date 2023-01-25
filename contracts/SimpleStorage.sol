// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract SimpleStorage {
 uint256 favoriteNumber;
        
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256)  {
        return favoriteNumber; 
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
}