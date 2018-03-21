# AppVeyor Testing
# $manifest = "$env:APPVEYOR_BUILD_FOLDER\EUCMonitoring\EUCMonitoring.psd1"
# $module = "$env:APPVEYOR_BUILD_FOLDER\EUCMonitoring\EUCMonitoring.psm1"

# Local Testing 
$manifest = "F:\_Dave\Scripts\EUCMonitoring\PSGallery\EUCMonitoring.psd1"
$module = "F:\_Dave\Scripts\EUCMonitoring\PSGallery\EUCMonitoring.psm1"

Describe 'Module Metadata Validation' {      
    it 'Script fileinfo should be ok' {
        {Test-ModuleManifest $manifest -ErrorAction Stop} | Should Not Throw
    }
        
    it 'Import module should be ok' {
        {Import-Module $module -Force -ErrorAction Stop} | Should Not Throw
    }
}