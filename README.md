# dfc-shared

[![Build status](https://sfa-gov-uk.visualstudio.com/Digital%20First%20Careers/_apis/build/status/DFC%20Shared/dfc-shared?branchName=master)](https://sfa-gov-uk.visualstudio.com/Digital%20First%20Careers/_build/latest?definitionId=1690)


Two parameters files must be maintained:
    * [parameters.json](parameters.json) is used in the Azure DevOps pipeline and has tokenized values managed within Azure DevOps.
    * [test-parameters.json](test-parameters.json) for local and test deployment. Ensure to clean up reesources after local testing to avoid deploymeent failures caused by duplicate names.

