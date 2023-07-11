// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LshContract {
    struct Student {
        bytes32 name; // string 대신
        bytes32 gender;
        uint age;
    }

    mapping(uint => Student) studentInfo;

    function setStudentInfo(uint _studentId, bytes32 _name, bytes32 _gender, uint _age) public{
        Student storage student = studentInfo[_studentId];
        student.name = _name;
        student.gender = _gender;
        student.age = _age;
    }

    function getStudentInfo(uint _studentId) public view returns(bytes32, bytes32, uint){
        return(studentInfo[_studentId].name,
                studentInfo[_studentId].gender,
                studentInfo[_studentId].age);
    }
}