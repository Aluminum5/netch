$exec=(Split-Path $MyInvocation.MyCommand.Path -Parent)
$last=(Get-Location).Path

Set-Location $exec

rm -Force go.*
go mod init tap2socks
go mod tidy

Set-Location $last
exit $lastExitCode
