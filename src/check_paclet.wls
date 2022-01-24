#!/usr/bin/env wolframscript
(* ::Package:: *)

Print[ "Checking paclet..." ];

Print[ "INPUT_TARGET="       , Environment[ "INPUT_TARGET"        ] ];
Print[ "DEFINITION_NOTEBOOK=", Environment[ "DEFINITION_NOTEBOOK" ] ];

PacletResource`CICD`CheckPaclet[ ]