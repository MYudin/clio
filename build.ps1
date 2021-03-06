dotnet build .\clio\clio.csproj -c Release --no-incremental

dotnet build .\cliogate\cliogate.csproj -c Release --no-incremental
dotnet .\clio\bin\Release\netcoreapp3.1\clio.dll compress .\cliogate -d .\clio\cliogate\netcore\cliogate.gz
Get-ChildItem .\cliogate\Files\Bin | Remove-Item -Force

dotnet build .\cliogate\cliogate.csproj -c Release -f net472 --no-incremental
dotnet .\clio\bin\Release\netcoreapp3.1\clio.dll compress .\cliogate -d .\clio\cliogate\netframework\cliogate.gz
Get-ChildItem .\cliogate\Files\Bin | Remove-Item -Force

dotnet build .\clio\clio.csproj -c Debug --no-incremental