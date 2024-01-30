#!/bin/bash

########################################

# Author : helly
# Date : 29th jan
# version : v1
#
# this will report the aws resource usage

#########################################

# aws s3
# aws ec2
# aws lambda
# aws IAM user


set -x

# Log the execution timestamp to a file
echo "Script executed at $(date)" >> /home/helly-gtcsys/Documents/linuxcommand/shellscript/executed.log

# list s3 buckets
aws s3 ls >> /home/helly-gtcsys/Documents/linuxcommand/shellscript/s3.log

# list ec2 instance id
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/helly-gtcsys/Documents/linuxcommand/shellscript/ec2.log

#list aws lambda
aws lambda list-functions | jq '.Functions[].FunctionName' >> /home/helly-gtcsys/Documents/linuxcommand/shellscript/lambda.log

#list IAM user
aws iam get-user >> /home/helly-gtcsys/Documents/linuxcommand/shellscript/IAM.log

