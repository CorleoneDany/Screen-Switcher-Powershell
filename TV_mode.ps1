$modulePath = "C:\Users\Nero\Workplace\Screen Switcher Powershell\Modules\"

Import-Module (Join-Path $modulePath "PSFramework")
Import-Module (Join-Path $modulePath "AudioDeviceCmdlets")
Import-Module (Join-Path $modulePath "WindowsDisplayManager")

$displays = GetAllPotentialDisplays

$displays[0].Disable()
$displays[1].Disable()
$displays[2].Enable()
SetPrimaryDisplay($displays[2])

Set-AudioDevice -ID "{0.0.0.00000000}.{0553fac9-5849-478b-b3d4-3d89534c149a}"