<#
.SYNOPSIS
Execute an Azure Data Factory pipeline via a json-based definition

.DESCRIPTION
Execute an Azure Data Factory pipeline via a json-based definition

.PARAMETER ResourceGroupName
The name of the resource group that contains the Data Factory instance

.PARAMETER DataFactoryName
The name of the Data Factory instance

.PARAMETER PipelineName
The name of the Data Factory pipeline to execute


.EXAMPLE
Execute-AzureDataFactoryPipeline -ResourceGroupName dfc-foo-bar-rg -DataFactoryName dfc-foo-bar-df -PipelineName "A DataFactory Pipeline" -Verbose

#>
[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true)]
    [String]$ResourceGroupName,
    [Parameter(Mandatory=$true)]
    [String]$DataFactoryName,
    [Parameter(Mandatory=$true)]
    [String]$PipelineName
)

Invoke-AzDataFactoryV2Pipeline -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -PipelineName $PipelineName
