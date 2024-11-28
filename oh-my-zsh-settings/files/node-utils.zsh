# Node.js utility functions
prune_node_modules() {
    # Parse command line arguments
    local dry_run=false
    while getopts "d" opt; do
        case $opt in
            d) dry_run=true ;;
            \?) echo "Invalid option: -$OPTARG" >&2; return 1 ;;
        esac
    done
    
    # Find all node_modules directories
    MODULES=$(find . -name "node_modules" -type d -prune)
    
    # Check if any node_modules directories were found
    if [ -z "$MODULES" ]; then
        echo "No node_modules directories found."
        return 0
    fi
    
    # Display found directories
    echo "Found node_modules directories:"
    echo "$MODULES" | sed 's/^/- /'
    echo
    echo "Total space used by node_modules:"
    du -sh $(echo "$MODULES")
    echo
    
    # If dry run, exit here
    if [ "$dry_run" = true ]; then
        echo "Dry run complete. No directories were removed."
        return 0
    fi
    
    # Ask for confirmation (zsh compatible)
    echo -n "Are you sure you want to remove these directories? (y/N) "
    read REPLY
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Removing node_modules directories..."
        echo "$MODULES" | xargs rm -rf
        echo "Cleanup complete!"
    else
        echo "Operation cancelled."
    fi
}