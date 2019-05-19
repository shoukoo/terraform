# Terraform docker image
This is to ensrue all the developers use the same version of Terraform

## Setup
Build an image
```
make build
```

Soft link the run.sh file to your preferred bin directory
```
ln -s run.sh /usr/bin/terraform
```
