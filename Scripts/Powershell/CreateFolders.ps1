<#
    =====================================================================
    File:         CreateFolders.ps1
    Folder:       C:\Projects\Brain\Scripts\Powershell
    Description:  Script to create the required folder structure for the 
                  Brain project, aligned with the updated design.
    Author:       Michael G. Lustig
    Created On:   2024-12-29 20:00:00 UTC
    Version:      2.0
    Updated By:   Michael G. Lustig
    Last Updated: 2024-12-29 20:00:00 UTC
    Copyright:    (c) Editoza, LLC - All rights reserved.
    =====================================================================
#>

# Root project folder
$baseFolder = "C:\Projects\Brain"

# Backend folders
$backendFolders = @(
    "$baseFolder\Backend\Core\Actions",
    "$baseFolder\Backend\Core\Messages",
    "$baseFolder\Backend\Core\Workflows",
    "$baseFolder\Backend\Core\Context",
    "$baseFolder\Backend\Core\Auth",
    "$baseFolder\Backend\Core\Routing",
    "$baseFolder\Backend\Core\LoadBalancer",
    "$baseFolder\Backend\Core\Monitor",
    "$baseFolder\Backend\Core\Templates",
    "$baseFolder\Backend\Services\ActionService",
    "$baseFolder\Backend\Services\MessageService",
    "$baseFolder\Backend\Services\WorkflowService",
    "$baseFolder\Backend\Services\Logger",
    "$baseFolder\Backend\Services\Manager",
    "$baseFolder\Backend\Services\TestService",
    "$baseFolder\Backend\Services\Simulator",
    "$baseFolder\Backend\Extensions\Plugins",
    "$baseFolder\Backend\Extensions\CustomWorkflows",
    "$baseFolder\Backend\Extensions\Handlers",
    "$baseFolder\Backend\Extensions\Transformers",
    "$baseFolder\Backend\Libraries\Crypto",
    "$baseFolder\Backend\Libraries\Utils",
    "$baseFolder\Backend\Libraries\Storage"
)

# Frontend folders
$frontendFolders = @(
    "$baseFolder\Frontend\ConsoleUI\Views",
    "$baseFolder\Frontend\ConsoleUI\Config",
    "$baseFolder\Frontend\ConsoleUI\Logs",
    "$baseFolder\Frontend\WebUI\Components",
    "$baseFolder\Frontend\WebUI\Pages",
    "$baseFolder\Frontend\WebUI\Services",
    "$baseFolder\Frontend\WebUI\Tests",
    "$baseFolder\Frontend\Shared\Components",
    "$baseFolder\Frontend\Shared\Assets"
)

# Config folders
$configFolders = @(
    "$baseFolder\Config\Global",
    "$baseFolder\Config\Services",
    "$baseFolder\Config\Actions",
    "$baseFolder\Config\Messages",
    "$baseFolder\Config\Workflows",
    "$baseFolder\Config\Auth"
)

# Docs folders
$docsFolders = @(
    "$baseFolder\Docs\Backend\Core",
    "$baseFolder\Docs\Backend\Services",
    "$baseFolder\Docs\Backend\Extensions",
    "$baseFolder\Docs\Backend\Libraries",
    "$baseFolder\Docs\Frontend\ConsoleUI",
    "$baseFolder\Docs\Frontend\WebUI",
    "$baseFolder\Docs\Frontend\Shared",
    "$baseFolder\Docs\Config\Actions",
    "$baseFolder\Docs\Config\Messages",
    "$baseFolder\Docs\Config\Workflows",
    "$baseFolder\Docs\Config\Auth",
    "$baseFolder\Docs\Tools\Deployment",
    "$baseFolder\Docs\Tools\Automation",
    "$baseFolder\Docs\Tools\Testing"
)

# Tools folders
$toolsFolders = @(
    "$baseFolder\Tools\Deployment",
    "$baseFolder\Tools\Automation",
    "$baseFolder\Tools\Diagnostics"
)

# Scripts folders
$scriptsFolders = @(
    "$baseFolder\Scripts\Powershell",
    "$baseFolder\Scripts\Bash",
    "$baseFolder\Scripts\Python"
)

# Tests folders
$testsFolders = @(
    "$baseFolder\Tests\Functional",
    "$baseFolder\Tests\Integration",
    "$baseFolder\Tests\Unit",
    "$baseFolder\Tests\EndToEnd"
)

# Combine all folder arrays
$folders = $backendFolders + $frontendFolders + $configFolders + $docsFolders + $toolsFolders + $scriptsFolders + $testsFolders

# Create folders
foreach ($folder in $folders) {
    if (-Not (Test-Path -Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
        Write-Host "Created: $folder"
    } else {
        Write-Host "Already exists: $folder"
    }
}

Write-Host "Folder structure creation complete."
