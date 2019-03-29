# tf-scaffold
This repository exists to help with new terraform projects, and with automation and training. It designed to create the structure- scaffold that is alway needed for a new project.

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

Then you can use 
```powershell
scaffold -name hello-world
```
To make a new project anytime you like.

## *Nix

```cli
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git scaffold| rm !$/.git -rf 
```
