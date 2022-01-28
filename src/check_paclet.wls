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

result = Block[ { Print = print },
    Wolfram`PacletCICD`CheckPaclet[ File @ defNB, "Target" -> target ]
];

print @ result;

If[ MatchQ[ result, _Wolfram`PacletCICD`CheckPaclet ],
    print[ "::error::Wolfram`PacletCICD`CheckPaclet not defined" ];
    Exit[ 1 ]
];

(* :!CodeAnalysis::EndBlock:: *)