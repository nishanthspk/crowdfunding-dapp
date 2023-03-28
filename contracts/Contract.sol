// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract MyContract{

    struct Campaign{
        address owner;
        string title;
        string description;
        uint target;
        uint amountCollected;
        uint deadline;
        string image;
        address[] donators;
        uint[] donations;
    }

    mapping(uint => Campaign) public campaigns;

    uint public numberofCampaigns =0;

    function createCampaign(
        string memory _title,
        string memory _description,
        address _owner,
        uint _target,
        uint _amountCollected,
        uint _deadline,
        string memory _image)

    public returns (uint){
        Campaign storage campaign = campaigns[numberofCampaigns];

        require(campaign.deadline< block.timestamp,"deadline must be in future");

        campaign.owner = _owner;
        campaign.title = _title;
        campaign.description = _description;
        campaign.amountCollected = _amountCollected;
        campaign.target = _target;
        campaign.deadline = _deadline;
        campaign.image = _image;

        numberofCampaigns++;

        return (numberofCampaigns - 1);
    }

    

    function donateToCampign() public {}

    function getdonators() public {}

    function getCampaign() public {}



} 



