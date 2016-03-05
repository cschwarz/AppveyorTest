$versionFile = "$env:APPVEYOR_BUILD_FOLDER\version.txt"
$version = [IO.File]::ReadAllText($versionFile)
$version = "$version-ci$env:APPVEYOR_BUILD_NUMBER"
Add-AppveyorMessage -Message "Version: $version"
Update-AppveyorBuild -Version $version