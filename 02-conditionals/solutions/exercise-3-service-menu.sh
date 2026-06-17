#!/usr/bin/env bash
# Solution — Exercise 2.3 Service Control Menu
set -euo pipefail

action="${1:-}"
name="${2:-}"

DATA_FILE="$(dirname "$0")/../../data/servers.txt"

usage() {
    echo "Usage: $0 <start|stop|restart|status> [name]" >&2
}

# require an action
if [ -z "$action" ]; then
    usage
    exit 1
fi

# small helper: ensure a name was supplied
require_name() {
    if [ -z "$name" ]; then
        echo "Error: action '$action' requires a <name>." >&2
        exit 1
    fi
}

case "$action" in
    start)
        require_name
        echo "Starting $name..."
        ;;
    stop)
        require_name
        echo "Stopping $name..."
        ;;
    restart)
        require_name
        echo "Stopping $name..."
        echo "Starting $name..."
        ;;
    status)
        require_name
        status=$(grep "^$name " "$DATA_FILE" | awk '{print $2}')
        if [ -z "$status" ]; then
            echo "Unknown server: $name"
            exit 1
        elif [ "$status" = "up" ]; then
            echo "$name is UP 🟢"
        else
            echo "$name is DOWN 🔴"
        fi
        ;;
    *)
        echo "Unknown action: $action"
        usage
        exit 1
        ;;
esac
