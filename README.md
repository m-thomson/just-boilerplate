# Justfile modules boilerplate

This is boilerplate for creating custom [just](https://github.com/casey/just) commands and subcommands. 

## Install just
If not already installed, install `just` with brew or run:
```bash
sudo curl --proto "=https" --tlsv1.2 -sSf https://just.systems/install.sh | sudo bash -s -- --to /usr/local/bin'
```

## Required Files

### `justfile` 
This is the main justfile. You shouldn't need to edit this.

### `just-commands.just`
Define your commands in this file. A command can be defined in this file directly, or you can use the module `mod` syntax to define commands and subcommands.

```bash
# Put help text for the command here
mod command 'path/to/justfile'
```

If the command is defined in `<command>.just` which is located in the same directory, you can omit the path entirely:
```bash
# Put help text for the command here
mod foo
```


## Example Commands
Modify/remove these examples as needed:
- `examples/ls.just`
- `examples/say.just`


## Self update
There is an unlisted command to update the boilerplate. This will copy the justfile direct from the repository with curl.

```bash
just _self_update
```
