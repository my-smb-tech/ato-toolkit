param (
    [ValidateNotNullOrEmpty()]
    [string]
    $VariableFile = ".\deployment.vars.ps1"
)
$CommonLibraryVersionRequirement = "0.0.1"

if (-not (Test-Path $VariableFile))
{
    Throw "Variable file, $VariableFile, not found.  Please double check the path"
    exit
}

Get-Command Log-Information -ErrorAction SilentlyContinue | Out-Null

$installedModule = Get-Module -Name CloudFit.Dsop.Common
if ($installedModule)
{
    Write-Output "Found CloudFit.Dsop.Common module. Checking version requirements."
    if ($installedModule.Version -ge $CommonLibraryVersionRequirement)
    {
        Write-Output "Found version $($installedModule.Version)"
    }
    else
    {
        throw "$($installedModule.Version) is less than minimum required version: $CommandLibraryVersionRequirement"
    }
}
else
{
    throw "Cannot find CloudFit.Dsop.Common library.  Cannot continue."
}

Set-LogFile -LogFile "./mattermostdeployment.log"

$VariableFile = Get-ChildItem $VariableFile
Log-Information "Loading variable file, $VariableFile"
. $VariableFile

Log-Information "Pre install checks complete. Running deployment."
New-Item -Path "./output" -ItemType "directory"
./do-deployment.ps1 @DepArgs | Tee-Object -FilePath ./output/do-elastic.txt






# SIG # Begin signature block
# MIIIZwYJKoZIhvcNAQcCoIIIWDCCCFQCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUdabYMz0w22Gw2mTuiTru4fW1
# x92gggUEMIIFADCCAuigAwIBAgIQFaxo6DEMNq5Bd3mHM4/5BzANBgkqhkiG9w0B
# AQsFADAYMRYwFAYDVQQDDA1KZXJlbXlPbGFjaGVhMB4XDTIwMDgzMTIxMTUxMFoX
# DTIxMDgzMTIxMjQ1OVowGDEWMBQGA1UEAwwNSmVyZW15T2xhY2hlYTCCAiIwDQYJ
# KoZIhvcNAQEBBQADggIPADCCAgoCggIBAJu5Y9YhmKGhwU+/kj7dsj1OvrliwUCe
# kdPsfdTAPh9peuKKF+ye8U3l3UT8luf5nCYlG/eKe5YxI3pBYhfZwy7yKZpsx5Tn
# ST7t38owgktj0W6YYfoDgfR4zwLtRk3taNWiZeyHu/UhszNs4d3L9wl6Ei/otfRt
# jyz1UO40361YWriD43jbnsCLjVpIfiwW2LH1H9cVoCLnbMZ217rpVxDiTlFPBGeW
# Bk2pxPn5Z2Ly1j6q/SlliEOKDXXrPQZz+sSc3L/ZXBl7D2/ua4+xJmDw/XE1GUBA
# Pldde/IHAzmp6lHHgdQLjCaks//cucDeYBzVTD8XZo8T9WIWU6o6I6SRzGKSIHcX
# SoKVy1hjaW14wJHImw/nlnCgDLMcBBpnRFo6UHAAUzpWlcgqCC+johdXVSa62+hP
# bLwgqfm6uty0rJRwkhbm1Qi0w6HOUZiIkBIz/5Q83t9nLhWL+uWndKIe9BiVfl1f
# x0p5Ax5hzWD5PV1rjrXSQLpL9PRLKcEAy7EoXa/5VGGKSAOrUZdey39vL3AOct0w
# i3vh49DTfWXuxxHbiWz2VEIZqNWQu/rIi9uiCvzaFUo19DwSZrv1ac+OOmZsloqB
# yDugGWFmxiQjEFWtGxEqwDXPDsJE/gKEPvUha37YCI6iQTtcwiwJpnPfGWODqUHH
# 0/NuToVp4ci5AgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQU16Rx2qHCuXNeExsbMFbSE/Io0NYwDQYJKoZIhvcN
# AQELBQADggIBAG+8jfz9QCzSUK5WGIW0gnEK3rN8oxmSax7C6HJfGPMLXHBEWtBt
# ZCeD8XXkTMu8fhvQDseGgxJ4NmRR+s1d8YtnVgtDbEhO/FHSpOPonTvIx13t37Uz
# Tbvq0ZLeB6z55noAOIhXBs9or1pzxio71sDNfYpIB6s41X5/m1UZk8toxcPDqQGL
# Kg3C3xqgg9+2kQ16flYKvZh2UoK5Y0EyEb8rMc+6AFH3GgcP7yoUsUENP9vkLbXm
# 2VRMIzd/Tee7oKQK50K1GxtlWLUUjuAUMCQh+9K/JyAUro9jfMNHCGcPTaayXBvl
# kaCOjb1IrKgtsS/c2p7mgbssdFHHGPBlbggogGFxYof+6SDI2YB8AqT3RYJdJH4c
# 6StsYUka1faCYcZfz+DIm2+avSCKdliOb285WT8yqoh7P2qN6bLt2au0IsfUKR+d
# EgSL3waCmT+xUI6BI6mpnSjgA0/Hr6I/wkxHu/hk0G0q4OdBpXpSzCzurKPdQWB+
# K/PaQSCyEGk4IGqFrHMx863mtW+mlm6jCM/5/b5ugAmF4XoNkVzdmfFhepqq4h0v
# ioKE+1sLxgq2lFtKAZMjpJB7HZ9KVQcb/hSYlgms/mG6P+4GIhf7ZfvlI2LsCdbV
# 42kEAfDVDuHcCqWyJr43vm+vY6xzjDRnNmaqVJgH1sZO0kwajDOKkm/JMYICzTCC
# AskCAQEwLDAYMRYwFAYDVQQDDA1KZXJlbXlPbGFjaGVhAhAVrGjoMQw2rkF3eYcz
# j/kHMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqG
# SIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3
# AgEVMCMGCSqGSIb3DQEJBDEWBBQF7pjvPe4APy+fLwbiCU6M0LCObTANBgkqhkiG
# 9w0BAQEFAASCAgCPmkJ+WH2mEoaecqYFMW7dzBJkV+cq3kNqtMdWI8MfzR1x4XUb
# EHx8xVwtiDJfZfg1ahCzn5xE+i8vIaNTuRqfcI8P07iv1CczXiRRbmuqRGAq8jft
# rXGxdgvm1XxHL7Lht1udv4VHeiDlzZD0O0sB9NAsW6uruUj7+0kRqERkjg33MV+h
# GSf76eY7uwTJaskUQ71PqY7yte7b2Wvd6d5Hs6AIsVRBlBR9obthN8VK+0PbEpFU
# Kv3mnOhKc3Tr61Qq8RpCwcv1mHBH9/zVeDVafYlPj4zJOFfjq2swSqT2OkjuPul0
# E3qHjDqBGuzFHCAcc3r4brfYJGZ0P3y4BsYlhE9kpBHJ1VdUhae4qmKFFwNmrUCx
# EVIPSnlpVBHO9KLYh6QYeUZsUV2oyZFltJvitZBsce5D1mtErJ90wtuOy/Ml3Csl
# EiAYHqnOJ0hA0uTxRSmfANtrRzkenR9uIJJtibLJhvTMu4heVqrPO9cjTdVcTV2/
# 9pr1zF6jI4FTQy5TfCRlJ4AoONFCXUN74KZmCxRFOj2B3YIz3/NLkLQmgXlPfcEL
# cFE43ZadqVSVEjQPSqYQlt0XuHmxCcYEphuZJDhFHRsSJ3DGNgKboWx8c6AHNMLC
# I2J1nOnMkndSc5v1s6e6CH6YE3/CNPT429/pNQ2PN2Htr6wWKe0nhgp+eA==
# SIG # End signature block
