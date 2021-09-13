# oouve-lamp-ami
Repository builds a LAMP Stack ami in AWS

# Set Environment
The set your credentials in the following environment variables:

AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY /AWS_SESSION_TOKEN (optional)

The following examples show how you configure the environment variables.

Linux, OS X, or Unix

```
$ export AWS_ACCESS_KEY_ID=YOUR_AKID
$ export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
$ export AWS_SESSION_TOKEN=TOKEN
$ export AWS_REGION=ap-south-1
$ export AWS_BUILD_AMI_ID=BASE_AMI
```

Windows

```
C:\> set AWS_ACCESS_KEY_ID=YOUR_AKID
C:\> set AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
C:\> set AWS_SESSION_TOKEN=TOKEN
C:\> set AWS_REGION=us-east-1
```

## CLONE 

clone the repo, using git command.
```
$ git clone https://github.com/ManojChandran/oouve-lamp-ami.git
```

## PACKER 

Packer command
```
$ packer init .
$ packer validate oouve-lamp-ami.json
$ packer build oouve-lamp-ami.json 
```

## IMPORTANT NOTE

Delete the AMI by de-registering it from the AWS AMI, also delete the snapshot to avoid the charges.