<#
.SYNOPSIS
Create/Update an Azure Data Factory pipeline via a json-bsaed definition

.DESCRIPTION
Create/Update an Azure Data Factory pipeline via a json-bsaed definition

.PARAMETER ResourceGroupName
The name of the resource group that contains the Data Factory instance

.PARAMETER DataFactoryName
The name of the Data Factory instance

.PARAMETER PipelineName
The name of the Data Factory pipeline to update

.PARAMETER DefinitionFile
The full path to the json-based pipeline defintion file


.EXAMPLE
Import-AzureDataFactoryPipeline -ResourceGroupName dfc-foo-bar-rg -DataFactoryName dfc-foo-bar-df -PipelineName "An DataFactory Pipeline"   -DefinitionFile $(System.DefaultWorkingDirectory)/DefinitionFile -Verbose

#>
[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true)]
    [String]$ResourceGroupName,
    [Parameter(Mandatory=$true)]
    [String]$DataFactoryName,
    [Parameter(Mandatory=$true)]
    [String]$PipelineName,
    [Parameter(Mandatory=$true)]
    [String]$DefinitionFile
)


if(-not (Test-Path $DefinitionFile)) {
    Write-Error "Definition file '$DefinitionFile' does not exist!"
}

Set-AzDataFactoryV2Pipeline -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -PipelineName $PipelineName -DefinitionFile $DefinitionFile -Force -Verbose:$VerbosePreference
