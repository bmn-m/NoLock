<# 2021 by bmn-m #>
function load
{
$host.ui.RawUI.WindowTitle = “NOLOCK”
$pshost = get-host
$pswindow = $pshost.ui.rawui
$newsize = $pswindow.buffersize
$newsize.height = 3000
$newsize.width = 150
$pswindow.buffersize = $newsize
$newsize = $pswindow.windowsize
$newsize.height = 3
$newsize.width = 21
$pswindow.windowsize = $newsize
clear
}

function endless
{
while($true)
{
$myshell = New-Object -com "Wscript.Shell"
$myshell.sendkeys("{F13}")
$d = get-date
$a = get-random -Minimum 100 -Maximum 300
$x = $d.AddSeconds($a)
Write-Output "   NO SCREEN LOCK"
Write-Output "$d"

Start-Sleep -s $a
clear
}
}
load
endless
