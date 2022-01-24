#!/bin/bash

set -e

export SCRIPT_DIR=$(dirname ${0})

echo "SCRIPT_DIR=${SCRIPT_DIR}"
echo "INPUT_TARGET=${INPUT_TARGET}"
echo "DEFINITION_NOTEBOOK=${INPUT_DEFINITION_NOTEBOOK}"

wolframscript ${SCRIPT_DIR}/install_dependencies.wls

wolframscript ${SCRIPT_DIR}/check_paclet.wls