// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Value{
    // bool
    bool public _bool = false;
    // int
    int public _int = -1; //int256:-1
    uint public _uint = 1; // uint256:1
    uint256 public _uint256 = 2023; //uint256:2023
    // address
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71; // address
    address payable public x_address = payable(_address); // address with send and transfer
    // bytes
    // 在 Solidity（以及许多其他编程语言）中，一个字节（Byte）由8位（Bit）组成。所以，1 Byte = 8 Bits。这是计算机科学中的一种常用约定。
    // soldility中通常用16进制，所以二进制换算16进制，因为2的4次方等于16，所以4位二进制等于1位16进制。
    // 这里的位指的是换算成二进制有几位，所以bytes1是8位二进制，4位16进制。bytes32是8*32=256位二进制，64位16进制。
    // 当声明一个 bytes32 类型的变量 _byte32 并赋值为字符串 'MiniSolidity' 时，其实就是将这个字符串转换为了一个32字节的序列，用16进制表示
    bytes32 public _byte32 ='MiniSolidity'; // 以16进制存储32字节 0x4d696e69536f6c69646974790000000000000000000000000000000000000000
   // _byte32 从 "0x" 开始，表示正，之后是64位的十六进制数。
  // _byte32[0] 是获取 _byte32 字节序列中的第一个字节，也就是8位2进制，2位16进制，0x表示正。
    bytes1 public _bytes_1_x = _byte32[0]; // 以16进制存储1字节 0x4d

    // enum
    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet {Buy, Hold, Sell}
    // 创建enum变量 action
    ActionSet action = ActionSet.Buy;

   // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }
    

}
// https://sepolia.etherscan.io/tx/0xfaf933170d8c4bf9c597bd9f933ed462c64afd28f1f275033bf4e2707dea9a26

// 问题
// address payable addr;
// addr.transfer(1);
//是调用者向addr转账1wei，而不是合约向addr转账1wei
