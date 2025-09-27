// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductRegistry {
  struct Event { uint256 ts; string status; string location; string metaHash; }
  struct Product { uint id; address owner; string batch; uint createdAt; Event[] events; }
  mapping(uint => Product) private products;

  function registerProduct(uint id, string memory batch) public {
    require(products[id].createdAt == 0, "exists");
    products[id].id = id;
    products[id].owner = msg.sender;
    products[id].batch = batch;
    products[id].createdAt = block.timestamp;
  }

  function addEvent(uint id, string memory status, string memory location, string memory metaHash) public {
    require(products[id].createdAt != 0, "no product");
    products[id].events.push(Event(block.timestamp, status, location, metaHash));
  }

  // add view helpers to fetch events (or emit events to be read off-chain)
}
