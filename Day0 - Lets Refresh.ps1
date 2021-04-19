#Lesson 0 "Lets Refresh"

$PSVersiontable

update-help

#Verb-Noun syntax

Get-Verb

get-command *service*

get-command get-*


get-command -Module Storage -verb get

get-help -name get-service

get-help -name get-service -Examples

get-help -name get-service -Full

get-help -name get-service -ShowWindow

Get-ChildItem
Get-Service
Get-Process

get-service | Get-Member

get-service | select-object Status

get-service |where-object status -eq 'stopped'

get-service |where-object status -eq 'stopped' | Select-Object name

get-service |where-object status -eq 'stopped' | Select-Object name | Out-File .\stoppedservices.txt

get-module -ListAvailable
