// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract DataType {

    //fixed-size types
    bool isEnable; //true, false
    uint a; //1 , 2, 3
    address sender; // 0xsdaf234234..ds123f
    bytes32 data;

    //variable-size types
    string name; // "hello world"
    bytes data1;
    uint[] array; // "[1, 4, 45]"

    function doSomething() external {
        array.push(2);
        array.push(5);

        array[1];
        array[0] = 9;

        delete array[0];
    }

    function bar() external {
        uint[] memory newArray = new uint[](10);
        newArray[0] = 2;
        newArray[1] = 4;
        
        newArray[0];
        delete newArray[0];
    }

    mapping (address => uint) balances;
    function test() external {
        balances[msg.sender] = 100;
        balances[msg.sender] = 200;
        balances[msg.sender];

        // default value;
        // balances["keyNotExist"]; default value
        
    }

    //nested mappings
    mapping (address => mapping (address => bool)) approved;


    // user define
    struct User {
        uint id;
        string name;
        bool isFriend;
    }

    enum Color {
        RED, 
        GREED, 
        BLUE
    }

    //built in
    // msg.sender s;
    // msg.value v;


    
}