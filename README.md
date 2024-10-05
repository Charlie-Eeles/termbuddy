## What is Termbuddy?

Termbuddy is a collection of commands for improving and simplifying the use of the terminal for development.\
I do all of my development inside the terminal and this was made to improve my dev-ex.

## How do I use Termbuddy?

Termbuddy itself is not a compiled app or something that needs installing. Simply paste the contents of termbuddy.sh into your preferred shell config.\
I use ZSH so I have the code in my `.zshrc` file.

## Dependencies

Termbuddy commands make use of:

- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)

## Commands

All commands are run using tebu (tebu = Termbuddy).

`tebu set-home`: Set your TERMBUDDY_HOME environment variable to the current working directory, this is used by Termbuddy to determine where to run commands from, if not set, Termbuddy will use the current working directory.

`tebu jump [search term]`: Searches files for matches with the search term in the path, then opens an interactive selector for changing directory to the selection.\
If you set TERMBUDDY_HOME to the root directory of your project, this can be used to easily jump around your project.
