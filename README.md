# tf-scaffold
This repository exists to help with new terraform projects, and with automation and training. It is designed to create the structure- scaffold that is alway needed for a new project.

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
or 
```powershell
function scaffold {
   param([string]$name)
   git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git "$name" 
   rm "$name\.git" -recurse -force
   git init|git add -A
   pre-commit install
   git commit -m "Initial Draft"
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

## So what's in it?

### .gitignore
Has good defaults for working with Terraform

### .pre-commit-config.yaml
Has a standard set of pre-commit hooks for working with Terraform and AWS. You'll need to install the pre-commit framework <https://pre-commit.com/#install>.
And after youve added all these file to your new repo, in the root of your new repository 
```cli
pre-commit install
```

### main.tf
This is an expected file for Terraform modules. I don't use it.

### Makefile
This is just to make like easier for you. Problematic if you are cross platform as make isn't very good/awful at that.

### outputs.tf
A standard place to return values, either to the screen or to pass back from a module.

### provider.tf
You are always going to be using these. 

### README.md
Where all the information goes.

### terraform.tfvars
This is the standard file for setting your variables in.

### variables.tf
Contains a map variable **common_tags** which should be extended and used on every taggable object. 
