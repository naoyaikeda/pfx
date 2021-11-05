all:	cleanup restore build
restore:
	dotnet restore -r win10-x64
build:
	dotnet build -r win10-x64
cleanup:
	dotnet clean -r win10-x64
publish: bin\Release\net5.0\win10-x64\pfx.exe
	dotnet publish -c Release -r win10-x64
