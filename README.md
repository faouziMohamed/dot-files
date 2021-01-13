# Dot-files (.*)  

 <p align='left'>
  <a href='https://github.com/faouziMohamed/Dot-files/pulls'>
     <img src='https://img.shields.io/badge/Pull%20request-Welcome-96ff00.svg?&style=for-the-badge' alt='pr badge'>
  </a>
 </p>  

My personal dot-files in Ubuntu and WSL(on windows)  
<p align="left">
    <img src='images/preview.png' alt='Preview with git status' height='400'>
</p>   

## Installation  

### Warning  
- If you want to give these dot-files a try, you ***should first fork this repository, review the code, and remove things  you don’t want or need***. Don’t blindly use my settings unless you know  what that entails. Use at your own risk!

- You probably don't need to sign your git commits using my git `user.name` and `user.email`, though.   
For that you must either remove or edit these two first lines in the [home/user/git/_gitconfig.txt](home/user/git/_gitconfig.txt) file changing the name here `Faouzi Mohamed` by the name you want and changing the email `57812398+faouziMohamed@users.noreply.github.com` replacing by the your.
```bash
 1|  user.name,  Faouzi Mohamed
 2|  user.email, 57812398+faouziMohamed@users.noreply.github.com
..|  ...
```
_________________________
### Installation steps 
* You can clone the repository wherever you want.
* The bootstrapper script will pull in the latest version and copy the files to your home folder using `rsync` command.

Before install make sure that `rsync` is installed : 

```bash
sudo apt install rsync
```

Clone the repository wherever you want or download the repository in zip format.

```bash
git clone git@github.com:faouziMohamed/Dot-files.git
# Or
git clone https://github.com/faouziMohamed/Dot-files.git
```
```bash
cd Dot-files
chmod +x bootstrap.sh
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

## License

This repository is under [MIT](LICENSE) license

### Feedback 

Suggestions and improvements are [welcome](https://github.com/faouziMohamed/Dot-files/issues)

### Thanks...

* Especially for [Mathisbynens](https://github.com/mathiasbynens/dotfiles)'s dot-files repo and many others.
