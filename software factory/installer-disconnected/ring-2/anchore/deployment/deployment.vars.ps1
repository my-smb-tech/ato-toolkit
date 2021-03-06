$DepArgs = @{}

[DeploymentType] $DepArgs.DeploymentType = [DeploymentType]::Disconnected
[string] $DepArgs.SubscriptionId = ""
[string] $DepArgs.TenantId = ""
[string] $DepArgs.ClusterType = "ocp3"

[string] $DepArgs.AppUrl = "anchore.apps.dev-openshift.com"

# These three strings must be all lowercase
[string] $DepArgs.AppName = "anchore"
[string] $DepArgs.Namespace = "anchore"
[string] $DepArgs.Backend = "postgres"

[string] $DepArgs.StorageClass = "glusterfs-storage"

[bool] $DepArgs.PrivRegCreds = $false
[string] $DepArgs.PrivRegUn = "privateUser"
[string] $DepArgs.PrivRegPw = "privatePass"
[string] $DepArgs.PrivRegEmail = "user@company.com"


[string] $DepArgs.ContainerRegistry = "10.50.101.4:5000"
[string] $DepArgs.AdminUsername = "ocpadmin"
[string] $DepArgs.SshKey = "cfs-cert"

$ProductLine = "FF".ToUpper()
$Environment = "BETA".ToUpper()
$RegionLocation = "EAST".ToUpper()

[string] $DepArgs.ResourceGroup = "$($ProductLine)-$($Environment)-[YourRandomValue]-OCP-RG01"

$BastionShortname = "BSTN"

$Prefix = "$($Environment)-$($RegionLocation)"
[string] $DepArgs.BastionMachineName = "$($Prefix)-[YourRandomValue]-$($BastionShortname)-001v"

[string] $DepArgs.BastionProxyUsername = "1"
[string] $DepArgs.BastionProxyIp = "1"




# SIG # Begin signature block
# MIIIZwYJKoZIhvcNAQcCoIIIWDCCCFQCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU5+WxLUZ34HvH3BsZtjjpwag6
# p4ygggUEMIIFADCCAuigAwIBAgIQFaxo6DEMNq5Bd3mHM4/5BzANBgkqhkiG9w0B
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
# AgEVMCMGCSqGSIb3DQEJBDEWBBTqypv0tx8Rervz5oWQbPuGfusdsTANBgkqhkiG
# 9w0BAQEFAASCAgBofZ0h61xBoUUiyLYBzmBbiPsMCpgYj0cyf2m7rt1ArSICCYcE
# o/9dVX08KQxqfboqk9k/GJVCXVqCAYKDpiI+eosqkDBIfQ6vPh3ScidKdKP7hrrn
# qsnDf1n035Ez74lBEOzwTRu+VG3TxDEUvwk4O+4XRbqSLoRZFM9mwfCs+hUfJi4W
# XznNA1G9cABEP9USZ1LnpZFJUBZb8sPByRdgdOF70BC4gZAEBNFOYcsTTdduKERn
# V+1pt11WyfsSc9hJmU1qtj4rIanLWN4YlbpCPju+pxprRa5lnPGH88AyFjwPjAbY
# JatSPAj2V5YK0gAjVYc2s2IsekLxqMZXL9tkgqpBY1BvgKKHvwIItwKsT6wCcW2G
# HACaOgTBVUd0cAQc1VVq47yvgNNY+L4oTy2D5HgpJLAWs6rh0FJIHve7gWGouF6F
# GaNRVJaNLdDnu6RLe+9umP1nVKF5IIfEbtxGUszfSpgYWWzSxrhzezKO1arh/KAZ
# TkHMfkaKVET9DDE8HRReMsZJ8/gXdp5zg2Xar3/mUWv5lmx/t6xMiXnwoLf2aOk6
# wQYfvEkBfO6Qbaiu2+8l415RNhiU4Q2nFiGhhUOZqTohgOh2+vj8SaqGCcUYl7LS
# 2Kdwuc9Rl8lDkyw6Tt3SUfh0rloEJO1lwcBDs8DRlyKqnTfvd+U3KoD+sA==
# SIG # End signature block
