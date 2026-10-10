$ErrorActionPreference = 'Stop'
$work = Join-Path ([IO.Path]::GetTempPath()) ('vhs-demo-' + [guid]::NewGuid().ToString())
New-Item -ItemType Directory -Path $work | Out-Null
Copy-Item -LiteralPath 'clackpy' -Destination $work -Recurse
Copy-Item -LiteralPath 'docs/demo/example.py' -Destination $work -Recurse
$work
