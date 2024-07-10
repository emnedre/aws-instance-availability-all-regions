#!/bin/bash

# List of all AWS regions
regions=$(aws ec2 describe-regions --query "Regions[*].RegionName" --output text)

echo "Instance type: "
read instance_type
# Instance type to check
instance_type="$instance_type"

# Loop through each region and check availability
for region in $regions; do
    echo "Checking region: $region"
    result=$(aws ec2 describe-instance-type-offerings \
        --region $region \
        --location-type region \
        --filters Name=instance-type,Values=$instance_type \
        --query 'InstanceTypeOfferings[*].Location' \
        --output text)
    
    if [ -n "$result" ]; then
        echo "Instance type $instance_type is available in region: $region"
    else
        echo "Instance type $instance_type is NOT available in region: $region"
    fi
done

