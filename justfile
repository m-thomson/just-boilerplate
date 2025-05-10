set dotenv-load
set shell := ["bash", "-c"]

update_prompt := "This will overwrite {{justfile()}}. Continue?"
import 'commands.just'

# ------------------------------------------------------------------------------------------
# Boilerplate commands
# ------------------------------------------------------------------------------------------

@_default:
  echo
  echo "USAGE: just <command> [arguments]"
  echo "       just <command> <subcommand> [arguments]"
  echo
  just --list --list-prefix '  ' --list-heading $'Commands:\n'
  echo
  echo "Commands shown with elipses accept subcommands. Use 'just <command>' for a list."
  echo

@_list just_file list_heading='Commands:':
   echo
   -just  --justfile {{just_file}} --list --unsorted --list-prefix '  {{file_stem(just_file)}} ' --list-heading $'{{list_heading}}\n'
   echo

[confirm('Are you sure you want to update the justfile?')]
_self-update:
  cp "{{justfile()}}" "{{justfile()}}.bak"
  curl -f "https://raw.githubusercontent.com/m-thomson/just-boilerplate/master/justfile" -o "{{justfile()}}"
