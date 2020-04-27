# dfc-providerportal-managedsql

[![Build status](https://sfa-gov-uk.visualstudio.com/Digital%20First%20Careers/_apis/build/status/Find%20an%20Opportunity/dfc-providerportal-managedsql?branchName=master)](https://sfa-gov-uk.visualstudio.com/Digital%20First%20Careers/_build/latest?definitionId=1690)

## Introduction
This repository is no longer in use

## ARM Templates
This template deploys an Azure Managed SQL Instance and the associated network infrastructure required to run.

## Template Parameters
Two parameters files must be maintained:
    * [parameters.json](parameters.json) is used in the Azure DevOps pipeline and has tokenized values managed within Azure DevOps.
    * [test-parameters.json](test-parameters.json) for local and test deployment. Ensure to clean up reesources after local testing to avoid deploymeent failures caused by duplicate names.


