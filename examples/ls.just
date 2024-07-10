#!/usr/bin/env just --justfile


# -- Required boilerplate (this must be the first command in file)
@_default:
  just --unstable _list {{source_file()}}


# -- List files in a compact format
compact:
  ls


# -- List files in a detailed format
full:
  ls -al

