#!/bin/bash
echo "Another example of using regex."
echo "I want to extract the account number from an AWS ARN, The arn is in variable and I want it into another variable"
echo "In my use case, the arn is a eks cluster arn. It is not a generic regex, it works probably in the EKS cases and in no other is guaranted."

arn_value="arn:aws:eks:us-west-1:112233445566:cluster/cluster-special-abc-5"

echo "arn --> $arn_value"

echo "Extract the aws account"

aws_account=$(echo $arn_value | sed -r 's/([a-z:]{4}){3}[a-z0-9-]+:([0-9]+):.+/\2/g')
echo ""

echo "Account number is -> $aws_account"

echo ""

echo "Notice that 'arn:aws:eks:' is 3 times repeting ([a-z:]{4}), then 'us-west-1' is simple '[a-z0-9-]+' and the account number comes after the ':' with numbers only, ([0-9]+), the rest is simple :.+."
echo "Then I've used sed to extract the value of the second group and with the rest of the command to put it in the aws_account variable"
