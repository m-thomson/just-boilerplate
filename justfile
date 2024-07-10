set dotenv-load
set shell := ["bash", "-c"]
import 'just-commands.just'

# ------------------------------------------------------------------------------------------
# Boilerplate commands
# ------------------------------------------------------------------------------------------

@_default:
  echo
  echo "USAGE: just <command> [arguments]"
  echo "       just <command> <subcommand> [arguments]"
  echo
  just --unstable --list --list-prefix '  ' --list-heading $'Commands:\n'
  echo
  echo "Commands shown with elipses accept subcommands. Use 'just <command>' for a list."
  echo

self-update:
  echo "{{justfile}}"
#  just --unstable --self-update

@_list just_file list_heading='Commands:':
   echo
   -just  --justfile {{just_file}} --list --unsorted --list-prefix '  {{file_stem(just_file)}} ' --list-heading $'{{list_heading}}\n'
   echo
