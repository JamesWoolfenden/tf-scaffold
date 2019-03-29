# tf-scaffold
This repository to to help with new terraform projects, automation and training. It creates the structure for a new project.

To clone scaffold repository but no with no .git folder.

## Powershell

```powershell
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git scaffold
rm scaffold\.git -recurse -force
```

Edit your profile and add:
```powershell
function scaffold {
param([string]$name)
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git "$name" 
rm "$name\.git" -recurse -force
}
```

## *Nix

```cli
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git scaffold| rm !$/.git -rf 
```
