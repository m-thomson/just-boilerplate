#!/usr/bin/env just --justfile
# ----------------------------------------------------------------------
# This justfile works with https://github.com/m-thomson/just-boilerplate
# ----------------------------------------------------------------------
list_heading := 'Say Commands:'


# -- Required boilerplate (must be the first command in file)
@_default:
  just _list {{source_file()}} '{{list_heading}}'


# -- Say hello to the specified user
hello name='':
  echo "Hello {{name}}!"


#  -- Say goodbye to the specified user
goodbye name='':
  echo "Goodbye {{name}}!"
