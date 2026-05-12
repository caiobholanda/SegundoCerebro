param([string]$FilePath)

if (-not $FilePath -or -not $FilePath.EndsWith('.md')) { return }

$today = Get-Date -Format 'yyyy-MM-dd'
$content = Get-Content $FilePath -Raw -Encoding UTF8

if ($content -match '(?ms)^---\s*\r?\n(.*?)\r?\n---') {
    $fm = $Matches[1]
    if ($fm -match 'atualizado:') {
        $newFm = $fm -replace 'atualizado:.*', "atualizado: $today"
    } else {
        $newFm = $fm + "`natualizado: $today"
    }
    $content = $content -replace '(?ms)^---\s*\r?\n.*?\r?\n---', "---`n$newFm`n---"
    Set-Content $FilePath -Value $content -Encoding UTF8 -NoNewline
}
