#!/usr/bin/env wolframscript
(* ::Package:: *)

print[ a___ ] := WriteString[ "stdout", a, "\n" ];

print[ "Installing dependencies..." ];

PacletInstall[ "https://wolfr.am/11FhS453R" ];
PacletInstall[ "https://wolfr.am/11FhS4xyd" ];
