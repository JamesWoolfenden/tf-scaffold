#!/usr/bin/env pwsh
$ErrorActionPreference ="Stop"
Push-Location
Set-Location example/examplea
Remove-Item .terraform -Recurse -ErrorAction SilentlyContinue
Remove-Item .terraform.lock.hcl
terraform init -upgrade
terraform validate
make valid
Pop-Location
