#!/usr/bin/env bash
#
# Exercise 2.3 — Service Control Menu
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: case statement  +  handling the words you type
#
# WHAT TO BUILD:
#   A tiny "service control" tool that uses a case statement to pick what to do.
#
#   How you use it:  service-menu <action> [name]
#
#   Actions it should understand:
#     start    -> print "Starting <name>..."
#     stop     -> print "Stopping <name>..."
#     restart  -> print "Restarting <name>..."   (stop, then start)
#     status   -> look up <name> in ../data/servers.txt and say if it is up/down
#     anything else -> print "Unknown action", show how to use it, stop with code 1
#
#   If an action needs a <name> but you did not give one, show an error and stop with code 1.
#
# HOW TO RUN:
#   bash exercise-3-service-menu.sh start web-01
#   bash exercise-3-service-menu.sh status db-02
#   bash exercise-3-service-menu.sh frobnicate
#
# HINTS:
#   • case "$action" in
#         start) ... ;;
#         stop|restart) ... ;;     # the | lets two actions share the same block
#         *) ... ;;                # * means "anything else"
#     esac
#   • Find a server's status:  grep "^<name> " ../data/servers.txt | awk '{print $2}'
# ----------------------------------------------------------------------------
set -euo pipefail

action="${1:-}"
name="${2:-}"

DATA_FILE="$(dirname "$0")/../data/servers.txt"

# TODO 1: if no action was typed, show how to use it and stop with code 1


# TODO 2: build a case statement for start / stop / restart / status / anything else
#         remember to check that a <name> was given where it is needed

