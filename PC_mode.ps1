$modulePath = "C:\Users\Nero\Workplace\Screen Switcher Powershell\Modules\"

Import-Module (Join-Path $modulePath "PSFramework")
Import-Module (Join-Path $modulePath "AudioDeviceCmdlets")
Import-Module (Join-Path $modulePath "WindowsDisplayManager")

$displays = GetAllPotentialDisplays

$displays[0].Enable()
$displays[1].Enable()
SetPrimaryDisplay($displays[0])
$displays[2].Disable()

Set-AudioDevice -ID "{0.0.0.00000000}.{81652c6c-0c3f-441f-8579-6e914a81d1a6}"