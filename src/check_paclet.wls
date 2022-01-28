#!/usr/bin/env wolframscript
(* ::Package:: *)

(* :!CodeAnalysis::BeginBlock:: *)
(* :!CodeAnalysis::Disable::SuspiciousSessionSymbol:: *)

print[ a___ ] := WriteString[ "stdout", a, "\n" ];

print[ "Loading Wolfram`PacletCICD` from ", FindFile[ "Wolfram`PacletCICD`" ] ];

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
If[ ! FileExistsQ @ ExpandFileName @ defNB,
    print[ "::error::Definition notebook not found: ", defNB ];
    Exit[ 1 ]
];

Block[ { Print = print },
    Wolfram`PacletCICD`CheckPaclet[ File @ defNB, "Target" -> target ]
]

(* :!CodeAnalysis::EndBlock:: *)