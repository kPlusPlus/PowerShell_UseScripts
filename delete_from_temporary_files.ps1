# Delete not in-use *.tmp files

echo " Delete not in-use *.tmp files "
# $FilesToRemove = Get-ChildItem -Path C:\Windows -Include *.tmp, *.etl -Recurse -ErrorAction SilentlyContinue
$FilesToRemove = Get-ChildItem -Path D:\Test -Include *.tmp, *.etl -Recurse -ErrorAction SilentlyContinue
echo " List created successfully"
echo $FilesToRemove
$FilesToRemove | Remove-Item -ErrorAction SilentlyContinue
echo "+ State 1"
break;

# Delete not in-use anything in your %temp% folder
echo " Delete not in-use anything in your %temp% folder "
Remove-Item -Path $env:TEMP\*.* -Recurse
echo "+ State 2"

# Delete not in-use anything in the C:\Windows\Temp folder
echo " Delete not in-use anything in the C:\Windows\Temp folder "
Remove-Item -Path $env:windir\Temp\*.* -Recurse
echo "+ State 3"