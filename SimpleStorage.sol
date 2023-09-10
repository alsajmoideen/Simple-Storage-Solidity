// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage {
    // bool,uint,int,address,bytes
    uint256 storeNumber;

    mapping(string => uint256) public nameToId;

    struct Student {
        uint256 id;
        string name;
    }

    Student[] public student;

    function store(uint256 numberToStore) public virtual {
        storeNumber = numberToStore;
    }

    function retrieve() public view returns (uint256) {
        return storeNumber;
    }

    function addStudent(uint256 _id, string memory _name) public {
        student.push(Student(_id, _name));
        nameToId[_name] = _id;
    }
}
