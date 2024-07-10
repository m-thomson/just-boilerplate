# Justfile modules boilerplate

This is boilerplate for creating custom [just](https://github.com/casey/just) commands and subcommands. 

## Caveat
This biolerplate relies on just's `mod` directive which is experimental. Accordingly, `just` must be invoked with the `--unstable` flag. I like to use `alias j=just --unstable` in my .bashrc file.

NOTE: Two new features are coming shortly. The ability to use an env variable `JUST_UNSTABLE=true` or a setting in the actual justfile(s): `set unstable`.


## Required Files

### justfile 
This is main justfile. You shouldn't need to edit this.

### just-commands.just
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
