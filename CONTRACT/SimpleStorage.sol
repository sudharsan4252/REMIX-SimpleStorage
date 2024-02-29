// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; //0.8.8

contract simpleStorage{

    uint256 favorite_Number;

    struct People{

        uint256 favotite_number;
        string name;

    }

    People[]  people;    
    
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favorite_Number = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favorite_Number;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}
