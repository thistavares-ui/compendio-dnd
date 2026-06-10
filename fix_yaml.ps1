$contentDir = ".\content"
$files = Get-ChildItem -Path $contentDir -Recurse -Filter "*.md"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    if ($content -match "^---(?:\r?\n)([\s\S]*?)(?:\r?\n)---") {
        $frontmatter = $matches[1]
        $lines = $frontmatter -split "\r?\n"
        $newLines = @()
        $changed = $false
        
        foreach ($line in $lines) {
            if ($line -match "^\s*\[(.*)\]\s*$") {
                $changed = $true
                $items = $matches[1] -split ","
                foreach ($item in $items) {
                    $item = $item.Trim()
                    if ($item -ne "") {
                        $newLines += "  - $item"
                    }
                }
            } else {
                $newLines += $line
            }
        }
        
        if ($changed) {
            $newFrontmatter = $newLines -join "`n"
            $newContent = $content -replace "^---(?:\r?\n)[\s\S]*?(?:\r?\n)---", "---`n$newFrontmatter`n---"
            Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8
            Write-Host "Fixed: $($file.FullName)"
        }
    }
}
