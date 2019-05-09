# ssh-reg

Docker image for [ssh-reg](https://github.com/mpriscella/ssh-reg).

## Usage

Add the following alias to your `.bashrc` or `.zshrc`.

```
  alias ssh-reg='docker run -it --rm --name ssh-reg -v $HOME/.ssh/config:/root/.ssh/config -e COLUMNS="`tput cols`" -e LINES="`tput lines`" mpriscella/ssh-reg'
```
