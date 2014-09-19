#!/usr/bin/env bash
#
# @file
# restart-unity.sh
#
# @description
# Restart unity without closing your open programs
# by restarting window-manager. 
#
# @author
# geraldvillorente
#
# @info
# The command unity can be used to restart unity. 
# It restarts the window manager, so your open programs 
# will stay intact and you will not be logged out.
#
# If you run the command from a terminal app, you 
# should add & disown to detach it from the terminal. 
# If you don't, then the unity program will become a 
# child process of the terminal app such that when you 
# close the terminal, unity will also close. 
#
# If you can't open the terminal application due to the 
# desktop being extremely unresponsive (or any other reason), 
# you can open a purely text-based terminal by hitting alt-ctrl-F1 through F6.
#
# As a side note: since Unity is a compiz plugin, 
# you can restart unity by restarting compiz using the command:
#
# compiz --replace
# If you run it from the alt-ctrl-F1 terminal, you will need a --display parameter
#
# compiz --display :0 --replace
# You'll still need to add & disown
unity &> /dev/null & disown
