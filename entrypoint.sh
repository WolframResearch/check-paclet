#!/bin/bash

set -e

export CHECK_PACLET_TARGET=${1};
# export CHECK_PACLET_NOTEBOOK=${2};

wolframscript -code 'PacletInstall["https://wolfr.am/11FhS453R"];PacletInstall["https://wolfr.am/11FhS4xyd"];'

wolframscript -code 'PacletResource`CICD`CheckPaclet[]'