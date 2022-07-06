# Configure paths for local binaries
fish_add_path ~/.cargo/bin
fish_add_path ~/.deno/bin

# Load an appropriate version of Node
load_node

if status is-interactive
    # Commands to run in interactive sessions can go here
end
