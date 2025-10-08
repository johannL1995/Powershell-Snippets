# Gets YouTube video thumbnails and save them using BITS

write-host -foregroundcolor Cyan -backgroundcolor Black "Paste YouTube URL please"
$yturl = read-host "YouTube URL"

write-host -foregroundcolor Cyan -backgroundcolor Black "Select Resolution please"
write-host -foregroundcolor Cyan -backgroundcolor Black "1 = 720 | 2 = default"
[Int]$number = read-host "Resolution (numer 1 or 2 only)"

if ($number -eq 1) {
    $trimurl = $yturl -split '=' | Select-Object -Last 1
    Start-BitsTransfer -Source "https://i.ytimg.com/vi/$trimurl/hq720.jpg" -Destination ".\$trimurl.jpg"
}

elseif ($number -eq 2) {
    $trimurl = $yturl -split '=' | Select-Object -Last 1
    Start-BitsTransfer -Source "https://i.ytimg.com/vi/$trimurl/hqdefault.jpg" -Destination ".\$trimurl.jpg"
}

else {
        write-host -foregroundcolor red -backgroundcolor Black "Error, not a valid number."
}