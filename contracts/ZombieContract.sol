pragma solidity ^0.5.8;

contract ZombieFactory {
  uint256 internal dnaDigits = 16;
  uint256 internal dnaModulus = 10**dnaDigits;

  struct Zombie {
    string name;
    uint256 dna;
  }

  Zombie[] public zombies;

  function createZombie(string memory _name, uint256 _dna) public {
    zombies.push(Zombie(_name, _dna));
  }
}
