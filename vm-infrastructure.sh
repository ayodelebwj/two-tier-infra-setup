#!/bin/bash
#AWS COMMAND FOR WEB VM PROVISION IN AZ1A
aws ec2 run-instances \
  --image-id aaa\
  --instance-type t2.micro \
  --key-name ddd \
  --placement AvailabilityZone=us-east-1a \
  --subnet-id bbb \
  --security-group-ids ccc\
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AZ-1a-webserver}]'

#AWS COMMAND FOR WEB VM PROVISION IN AZ1B
aws ec2 run-instances \
  --image-id aaa\
  --instance-type t2.micro \
  --key-name ddd \
  --placement AvailabilityZone=us-east-1b \
  --subnet-id bbb\
  --security-group-ids ccc\
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AZ-1b-webserver}]'


#AWS COMMAND FOR APP VM PROVISION IN AZ1A
aws ec2 run-instances \
  --image-id aaa \
  --instance-type t2.micro \
  --key-name ddd \
  --placement AvailabilityZone=us-east-1a \
  --subnet-id bbb \
  --security-group-ids ccc \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AZ-1a-appserver}]'


#AWS COMMAND FOR APP VM PROVISION IN AZ1B
aws ec2 run-instances \
  --image-id aaa\
  --instance-type t2.micro \
  --key-name ddd \
  --placement AvailabilityZone=us-east-1b \
  --subnet-id bbb \
  --security-group-ids ccc \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AZ-1b-appserver}]'
