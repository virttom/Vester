#requires -Modules Pester
#requires -Modules VMware.VimAutomation.Core

# Variables
Invoke-Expression -Command (Get-Item -Path ($PSScriptRoot + '\Config.ps1'))
#[type]$var1 = $global:config.!!!
#[type]$var2 = $global:config.!!!
[bool]$fix = $global:config.pester.remediate

# Tests
#Describe -Name '!!! Configuration: !!!' -Fixture {
    {
        It -name "!!!" -test {
            #$value = !!!TestMe
            try 
            {
                #$value | Should Be !!!SomethingElse
            }
            catch 
            {
                if ($fix) 
                {
                    Write-Warning -Message $_
                    #Write-Warning -Message "Remediating !!!"                    
                }
                else 
                {
                    throw $_
                }
            }
        }
    }
}