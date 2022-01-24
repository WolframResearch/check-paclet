#!/usr/bin/env wolframscript
(* ::Package:: *)

print[ a___ ] := WriteString[ "stdout", a, "\n" ];

print[ "Checking paclet..." ];

print[ "INPUT_TARGET="       , Environment[ "INPUT_TARGET"        ] ];
print[ "DEFINITION_NOTEBOOK=", Environment[ "DEFINITION_NOTEBOOK" ] ];

PacletResource`CICD`CheckPaclet[ ]