#!/usr/bin/env bash
#
# Script unificado para desproteger, gravar e resetar a RS41
#

openocd -f ./openocd_rs41.cfg -c "init; halt; flash protect 0 0 30 off; program RS41HUP.elf verify reset; shutdown"
