#!/bin/bash

set -e

echo "INPUT_TARGET=${INPUT_TARGET}"
echo "DEFINITION_NOTEBOOK=${INPUT_DEFINITION_NOTEBOOK}"

echo "Installing dependencies..."
wolframscript -code 'PacletInstall["https://wolfr.am/11FhS453R"];PacletInstall["https://wolfr.am/11FhS4xyd"];'

echo "Checking paclet..."
wolframscript -code 'PacletResource`CICD`CheckPaclet[]'