pragma solidity 0.6.6;

import "@openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract AdvancedCollectible is ERC721, VRFConsumerBase {

    bytes32 internal keyHash;
    uint256 public fee;

    constructor(address _VRFCoordinator, address _LinkToken, bytes32 _keyhash) public
    VRFConsumer(_VRFCoordinator, _LinkToken)
    ERC721("SexyCactus", "SEXC"){
        keyHash = _keyhash;
        fee = 0.1 * 10 ** 18; // 0.1 LINK
    }

    function createCollectible(uint256 userProvidedSeed, string memory tokenURI)
    public returns (bytes32){
        
    }

}