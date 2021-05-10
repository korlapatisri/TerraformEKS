#!/bin/bash
terraform refresh
terraform init
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -t|--target) target="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done
terraform plan -var-file ./env/variable-$target.tfvars
terraform apply -var-file ./env/variable-$target.tfvars