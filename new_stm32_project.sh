#!/bin/bash
# new_stm32_project.sh

if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME="$1"
cp -r /home/chriss/Desktop/CODES/Embedded_systems/Projects/stm32/stm32_template_cmsis "$PROJECT_NAME"
cd "$PROJECT_NAME"
echo "New STM32 project '$PROJECT_NAME' created!"
