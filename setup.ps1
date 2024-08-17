$modulePath = "C:\Users\Nero\Workplace\Screen Switcher Powershell\Modules"
New-Item -ItemType Directory -Path $modulePath -Force

Save-Module -Name AudioDeviceCmdlets -Path $modulePath
Save-Module -Name WindowsDisplayManager -Path $modulePath
Save-Module -Name PSFramework -Path $modulePath # this is a dependency