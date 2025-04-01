// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0; 
contract DataType2 {
    string private message;
    uint[] private numbers;
    string[] private names;
   struct User {string name; uint256 age;}
   mapping(address => uint256) private balances;
   mapping(address => User) private users;
   bytes32 private fixedData;
   bytes private dynamicData;

    constructor() {
        message = "Hello, Solidity!";
        fixedData = bytes32(0xabcdef1234560000000000000000000000000000000000000000000000000000);
    }
    
    function setUser(address _address, string memory _name, uint256 _age) public {  
        users[_address] = User(_name, _age);
    }

    function getUser(address _address) public view returns(string memory, uint256){
        return (users[_address].name, users[_address].age);
    }

    function setDynamicData(bytes memory _dynamicData) public {
        dynamicData = _dynamicData;
    }
    function getDynamicData() public view returns(bytes memory){
        return dynamicData;
    }
    function getFixedData() public view returns(bytes32){
        return fixedData;
    }
    function setFixedData(bytes32 _newFixedData) public {
        fixedData = _newFixedData;
    }
    function setBalance(address _address, uint _amount) public {
        balances[_address] = _amount;
    }
    function getBalance(address _address) public view returns (uint){
        return balances[_address];
    }
    

    function getNames() public view returns (string[] memory){
        return names;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    function getNumbers() public view returns (uint[] memory){
        return numbers;
    }
    function addNumber(uint _number) public {
        numbers.push(_number);
    }
    function getNumber(uint _index) public view returns(uint){
        return numbers[_index];
            }
    function getMessage() public view returns (string memory){
        return message;
    }
    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }
    function getDetails() public view returns(
        string memory, uint[] memory, string[] memory, bytes32, bytes memory ){
        return (message, numbers, names, fixedData, dynamicData);
    }
    
}