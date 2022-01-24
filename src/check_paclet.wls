#!/usr/bin/env wolframscript
(* ::Package:: *)

(* :!CodeAnalysis::BeginBlock:: *)
(* :!CodeAnalysis::Disable::SuspiciousSessionSymbol:: *)

Needs[ "Wolfram`PacletCICD`" ];

print[ a___ ] := WriteString[ "stdout", a, "\n" ];

getInput[ name_String ] :=
    Module[ { val },
        val = Environment[ "INPUT_" <> name ];
        print[ name, "=", val ];
        val
    ];

print[ "Checking paclet..." ];

target = getInput[ "TARGET" ];
defNB  = getInput[ "DEFINITION_NOTEBOOK" ];

Block[ { Print = print },
    Wolfram`PacletCICD`CheckPaclet[ "Target" -> target ]
]

(* :!CodeAnalysis::EndBlock:: *)