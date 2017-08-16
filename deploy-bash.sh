#!/bin/sh

#Resource Group Name
RG=DVQuesta

SUBSCRIPTIONNAME=
LOCATION=eastus2
TEMPLATEPATH=.
PARAMPATH=.

az account set --subscription $SUBSCRIPTIONNAME
echo "Account set to $SUBSCRIPTIONNAME"
az account show -o table

az group create --name $RG --location $LOCATION

az group deployment create -g $RG --template-file $TEMPLATEPATH/avm-base-CentOS.json --parameters @$PARAMPATH/dvquesta.json