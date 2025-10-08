# Opens a random file based on the filter below
# If you only want to search the current folder remove -Recurse from the gci

$filelist = @("*.jpg", "*.jpeg", "*.png", "*.gif") | %{(get-childitem -File -Recurse -Filter $_ -ErrorAction Ignore).FullName}

$newlist = $filelist | foreach {'"' + $_ + '"'}

$file1 = $newlist | get-random

start-process $file1