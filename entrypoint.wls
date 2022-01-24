#!/usr/bin/env wolframscript
(* ::Package:: *)

Print[ "Installing dependencies..." ];


PacletInstall[ "https://wolfr.am/11FhS453R" ];
PacletInstall[ "https://wolfr.am/11FhS4xyd" ];


Print[ "Checking paclet..." ];


Print[ "INPUT_TARGET=", Environment[ "INPUT_TARGET" ] ];
Print[ "DEFINITION_NOTEBOOK=", Environment[ "DEFINITION_NOTEBOOK" ] ];


PacletResource`CICD`CheckPaclet[ ]
