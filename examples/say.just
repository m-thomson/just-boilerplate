#!/usr/bin/env just --justfile

list_heading := 'Say Commands:'


# -- Required boilerplate (must be the first command in file)
@_default:
  just --unstable _list {{source_file()}} '{{list_heading}}'


# -- Say hello to the specified user
hello name='':
  echo "Hello {{name}}!"


#  -- Say goodbye to the specified user
goodbye name='':
  echo "Goodbye {{name}}!"
