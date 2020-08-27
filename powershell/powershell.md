# Powershell plugins installation

## Oh my posh
```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

## thefuck
```powershell
pip install thefuck
```

## powershell-git-aliases
[https://github.com/gluons/powershell-git-aliases](https://github.com/gluons/powershell-git-aliases)
```powershell
Install-Module git-aliases -Scope CurrentUser -AllowClobber
```

## zoxide
> A faster way to navigate your filesystem

1. Scoop (cli installer dependency)
  > Scoop is a command-line installer for Windows.
  ```powershell
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  ```
1. Installation
  ```powershell
  scoop install zoxide
  ```
1. fzf (fuzzy finder dependency)
  ```powershell
  scoop install fzf
  ```
1. Add to profile
  ```powershell
  Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
  })
  ```