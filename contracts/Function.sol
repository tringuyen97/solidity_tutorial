// SPDX-License-Identifier: None
pragma solidity 0.8.26;

contract Function {

    uint value;

    //Visibility in solidity 
    // private: callable only inside the contract
    // internal: callable only inside the contract and the inherit contract
    // external: callable only outside the contract
    // public: callbable anywhere

    constructor(uint _a) {
        value = _a;
    }

    function getValuePrivate() private view returns(uint) {
        return value;
    }

    function getValueInternal() internal view returns(uint) {
        return value;
    }
    
    function getValueExternal() external view returns(uint) {
        return value;
    }

    function getValuePublic() public view returns(uint) {
        return value;
    }

    function getValue() external view returns(uint) {
        getValuePrivate();
        getValueInternal();
        // getValueExternal(); not callable
        getValuePublic();
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }


}