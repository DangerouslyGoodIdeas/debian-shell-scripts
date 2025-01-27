# debian-shell-scripts

## Context
A repo for my debian based bash scripts. 

Contents

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

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

I am still learning Git so I may need help with this myself.

## License

see [LICENCE](https://github.com/DangerouslyGoodIdeas/debian-shell-scripts/blob/main/LICENSE) file.
