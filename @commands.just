
# Provide greetings to the user
mod say 'examples/say.just'

# List files
mod ls 'examples/ls.just'

# Display help text
@help:
  # This is an example of a top level command with no subcommands
  echo "This is the help text."
