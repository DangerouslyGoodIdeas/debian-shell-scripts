# launshell

## Introduction

A [Debian](https://www.debian.org/)  based set of scripts for quality of life improvments in the bash shell. 
I wrote this because it's fun to do stuff like this and, its always good to learn new things.

## Contents

LICENCE
README.md
launshell.sh

components/thematrix.sh
components/nanoprinting.sh

## Dependencies

[asciiquarium](https://askubuntu.com/questions/927441/how-do-i-install-asciiquarium)

## Usage

this is a bash shell script for [Debian](https://www.debian.org/)  based systems (it is written using kubuntu), that should work with similar distros.

it's primary use is a fun way to use commands by reading then typing the first few letters.

I tried to make it pretty by using lolcat to animate the text.

## Instalation

add the directory of "launshell.sh" to to your ~/.bashrc file at the end.

this is my path, yours will be diffrent;

```bash
source ~/git/DangerouslyGoodIdeas/debian-shell-scripts/launshell.sh
```
If you dont know this the ".bashrc" file is hidden in your home directory. to open it to edit, type;

```bash
nano ~/.bashrc
```

## Known Issues

I need to automate the instalation of asciiquarium.
I want to do this on a vm, so it might take me  a while to get arround to.

## Contributing

Pull requests are welcome. For major changes, please add a ".sh" file in contents/

```bash
contents/foo.sh
```
then register and  refrence your new functions in launshell.sh

I am still learning Bash Scripting and Git so I may need help with all this myself.

## License

see [LICENCE](https://github.com/DangerouslyGoodIdeas/debian-shell-scripts/blob/main/LICENSE) file.
