pragma solidity ^0.5.5;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";
/**
    ERC721 Token URI JSON Schema
    {
        "title": "Download Metadata",
        "type": "object",
        "properties": {
            "Text": {
                "type": "string",
                "description": ""
            },
            "Song": {
                "type": "string",
                "description": ""
            },
            "Video": {
                "type": "uint",
                "description": ""
            }
        }
    }
**/
contract Wheels is ERC721Full {
    constructor() ERC721Full("Wheels", "WHLS") public { }
    using Counters for Counters.Counter;
    Counters.Counter token_ids;
    struct File {
        string file_id;
        uint alterations;
    }
    // Stores token_id => File
    // Only permanent data that you would need to use within the smart contract later should be stored on-chain
    mapping(uint => File) public files;
    event Alteration(uint token_id, string report_uri);
    function registerDownload(address owner, string memory file_id, string memory token_uri) public returns(uint) {
        token_ids.increment();
        uint token_id = token_ids.current();
        _mint(owner, token_id);
        _setTokenURI(token_id, token_uri);
        files[token_id] = File(file_id, 0);
        return token_id;
    }
    function reportAlteration(uint token_id, string memory report_uri) public returns(uint) {
        files[token_id].alterations += 1;
        // Permanently associates the report_uri with the token_id on-chain via Events for a lower gas-cost than storing directly in the contract's storage.
        emit Alteration(token_id, report_uri);
        return files[token_id].alterations;
    }
}
