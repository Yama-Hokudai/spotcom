(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     93066,       2346]
NotebookOptionsPosition[     82254,       2183]
NotebookOutlinePosition[     82741,       2204]
CellTagsIndexPosition[     82698,       2201]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"sampling", " ", "=", " ", "524288"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"amplitude", " ", "=", " ", 
  RowBox[{"Floor", "[", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Power", "[", 
       RowBox[{"2", ",", "16"}], "]"}], "-", "1"}], ")"}], "/", "4"}], 
   "]"}]}]}], "Input",ExpressionUUID->"3c39fa1e-382d-4cc1-a97f-98c873615404"],

Cell[BoxData["16383"], "Output",ExpressionUUID->"3098731b-0e79-477e-bca6-5c12b17ec302"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"c", "=", "34000"}], ";"}]], "Input",ExpressionUUID->"e081adc4-74f8-4bcd-b8de-bb6151885c93"],

Cell[BoxData[
 RowBox[{
  RowBox[{"recSampling", "=", "48000"}], ";"}]], "Input",ExpressionUUID->\
"2e0587d9-7295-4423-8fcc-e43d553cd9dd"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Power", "[", 
  RowBox[{"2", ",", "16"}], "]"}]], "Input",ExpressionUUID->"b282f845-15a5-\
4dcd-903d-4afa8c9ce58d"],

Cell[BoxData["65536"], "Output",ExpressionUUID->"902c86b8-5314-429a-a66d-ed31a803d9d4"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "freq", "]"}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"freq", " ", "=", " ", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", "6"}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"AppendTo", "[", 
     RowBox[{"freq", ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"14000", " ", "+", " ", 
         RowBox[{"i", "*", "1000"}], "-", "250"}], ",", " ", 
        RowBox[{"14000", "+", 
         RowBox[{"i", "*", "1000"}], "+", "250"}]}], "}"}]}], "]"}], ";"}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input",ExpressionUUID->"c01f6697-30df-4b8d-\
8a73-3cb9e2e9ff5f"],

Cell[CellGroupData[{

Cell[BoxData["freq"], "Input",ExpressionUUID->"600d3c5f-c4ba-4b05-bb03-39ef0560d36e"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"14750", ",", "15250"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"15750", ",", "16250"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"16750", ",", "17250"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"17750", ",", "18250"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18750", ",", "19250"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"19750", ",", "20250"}], "}"}]}], "}"}]], "Output",ExpressionUUID-\
>"4f4b5bd7-9410-46a5-b2d4-3f97b43b5ace"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"SyncPattern", "[", 
    RowBox[{
    "t_", ",", "freq1_", ",", "freq2_", ",", "\[Psi]_", ",", "\[Theta]_"}], 
    "]"}], ":=", 
   RowBox[{
    RowBox[{"Sin", "[", 
     RowBox[{
      RowBox[{"freq1", " ", "2", "Pi", " ", "t"}], " ", "+", " ", "\[Psi]"}], 
     "]"}], " ", "+", " ", 
    RowBox[{"Sin", "[", 
     RowBox[{
      RowBox[{"freq2", " ", "2", "Pi", " ", "t"}], " ", "+", " ", "\[Psi]", 
      " ", "+", " ", "\[Theta]"}], "]"}]}]}], ";"}]], "Input",ExpressionUUID->\
"4070c166-6056-4ee7-801a-bb85d9608419"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "\:6570\:5024\:8a08\:7b97\:7528", "\:3001", 
    "\:30c7\:30fc\:30bf\:30ea\:30b9\:30c8"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", "sync", "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"sync", " ", "=", 
     RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Clear", "[", "ComSin", "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ComSin", " ", "=", " ", 
     RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"i", "=", "1"}], ",", 
     RowBox[{"i", "\[LessEqual]", 
      RowBox[{"Length", "[", "freq", "]"}]}], ",", 
     RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Clear", "[", "tmp", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"tmp", "=", 
       RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"j", "=", "1"}], ",", 
        RowBox[{"j", "\[LessEqual]", 
         RowBox[{"Length", "[", 
          RowBox[{"freq", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", 
        RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"AppendTo", "[", 
          RowBox[{"tmp", ",", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Exp", "[", 
               RowBox[{
                RowBox[{"-", "\[ImaginaryJ]"}], " ", "2", "Pi", " ", 
                RowBox[{"freq", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "j"}], "]"}], "]"}], " ", "t"}], "]"}], 
              ",", 
              RowBox[{"{", 
               RowBox[{"t", ",", 
                RowBox[{
                 RowBox[{"-", "1"}], "/", "1000"}], ",", 
                RowBox[{"1", "/", "1000"}], ",", 
                RowBox[{"1", "/", "recSampling"}]}], "}"}]}], "]"}], "//", 
            "N"}]}], "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"ComSin", ",", "tmp"}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"sync", ",", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"SyncPattern", "[", 
            RowBox[{"t", ",", 
             RowBox[{"freq", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", 
             RowBox[{"freq", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "2"}], "]"}], "]"}], ",", "0", ",", "0"}], 
            "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", 
             RowBox[{
              RowBox[{"-", "1"}], "/", "1000"}], ",", 
             RowBox[{"3", "/", "1000"}], ",", 
             RowBox[{"1", "/", "recSampling"}]}], "}"}]}], "]"}], "//", 
         "N"}]}], "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
   "\[IndentingNewLine]"}]}]], "Input",ExpressionUUID->"f6579e62-ee15-4e37-\
bbba-6011a255509d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"comSampling", " ", "=", " ", 
   RowBox[{"sampling", "/", "2"}]}], ";"}]], "Input",ExpressionUUID->\
"43fc7265-d387-4a4f-a489-7fd85747a2c7"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"M", "=", "6"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SymNum", "=", "10"}], ";"}]}], "Input",ExpressionUUID->"5dcdbb91-\
b03e-4054-b3d1-792996184dd6"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"g", "[", "n_", "]"}], ":=", "\[IndentingNewLine]", 
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{"n", "\[Equal]", "0"}], ",", "0", ",", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Mod", "[", 
         RowBox[{"n", ",", "2"}], "]"}], "\[Equal]", "1"}], ",", 
       RowBox[{"Ceiling", "[", 
        RowBox[{"SymNum", "/", "2"}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Ceiling", "[", 
           RowBox[{"SymNum", "/", "2"}], "]"}], "-", "1"}], ")"}]}]}], 
      "]"}]}], "\[IndentingNewLine]", "]"}]}], ";"}]], "Input",ExpressionUUID-\
>"562926bf-3275-420a-a585-d11352dff2ba"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "\[Psi]", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Psi]", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sum", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", "SymNum"}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"sum", "+=", 
     RowBox[{"g", "[", 
      RowBox[{"i", "-", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"AppendTo", "[", 
     RowBox[{"\[Psi]", ",", 
      RowBox[{"2", "Pi", " ", 
       RowBox[{"sum", "/", "SymNum"}]}]}], "]"}], ";"}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input",ExpressionUUID->"b98dd8c0-4eed-41d1-\
9ebb-ce23c49ba152"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "\[Theta]", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Theta]", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", "SymNum"}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"AppendTo", "[", 
     RowBox[{"\[Theta]", ",", 
      RowBox[{"Mod", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"i", "-", "1"}], ")"}], 
         RowBox[{"Pi", "/", "3"}]}], ",", 
        RowBox[{"2", "Pi"}]}], "]"}]}], "]"}], ";"}]}], "\[IndentingNewLine]",
   "]"}]}], "Input",ExpressionUUID->"45cfe027-4341-41d8-905b-a97dca6fe6d8"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["f", "0"], "=", "12000"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["f", "1"], "=", "18000"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"k", "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["f", "1"], "-", 
        SubscriptBox["f", "0"]}], ")"}], "/", "10"}], "/", "1000"}], "//", 
    "N"}]}], ";"}]}], "Input",ExpressionUUID->"34f84cb7-355d-44a8-9060-\
b6e74d68ee20"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ChirpSignal", "[", "t_", "]"}], ":=", 
   RowBox[{
    RowBox[{"Sin", "[", 
     RowBox[{"2", "Pi", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["f", "0"], " ", "+", " ", 
        RowBox[{"t", " ", 
         RowBox[{"k", "/", "2"}]}]}], " ", ")"}], "t"}], "]"}], "//", "N"}]}],
   ";"}]], "Input",ExpressionUUID->"475ab412-bb01-433b-a026-9074eeb05f1a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"chirp", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"ChirpSignal", "[", "t", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", 
       RowBox[{"0", "/", "1000"}], ",", 
       RowBox[{"10", "/", "1000"}], ",", 
       RowBox[{"1", "/", "comSampling"}]}], "}"}]}], "]"}]}], ";"}]], "Input",\
ExpressionUUID->"9ae340ce-9320-49ec-b591-a7a05c97acbe"],

Cell[BoxData[
 RowBox[{
  RowBox[{"chirp48", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"ChirpSignal", "[", "t", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", 
       RowBox[{"10", "/", "1000"}], ",", 
       RowBox[{"1", "/", "recSampling"}]}], "}"}]}], "]"}]}], ";"}]], "Input",\
ExpressionUUID->"c188cc12-0582-468c-92fa-a4c481093fcf"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "pilot", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pilot", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AppendTo", "[", 
   RowBox[{"pilot", ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"t", "\[GreaterEqual]", 
          RowBox[{"3", "/", "1000"}]}], "&&", 
         RowBox[{"t", "\[LessEqual]", 
          RowBox[{"13", "/", "1000"}]}]}], ",", 
        RowBox[{
         RowBox[{"2", "amplitude", " ", 
          RowBox[{"ChirpSignal", "[", 
           RowBox[{"t", "-", 
            RowBox[{"3", "/", "1000"}]}], "]"}]}], "//", "N"}], ",", "0"}], 
       "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "0", ",", 
        RowBox[{
         RowBox[{"150", "/", "1000"}], "-", 
         RowBox[{"1", "/", "comSampling"}]}], ",", 
        RowBox[{"1", "/", "comSampling"}]}], "}"}]}], "]"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", "3"}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"AppendTo", "[", 
     RowBox[{"pilot", ",", 
      RowBox[{"Table", "[", 
       RowBox[{"0.", ",", 
        RowBox[{"{", 
         RowBox[{"t", ",", 
          RowBox[{
           RowBox[{"comSampling", "*", 
            RowBox[{"150", "/", "1000"}]}], " ", "-", " ", 
           RowBox[{"1", "/", "comSampling"}]}]}], "}"}]}], "]"}]}], "]"}], 
    ";", "\[IndentingNewLine]", 
    RowBox[{"Length", "[", 
     RowBox[{"pilot", "[", 
      RowBox[{"[", 
       RowBox[{"i", "+", "1"}], "]"}], "]"}], "]"}]}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input",ExpressionUUID->"795c76c5-cd6f-4f9f-\
965b-4bcadad53c55"],

Cell[CellGroupData[{

Cell[BoxData["amplitude"], "Input",ExpressionUUID->"84e5ca43-045a-44a3-8c6b-55becb4f93b8"],

Cell[BoxData["16383"], "Output",ExpressionUUID->"f4331b6e-957e-4448-80da-461b68b1128c"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"amplitude2", "=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"amplitude", "/", "2"}], ",", "amplitude", ",", 
      RowBox[{"amplitude", "/", "2"}], ",", "amplitude"}], "}"}], "//", 
    "N"}]}], ";"}]], "Input",ExpressionUUID->"52019318-800c-410b-aa82-\
ec2dc50fcc11"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", "SpotWave", "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"SpotWave", "=", 
     RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"j", "=", "1"}], ",", 
     RowBox[{"j", "\[LessEqual]", "4"}], ",", 
     RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Clear", "[", "tmp", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"tmp", "=", 
       RowBox[{"pilot", "[", 
        RowBox[{"[", "j", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"i", "=", "1"}], ",", 
        RowBox[{"i", "\[LessEqual]", "SymNum"}], ",", 
        RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
        RowBox[{"tmp", "=", 
         RowBox[{"Join", "[", 
          RowBox[{"tmp", ",", "\[IndentingNewLine]", 
           RowBox[{"Table", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{"Mod", "[", 
                   RowBox[{
                    RowBox[{"1000", "t"}], ",", "150"}], "]"}], ">", 
                  RowBox[{"3", " ", "-", 
                   RowBox[{
                    RowBox[{"\[Theta]", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "/", "Pi"}], "-", 
                   RowBox[{"1000", 
                    RowBox[{"ts", "[", 
                    RowBox[{"[", "j", "]"}], "]"}]}]}]}], 
                 RowBox[{"(*", 
                  RowBox[{
                   RowBox[{"+", "50"}], 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"j", "+", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"j", ",", "2"}], "]"}], "-", "2"}], ")"}], "/", 
                    "2"}]}], "*)"}], "&&", 
                 RowBox[{
                  RowBox[{"Mod", "[", 
                   RowBox[{
                    RowBox[{"1000", "t"}], ",", "150"}], "]"}], "<", 
                  RowBox[{"7", "-", 
                   RowBox[{
                    RowBox[{"\[Theta]", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "/", "Pi"}], "-", 
                   RowBox[{"1000", 
                    RowBox[{"ts", "[", 
                    RowBox[{"[", "j", "]"}], "]"}]}]}]}]}], 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"+", "50"}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"j", "+", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"j", ",", "2"}], "]"}], "-", "2"}], ")"}], "/", 
                   "2"}]}], "*)"}], ",", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"amplitude2", "[", 
                  RowBox[{"[", "j", "]"}], "]"}], " ", 
                 RowBox[{"SyncPattern", "[", 
                  RowBox[{
                   RowBox[{"t", "+", 
                    RowBox[{"ts", "[", 
                    RowBox[{"[", "j", "]"}], "]"}]}], ",", 
                   RowBox[{"freq", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"j", "+", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"j", ",", "2"}], "]"}]}], ")"}], "/", "2"}], "+", 
                    "4"}], ",", "1"}], "]"}], "]"}], ",", 
                   RowBox[{"freq", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"j", "+", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"j", ",", "2"}], "]"}]}], ")"}], "/", "2"}], "+", 
                    "4"}], ",", "2"}], "]"}], "]"}], ",", 
                   RowBox[{
                    RowBox[{"\[Psi]", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "*", 
                    RowBox[{"Mod", "[", 
                    RowBox[{"j", ",", "2"}], "]"}]}], ",", 
                   RowBox[{"\[Theta]", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], "]"}]}], ",", "0"}], 
               "]"}], "//", "N"}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{"t", ",", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"i", "-", "1"}], ")"}], "*", 
                RowBox[{"150", "/", "1000"}]}], ",", 
               RowBox[{
                RowBox[{"i", "*", 
                 RowBox[{"150", "/", "1000"}]}], "-", 
                RowBox[{"1", "/", "comSampling"}]}], ",", 
               RowBox[{"1", "/", "comSampling"}]}], "}"}]}], 
            "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "]"}]}]}], 
       "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"AppendTo", "[", 
       RowBox[{"SpotWave", ",", "tmp"}], "]"}], ";"}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"i", "=", "1"}], ",", 
     RowBox[{"i", "\[LessEqual]", 
      RowBox[{"Length", "[", "SpotWave", "]"}]}], ",", 
     RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"SpotWave", "[", 
        RowBox[{"[", "i", "]"}], "]"}], "=", 
       RowBox[{"Join", "[", 
        RowBox[{
         RowBox[{"SpotWave", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{"0.", ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", 
             RowBox[{
              RowBox[{"2", " ", "comSampling"}], "-", 
              RowBox[{"Length", "[", 
               RowBox[{"SpotWave", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}]}]}], "}"}]}], "]"}]}], 
        "]"}]}], ";"}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "SetDirectory", "[", 
     "\"\<C:\\\\Users\\\\Shoma\\\\Documents\\\\Wolfram \
Mathematica\\\\output\>\"", "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{"\"\<spot1_250-250.txt\>\"", ",", 
      RowBox[{"SpotWave", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ";"}], "\[IndentingNewLine]", 
   
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{"\"\<spot2_250-250.txt\>\"", ",", 
      RowBox[{"SpotWave", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ";"}], "\[IndentingNewLine]", 
   
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{"\"\<spot3_250-250.txt\>\"", ",", 
      RowBox[{"SpotWave", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], "]"}], ";"}], "\[IndentingNewLine]", 
   
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{"\"\<spot4_250-250.txt\>\"", ",", 
      RowBox[{"SpotWave", "[", 
       RowBox[{"[", "4", "]"}], "]"}]}], "]"}], ";"}]}], "*)"}]], "Input",Expr\
essionUUID->"a0944036-5a58-452b-894e-eee2e96720ff"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{"ListLinePlot", "[", 
    RowBox[{
     RowBox[{"SpotWave", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], "\[IndentingNewLine]", 
   
   RowBox[{"ListLinePlot", "[", 
    RowBox[{
     RowBox[{"SpotWave", "[", 
      RowBox[{"[", "2", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], "\[IndentingNewLine]", 
   
   RowBox[{"ListLinePlot", "[", 
    RowBox[{
     RowBox[{"SpotWave", "[", 
      RowBox[{"[", "3", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], "\[IndentingNewLine]", 
   
   RowBox[{"ListLinePlot", "[", 
    RowBox[{
     RowBox[{"SpotWave", "[", 
      RowBox[{"[", "4", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "*)"}]], "Input",Expr\
essionUUID->"fee62075-56ea-4e72-885c-e762b1e06206"],

Cell[BoxData[""], "Input",ExpressionUUID->"8c5e7392-90e2-4627-ac2d-92459beced6c"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{"Animate", "[", 
    RowBox[{
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{"SpotWave", "[", 
        RowBox[{"[", 
         RowBox[{"1", ",", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}]}], ";;", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}], "+", "3000"}]}]}], 
         "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"index", ",", "1", ",", "10", ",", "1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Animate", "[", 
    RowBox[{
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{"SpotWave", "[", 
        RowBox[{"[", 
         RowBox[{"2", ",", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}]}], ";;", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}], "+", "3000"}]}]}], 
         "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"index", ",", "1", ",", "10", ",", "1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Animate", "[", 
    RowBox[{
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{"SpotWave", "[", 
        RowBox[{"[", 
         RowBox[{"3", ",", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}]}], ";;", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}], "+", "3000"}]}]}], 
         "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"index", ",", "1", ",", "10", ",", "1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Animate", "[", 
    RowBox[{
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{"SpotWave", "[", 
        RowBox[{"[", 
         RowBox[{"4", ",", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}]}], ";;", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"index", "-", "1"}], ")"}], 
             RowBox[{"Ceiling", "[", 
              RowBox[{"comSampling", "*", 
               RowBox[{"150", "/", "1000"}]}], "]"}]}], "+", "3000"}]}]}], 
         "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"index", ",", "1", ",", "10", ",", "1"}], "}"}]}], "]"}]}], 
  "*)"}]], "Input",ExpressionUUID->"0ec4ab33-d490-4cef-b729-7352ee6c3508"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"i", "=", "1"}], "\[IndentingNewLine]"}]], "Input",ExpressionUUID->\
"3858d02f-f09d-47ff-8f21-a070000f9c55"],

Cell[BoxData["1"], "Output",ExpressionUUID->"9dc6a369-f988-4643-9477-42c2051e23e7"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "rawComData", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rawComData", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", "tmp", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"tmp", " ", "=", " ", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"SetDirectory", "[", 
  "\"\</home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine\>\"", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"i", "=", "1"}], ",", 
    RowBox[{"i", "\[LessEqual]", "6"}], ",", 
    RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"AppendTo", "[", 
      RowBox[{"tmp", ",", 
       RowBox[{
        RowBox[{"Import", "[", 
         RowBox[{
          RowBox[{"\"\<onTheLine\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"50", "*", "i"}], "]"}], "<>", "\"\<cm.wav\>\""}], ",", 
          "\"\<Data\>\""}], "]"}], "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"Print", "[", 
      RowBox[{
      "\"\</home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine\>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"50", "*", "i"}], "]"}], "<>", "\"\<cm.wav\>\""}], "]"}], ";",
      "\[IndentingNewLine]", 
     RowBox[{"Print", "[", 
      RowBox[{"Length", "[", "tmp", "]"}], "]"}], ";"}]}], 
   "\[IndentingNewLine]", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AppendTo", "[", 
   RowBox[{"rawComData", ",", "tmp"}], "]"}], ";"}]}], "Input",ExpressionUUID-\
>"80b8efed-2412-4fc9-bc38-59670ed8f329"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine\"\>"], \
"Output",ExpressionUUID->"93023275-b0ad-413d-bd35-0e5590f38663"],

Cell[CellGroupData[{

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine50cm.wav\"\>"]\
, "Print",ExpressionUUID->"588f9cea-465a-4d21-8d65-0dd8b54aa9be"],

Cell[BoxData["1"], "Print",ExpressionUUID->"65daeaa0-28d6-404f-bff5-9a6770e5fe0c"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine100cm.wav\"\>\
"], "Print",ExpressionUUID->"d8feab9e-d7a4-4d6e-b4f5-b6ffd0bc747a"],

Cell[BoxData["2"], "Print",ExpressionUUID->"6924a3bb-ddc8-4e8b-bd50-71369edc177d"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine150cm.wav\"\>\
"], "Print",ExpressionUUID->"fe286ac2-5ae7-41f3-bbb5-e5d3acbbe270"],

Cell[BoxData["3"], "Print",ExpressionUUID->"daf61f9d-bd0b-4b65-bf2b-c3f2487e82fd"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine200cm.wav\"\>\
"], "Print",ExpressionUUID->"85570efc-a550-4759-a8e2-73f586a8304f"],

Cell[BoxData["4"], "Print",ExpressionUUID->"f163a3b4-e331-4d7e-b144-4460775a876b"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine250cm.wav\"\>\
"], "Print",ExpressionUUID->"d5a07268-f6cd-4601-8fc1-fd5b1b92b89c"],

Cell[BoxData["5"], "Print",ExpressionUUID->"19c80734-0169-4456-bca4-a91bf91b5857"],

Cell[BoxData["\<\"/home/yshoma/Wolfram \
Mathematica/NoteBook/Experiment/50spec/record/20190607/onTheLine300cm.wav\"\>\
"], "Print",ExpressionUUID->"5b3a8664-cac9-4dbc-88fb-14161babcb01"],

Cell[BoxData["6"], "Print",ExpressionUUID->"c917f354-ca53-49cb-8704-a4170feea472"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Length", "[", "rawComData", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Length", "[", 
  RowBox[{"rawComData", "[", 
   RowBox[{"[", "1", "]"}], "]"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Length", "[", 
  RowBox[{"rawComData", "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1"}], "]"}], "]"}], "]"}]}], "Input",ExpressionUUID->\
"d67cf4ff-d72c-4ac3-a9b6-4d8ff13167a6"],

Cell[BoxData["1"], "Output",ExpressionUUID->"155ba661-3f43-4570-bbfb-b06399a45f93"],

Cell[BoxData["6"], "Output",ExpressionUUID->"7313b4d0-b1c8-4645-bd49-0646912d13b7"],

Cell[BoxData["10584000"], "Output",ExpressionUUID->"a05612d6-7fbb-4018-a030-884ee1188826"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "comData", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"comData", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", 
    RowBox[{"Length", "[", "rawComData", "]"}]}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Clear", "[", "tmp", "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"tmp", "=", 
     RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"j", "=", "1"}], ",", 
      RowBox[{"j", "\[LessEqual]", 
       RowBox[{"Length", "[", 
        RowBox[{"rawComData", "[", 
         RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", 
      RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"AppendTo", "[", 
        RowBox[{"tmp", ",", 
         RowBox[{"rawComData", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", "j", ",", 
            RowBox[{
             RowBox[{"recSampling", "*", "8"}], ";;", 
             RowBox[{"recSampling", "*", "212"}]}]}], "]"}], "]"}]}], "]"}], 
       ";"}]}], "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"AppendTo", "[", 
     RowBox[{"comData", ",", "tmp"}], "]"}], ";"}]}], "\[IndentingNewLine]", 
  "]"}]}], "Input",ExpressionUUID->"916db743-e246-4c28-99c6-1a467d612fdf"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"TimeA", "=", 
   RowBox[{"AbsoluteTime", "[", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", "demoduled", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"demoduled", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"time1", " ", "=", " ", 
   RowBox[{"AbsoluteTime", "[", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"iterSpotNum", "=", "1"}], ",", 
    RowBox[{"iterSpotNum", "\[LessEqual]", 
     RowBox[{"Length", "[", "comData", "]"}]}], ",", 
    RowBox[{"iterSpotNum", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Clear", "[", "tmpDemRecNum", "]"}], ";", "\[IndentingNewLine]", 
     
     RowBox[{"tmpDemRecNum", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"iterRecNum", "=", "1"}], ",", 
       RowBox[{"iterRecNum", "\[LessEqual]", 
        RowBox[{"Length", "[", 
         RowBox[{"comData", "[", 
          RowBox[{"[", "iterSpotNum", "]"}], "]"}], "]"}]}], ",", 
       RowBox[{"iterRecNum", "++"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Print", "[", 
         RowBox[{"{", 
          RowBox[{"iterSpotNum", ",", "iterRecNum"}], "}"}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Clear", "[", "tmpDemoduled", "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"tmpDemoduled", "=", 
         RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"index", " ", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"For", "[", 
         RowBox[{
          RowBox[{"i", "=", "1"}], ",", 
          RowBox[{"i", "\[LessEqual]", "100"}], ",", 
          RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Mod", "[", 
               RowBox[{"i", ",", "25"}], "]"}], "\[Equal]", "0"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"time2", " ", "=", " ", 
               RowBox[{"AbsoluteTime", "[", "]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"Print", "[", 
               RowBox[{"{", 
                RowBox[{"i", ",", 
                 RowBox[{"time2", " ", "-", " ", "time1"}]}], "}"}], "]"}], 
              ";", "\[IndentingNewLine]", 
              RowBox[{"time1", " ", "=", " ", "time2"}], ";"}]}], 
            "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"index", " ", "+=", " ", 
            RowBox[{"recSampling", " ", "+", " ", 
             RowBox[{
              RowBox[{"Ordering", "[", 
               RowBox[{
                RowBox[{"ListCorrelate", "[", 
                 RowBox[{"chirp48", ",", 
                  RowBox[{"comData", "[", 
                   RowBox[{"[", 
                    RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{
                    RowBox[{"index", "+", "recSampling"}], ";;", 
                    RowBox[{"index", "+", 
                    RowBox[{"3", " ", "recSampling"}]}]}]}], "]"}], "]"}]}], 
                 "]"}], ",", 
                RowBox[{"-", "1"}]}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
           
           RowBox[{"index", " ", "+=", 
            RowBox[{"151", " ", 
             RowBox[{"recSampling", "/", "1000"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"arg1", "=", 
            RowBox[{
             RowBox[{"Arg", "[", 
              RowBox[{"2", "\[ImaginaryJ]", " ", 
               RowBox[{"ListCorrelate", "[", 
                RowBox[{
                 RowBox[{"ComSin", "[", 
                  RowBox[{"[", 
                   RowBox[{"5", ",", "2"}], "]"}], "]"}], ",", 
                 RowBox[{"comData", "[", 
                  RowBox[{"[", 
                   RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{"index", ";;", 
                    RowBox[{"index", "+", 
                    RowBox[{"2", 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                  "]"}]}], "]"}]}], "]"}], "-", 
             RowBox[{"Arg", "[", 
              RowBox[{"2", "\[ImaginaryJ]", " ", 
               RowBox[{"ListCorrelate", "[", 
                RowBox[{
                 RowBox[{"ComSin", "[", 
                  RowBox[{"[", 
                   RowBox[{"5", ",", "1"}], "]"}], "]"}], ",", 
                 RowBox[{"comData", "[", 
                  RowBox[{"[", 
                   RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{"index", ";;", 
                    RowBox[{"index", "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                  "]"}]}], "]"}]}], "]"}], "+", "Pi"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"arg2", "=", 
            RowBox[{
             RowBox[{"Arg", "[", 
              RowBox[{"2", "\[ImaginaryJ]", " ", 
               RowBox[{"ListCorrelate", "[", 
                RowBox[{
                 RowBox[{"ComSin", "[", 
                  RowBox[{"[", 
                   RowBox[{"6", ",", "2"}], "]"}], "]"}], ",", 
                 RowBox[{"comData", "[", 
                  RowBox[{"[", 
                   RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{"index", ";;", 
                    RowBox[{"index", "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                  "]"}]}], "]"}]}], "]"}], "-", 
             RowBox[{"Arg", "[", 
              RowBox[{"2", "\[ImaginaryJ]", " ", 
               RowBox[{"ListCorrelate", "[", 
                RowBox[{
                 RowBox[{"ComSin", "[", 
                  RowBox[{"[", 
                   RowBox[{"6", ",", "1"}], "]"}], "]"}], ",", 
                 RowBox[{"comData", "[", 
                  RowBox[{"[", 
                   RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{"index", ";;", 
                    RowBox[{"index", "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                  "]"}]}], "]"}]}], "]"}], "+", "Pi"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"arg1", ">", "Pi"}], ",", "\[IndentingNewLine]", 
             RowBox[{"arg1", "-=", " ", 
              RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"arg1", "\[LessEqual]", " ", 
                RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
               RowBox[{"arg1", "+=", 
                RowBox[{"2", "Pi"}]}]}], "]"}]}], "\[IndentingNewLine]", 
            "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"arg2", ">", "Pi"}], ",", "\[IndentingNewLine]", 
             RowBox[{"arg2", "-=", " ", 
              RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"arg2", "\[LessEqual]", " ", 
                RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
               RowBox[{"arg2", "+=", 
                RowBox[{"2", "Pi"}]}]}], "]"}]}], "\[IndentingNewLine]", 
            "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"epoch1", "=", 
              RowBox[{
               RowBox[{"Round", "[", 
                RowBox[{"index", "+", 
                 RowBox[{"48", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"arg1", "/", 
                    RowBox[{"Abs", "[", "arg1", "]"}]}], "-", 
                    RowBox[{"arg1", "/", "Pi"}]}], ")"}], "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}]}], "]"}], "-", "48"}]}], 
             ";", "\[IndentingNewLine]", 
             RowBox[{"epoch2", "=", 
              RowBox[{
               RowBox[{"Round", "[", 
                RowBox[{"index", "+", 
                 RowBox[{"48", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"arg2", "/", 
                    RowBox[{"Abs", "[", "arg2", "]"}]}], "-", 
                    RowBox[{"arg2", "/", "Pi"}]}], ")"}], "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}]}], "]"}], "-", "48"}]}], 
             ";"}], "*)"}], "\[IndentingNewLine]", 
           RowBox[{"epoch1", " ", "=", " ", 
            RowBox[{"index", "-", "48"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"epoch2", " ", "=", " ", 
            RowBox[{"index", "-", "48"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"prearg1", "=", "arg1"}], ";", "\[IndentingNewLine]", 
           RowBox[{"prearg2", "=", "arg2"}], ";", "\[IndentingNewLine]", 
           RowBox[{"Clear", "[", "Arg1", "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"Clear", "[", "Arg2", "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"Arg1", "=", 
            RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"Arg2", "=", 
            RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"For", "[", 
            RowBox[{
             RowBox[{"j", "=", "1"}], ",", 
             RowBox[{"j", "\[LessEqual]", "9"}], ",", 
             RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"arg1", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Arg", "[", 
                   RowBox[{"2", "\[ImaginaryJ]", " ", 
                    RowBox[{"ListCorrelate", "[", 
                    RowBox[{
                    RowBox[{"ComSin", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", "2"}], "]"}], "]"}], ",", 
                    RowBox[{"comData", "[", 
                    RowBox[{"[", 
                    RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{
                    RowBox[{"epoch1", "+", 
                    RowBox[{"j", " ", "150", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}], ";;", 
                    RowBox[{"epoch1", "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"j", " ", "150"}]}], ")"}], 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                    "]"}]}], "]"}]}], "]"}], "-", 
                  RowBox[{"Arg", "[", 
                   RowBox[{"2", "\[ImaginaryJ]", " ", 
                    RowBox[{"ListCorrelate", "[", 
                    RowBox[{
                    RowBox[{"ComSin", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"comData", "[", 
                    RowBox[{"[", 
                    RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{
                    RowBox[{"epoch1", "+", 
                    RowBox[{"j", " ", "150", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}], ";;", 
                    RowBox[{"epoch1", "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"j", " ", "150"}]}], ")"}], 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                    "]"}]}], "]"}]}], "]"}]}], ")"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
              
              RowBox[{"arg2", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Arg", "[", 
                   RowBox[{"2", "\[ImaginaryJ]", " ", 
                    RowBox[{"ListCorrelate", "[", 
                    RowBox[{
                    RowBox[{"ComSin", "[", 
                    RowBox[{"[", 
                    RowBox[{"6", ",", "2"}], "]"}], "]"}], ",", 
                    RowBox[{"comData", "[", 
                    RowBox[{"[", 
                    RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{
                    RowBox[{"epoch2", "+", 
                    RowBox[{"j", " ", "150", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}], ";;", 
                    RowBox[{"epoch2", "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"j", " ", "150"}]}], ")"}], 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                    "]"}]}], "]"}]}], "]"}], "-", 
                  RowBox[{"Arg", "[", 
                   RowBox[{"2", "\[ImaginaryJ]", " ", 
                    RowBox[{"ListCorrelate", "[", 
                    RowBox[{
                    RowBox[{"ComSin", "[", 
                    RowBox[{"[", 
                    RowBox[{"6", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"comData", "[", 
                    RowBox[{"[", 
                    RowBox[{"iterSpotNum", ",", "iterRecNum", ",", 
                    RowBox[{
                    RowBox[{"epoch2", "+", 
                    RowBox[{"j", " ", "150", " ", 
                    RowBox[{"recSampling", "/", "1000"}]}]}], ";;", 
                    RowBox[{"epoch2", "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"j", " ", "150"}]}], ")"}], 
                    RowBox[{"recSampling", "/", "1000"}]}]}]}]}], "]"}], 
                    "]"}]}], "]"}]}], "]"}]}], ")"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
              
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"arg1", ">", "Pi"}], ",", "\[IndentingNewLine]", 
                RowBox[{"arg1", "-=", " ", 
                 RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"arg1", "\[LessEqual]", " ", 
                   RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"arg1", "+=", 
                   RowBox[{"2", "Pi"}]}]}], "\[IndentingNewLine]", "]"}]}], 
               "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"arg2", ">", "Pi"}], ",", "\[IndentingNewLine]", 
                RowBox[{"arg2", "-=", " ", 
                 RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"arg2", "\[LessEqual]", " ", 
                   RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"arg2", "+=", 
                   RowBox[{"2", "Pi"}]}]}], "\[IndentingNewLine]", "]"}]}], 
               "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"tmp1", "=", 
               RowBox[{"arg1", "-", "prearg1"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"tmp1", ">", "Pi"}], ",", "\[IndentingNewLine]", 
                RowBox[{"tmp1", "-=", 
                 RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"tmp1", "\[LessEqual]", 
                   RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"tmp1", "+=", 
                   RowBox[{"2", "Pi"}]}]}], "\[IndentingNewLine]", "]"}]}], 
               "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"tmp2", "=", 
               RowBox[{"arg2", "-", "prearg2"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"tmp2", ">", "Pi"}], ",", "\[IndentingNewLine]", 
                RowBox[{"tmp2", "-=", 
                 RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"tmp2", "\[LessEqual]", 
                   RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"tmp2", "+=", 
                   RowBox[{"2", "Pi"}]}]}], "\[IndentingNewLine]", "]"}]}], 
               "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"tmp1", "\[GreaterEqual]", 
                  RowBox[{"-", "Pi"}]}], "&&", 
                 RowBox[{"tmp1", "<", 
                  RowBox[{
                   RowBox[{"-", "5"}], 
                   RowBox[{"Pi", "/", "6"}]}]}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"tmp1", "=", 
                 RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"tmp1", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "5"}], 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                   RowBox[{"tmp1", "<", 
                    RowBox[{
                    RowBox[{"-", "3"}], 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"tmp1", "=", 
                   RowBox[{
                    RowBox[{"-", "2"}], 
                    RowBox[{"Pi", "/", "3"}]}]}], ",", "\[IndentingNewLine]", 
                  
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"tmp1", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                    RowBox[{"tmp1", "<", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "6"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp1", "=", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "3"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp1", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "6"}]}], "&&", 
                    RowBox[{"tmp1", "<", 
                    RowBox[{"Pi", "/", "6"}]}]}], ",", "\[IndentingNewLine]", 
                    
                    RowBox[{"tmp1", "=", "0"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp1", "\[GreaterEqual]", 
                    RowBox[{"Pi", "/", "6"}]}], "&&", 
                    RowBox[{"tmp1", "<", 
                    RowBox[{"3", 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp1", "=", 
                    RowBox[{"Pi", "/", "3"}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp", "\[GreaterEqual]", 
                    RowBox[{"3", 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                    RowBox[{"tmp1", "<", 
                    RowBox[{"5", 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp1", "=", 
                    RowBox[{"2", 
                    RowBox[{"Pi", "/", "3"}]}]}], ",", "\[IndentingNewLine]", 
                    "0"}], "\[IndentingNewLine]", "]"}]}], 
                    "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
                    "]"}]}], "\[IndentingNewLine]", "]"}]}], 
                 "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "]"}],
               ";", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"tmp2", "\[GreaterEqual]", 
                  RowBox[{"-", "Pi"}]}], "&&", 
                 RowBox[{"tmp2", "<", 
                  RowBox[{
                   RowBox[{"-", "5"}], 
                   RowBox[{"Pi", "/", "6"}]}]}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"tmp2", "=", 
                 RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"tmp2", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "5"}], 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                   RowBox[{"tmp2", "<", 
                    RowBox[{
                    RowBox[{"-", "3"}], 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"tmp2", "=", 
                   RowBox[{
                    RowBox[{"-", "2"}], 
                    RowBox[{"Pi", "/", "3"}]}]}], ",", "\[IndentingNewLine]", 
                  
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"tmp2", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                    RowBox[{"tmp2", "<", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "6"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp2", "=", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "3"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp2", "\[GreaterEqual]", 
                    RowBox[{
                    RowBox[{"-", "Pi"}], "/", "6"}]}], "&&", 
                    RowBox[{"tmp2", "<", 
                    RowBox[{"Pi", "/", "6"}]}]}], ",", "\[IndentingNewLine]", 
                    
                    RowBox[{"tmp2", "=", "0"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp2", "\[GreaterEqual]", 
                    RowBox[{"Pi", "/", "6"}]}], "&&", 
                    RowBox[{"tmp2", "<", 
                    RowBox[{"3", 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp2", "=", 
                    RowBox[{"Pi", "/", "3"}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"tmp", "\[GreaterEqual]", 
                    RowBox[{"3", 
                    RowBox[{"Pi", "/", "6"}]}]}], "&&", 
                    RowBox[{"tmp2", "<", 
                    RowBox[{"5", 
                    RowBox[{"Pi", "/", "6"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"tmp2", "=", 
                    RowBox[{"2", 
                    RowBox[{"Pi", "/", "3"}]}]}], ",", "\[IndentingNewLine]", 
                    "0"}], "\[IndentingNewLine]", "]"}]}], 
                    "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
                    "]"}]}], "\[IndentingNewLine]", "]"}]}], 
                 "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "]"}],
               ";", "\[IndentingNewLine]", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"Arg1", ",", "tmp1"}], "]"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"AppendTo", "[", 
               RowBox[{"Arg2", ",", "tmp2"}], "]"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"prearg1", "=", "arg1"}], ";", "\[IndentingNewLine]", 
              RowBox[{"prearg2", "=", "arg2"}], ";"}]}], 
            "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"AppendTo", "[", 
            RowBox[{"tmpDemoduled", ",", 
             RowBox[{"{", 
              RowBox[{"Arg1", ",", "Arg2"}], "}"}]}], "]"}], ";"}]}], 
         "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"tmpDemRecNum", ",", "tmpDemoduled"}], "]"}], ";"}]}], 
      "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"AppendTo", "[", 
      RowBox[{"demoduled", ",", "tmpDemRecNum"}], "]"}], ";"}]}], 
   "\[IndentingNewLine]", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"TimeB", "=", 
   RowBox[{"AbsoluteTime", "[", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Print", "[", 
   RowBox[{"TimeB", "-", "TimeA"}], "]"}], ";"}]}], "Input",ExpressionUUID->\
"09628bc8-055c-4e6e-994b-ae1e6e8439ca"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "1"}], "}"}]], "Print",ExpressionUUID->"8c81c0f9-a83d-4545-8b01-9aa51bf723a4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "0.045131`5.10601995009767"}], "}"}]], "Print",Expression\
UUID->"84399575-6494-406e-89dc-104794be125b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "15.033857`7.6286154084757385"}], "}"}]], "Print",Express\
ionUUID->"af74417e-3e38-40d9-80d9-3d988becc113"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "0.036356`5.012121088246974"}], "}"}]], "Print",Expressio\
nUUID->"31c8e0d9-09a5-4a83-97b8-752fc58bdab9"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "0.035874`5.006324797299765"}], "}"}]], "Print",Expressi\
onUUID->"2c86bdb9-1123-419c-a75d-a3450c84181f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "2"}], "}"}]], "Print",ExpressionUUID->"d7ef6e3d-20a9-4dc8-988b-c5ad6500045a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "21.956244`7.793103041952094"}], "}"}]], "Print",Expressi\
onUUID->"97a66424-a4eb-4d2f-b6fe-3d3689af93be"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "24.9321`7.848303853628377"}], "}"}]], "Print",Expression\
UUID->"0f2ed8af-2c9c-4416-896d-3dc90fa3c1f1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "29.362472`7.919337609139402"}], "}"}]], "Print",Expressi\
onUUID->"a9012301-396c-4ee1-8418-c33bf32db9c4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "27.658225`7.893369298790568"}], "}"}]], "Print",Express\
ionUUID->"4ace5fb9-20b5-4ec0-bd9b-d9ed8beecdc3"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "3"}], "}"}]], "Print",ExpressionUUID->"61beb1bf-5aed-4afb-8528-bd022170bd59"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "42.253005`8.077402594557064"}], "}"}]], "Print",Expressi\
onUUID->"8cd8ea86-96e8-491c-aef6-754499eade2c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "48.063001`8.13335587767194"}], "}"}]], "Print",Expressio\
nUUID->"24f49183-df35-4d98-86cf-2a9cc11b8481"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "43.701974`8.092046047810678"}], "}"}]], "Print",Expressi\
onUUID->"6d6cf867-a5f4-4085-9419-2bd1f42d1038"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "52.497048`8.171679876457063"}], "}"}]], "Print",Express\
ionUUID->"d95aee08-8b52-4104-96d2-fcb0c54d9f61"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "4"}], "}"}]], "Print",ExpressionUUID->"6d816efc-79c5-4563-95cc-c68374288762"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "30.687312`7.938503842348345"}], "}"}]], "Print",Expressi\
onUUID->"c82d1e3b-4f4f-4bee-804b-e67553bd1ef4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "33.5718179999999999999`7.977519853540224"}], 
  "}"}]], "Print",ExpressionUUID->"71dc7058-155f-4f6e-a59d-f3e7140ab7e0"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "42.298942`8.077874498239616"}], "}"}]], "Print",Expressi\
onUUID->"7012726e-ea7d-4a6a-9f9a-a9a9724620ce"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "41.072609`8.065097284329054"}], "}"}]], "Print",Express\
ionUUID->"85056d70-37ea-436c-97da-8c1c8b53bb2f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "5"}], "}"}]], "Print",ExpressionUUID->"aa50098d-45d7-4625-a074-53e919be639d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "5.893991`7.22195446185187"}], "}"}]], "Print",Expression\
UUID->"bffd65eb-7fdb-4626-a0d0-d5e4a6f6b923"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "0.037192`5.021994526671004"}], "}"}]], "Print",Expressio\
nUUID->"57fa6310-ef6a-4c6c-bfed-3f6b393bc0d1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "8.788823`7.395475711706117"}], "}"}]], "Print",Expressio\
nUUID->"f0934bd0-998e-4aa3-bfac-4f636269034b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "2.949958`6.921360826254446"}], "}"}]], "Print",Expressi\
onUUID->"25045267-1f45-4100-a77d-7ede5aeb5774"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "6"}], "}"}]], "Print",ExpressionUUID->"d48e4a62-0efe-4f64-a582-15c7f278c33d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", "80.187297`8.355650567768162"}], "}"}]], "Print",Expressi\
onUUID->"9dd1bc27-1de6-4aea-959b-efbb5b3f19d0"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", "87.292444`8.392521646467006"}], "}"}]], "Print",Expressi\
onUUID->"565f9c0f-a94e-42ba-8912-956af5a177f5"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"75", ",", "74.418645`8.323226751705269"}], "}"}]], "Print",Expressi\
onUUID->"d866d160-1936-48a2-8538-abde48538f9d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"100", ",", "83.392433`8.372671638193193"}], "}"}]], "Print",Express\
ionUUID->"71182243-9306-4fa8-9170-837b1de4b593"],

Cell[BoxData["796.169328`9.352550436102337"], "Print",ExpressionUUID->"8917dff4-5045-4b0f-a78a-bf4a8d41fdea"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"161986", "-", "65986"}]], "Input",ExpressionUUID->"8adb7af2-bd36-4477-87fb-64cd286679d3"],

Cell[BoxData["96000"], "Output",ExpressionUUID->"e29662da-246d-438e-ba7c-a67cfa38b122"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "demoduled", "]"}]], "Input",ExpressionUUID->"147b63d0-3459-42d3-b0b2-b8e721444782"],

Cell[BoxData["1"], "Output",ExpressionUUID->"7d86c2c0-c59a-4dad-829d-e52e735b3cb3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Pi", " ", 
   RowBox[{"2", "/", "3"}]}], "//", "N"}]], "Input",ExpressionUUID->"8fa4b507-\
81be-498e-bbcc-c41ade51b677"],

Cell[BoxData["2.0943951023931953`"], "Output",ExpressionUUID->"57fa112e-17ee-402c-84d4-1d0f015db9bc"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"demoduled", "[", 
  RowBox[{"[", 
   RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}]], "Input",ExpressionUUID->\
"9b263f76-5864-4121-9d2f-c9708a6d6974"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "0.8396123776828306`", "}"}], ",", 
     FractionBox["\[Pi]", "3"], ",", "0", ",", "0", ",", "0", ",", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{"2", " ", "\[Pi]"}], "3"]}], ",", 
     FractionBox["\[Pi]", "3"], ",", "0", ",", 
     FractionBox["\[Pi]", "3"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"-", "8.661832110666511`"}], "}"}], ",", "0", ",", "0", ",", 
     "0", ",", "0", ",", "0", ",", 
     FractionBox["\[Pi]", "3"], ",", "0", ",", "0"}], "}"}]}], 
  "}"}]], "Output",ExpressionUUID->"71161e6d-6ac4-41b4-83fc-218b5ab7e0e8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListLinePlot", "[", 
  RowBox[{"\[Theta]", ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]], "Input",ExpressionUUID->\
"405d9192-8f79-4b8a-a945-29fe48b73a80"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[7, 360], 0.019444444444444445`]], AbsoluteThickness[1.6], 
     LineBox[{{1., 0.}, {2., 1.0471975511965979`}, {3., 
      2.0943951023931957`}, {4., 3.141592653589793}, {5., 
      4.188790204786391}, {6., 5.235987755982989}, {7., 0.}, {8., 
      1.0471975511965979`}, {9., 2.0943951023931957`}, {10., 
      3.141592653589793}}]}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.8593750000000001, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{1., 10.}, {0, 5.235987755982989}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"8541c384-7fc7-\
46a5-a057-8c2d20d127c5"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"reference", "=", 
   RowBox[{
    RowBox[{"\[Theta]", "[", 
     RowBox[{"[", 
      RowBox[{"2", ";;"}], "]"}], "]"}], "-", 
    RowBox[{"\[Theta]", "[", 
     RowBox[{"[", 
      RowBox[{";;", 
       RowBox[{"-", "2"}]}], "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"i", "=", "1"}], ",", 
    RowBox[{"i", "\[LessEqual]", 
     RowBox[{"Length", "[", "reference", "]"}]}], ",", 
    RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"reference", "[", 
         RowBox[{"[", "i", "]"}], "]"}], ">", "Pi"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"reference", "[", 
         RowBox[{"[", "i", "]"}], "]"}], "-=", 
        RowBox[{"2", "Pi"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"reference", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "\[LessEqual]", 
          RowBox[{"-", "Pi"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"reference", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "+=", 
          RowBox[{"2", "Pi"}]}]}], "]"}]}], "\[IndentingNewLine]", "]"}], 
     ";"}]}], "\[IndentingNewLine]", "]"}], ";"}]}], "Input",ExpressionUUID->\
"a4646150-df1f-49e8-b067-ae63da078b96"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListLinePlot", "[", 
  RowBox[{"reference", ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]], "Input",ExpressionUUID->\
"9d190141-a488-440b-8429-504c5f40bfaf"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[7, 360], 0.019444444444444445`]], AbsoluteThickness[1.6], 
     LineBox[{{1., 1.0471975511965979`}, {2., 1.0471975511965979`}, {3., 
      1.0471975511965979`}, {4., 1.0471975511965979`}, {5., 
      1.0471975511965979`}, {6., 1.0471975511965979`}, {7., 
      1.0471975511965979`}, {8., 1.0471975511965979`}, {9., 
      1.0471975511965979`}}]}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.8750000000000001, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{1., 9.}, {0, 2.0943951023931957`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"9d89fe39-2852-\
483c-a58e-a0c30cd882c5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"reference", "[", 
   RowBox[{"[", "1", "]"}], "]"}], "\[Equal]", 
  RowBox[{"demoduled", "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1", ",", "1", ",", "1", ",", "1"}], "]"}], 
   "]"}]}]], "Input",ExpressionUUID->"ca1032d6-ad2e-4298-b2de-16c169380b32"],

Cell[BoxData[
 RowBox[{
  FractionBox["\[Pi]", "3"], "\[Equal]", 
  RowBox[{"{", "0.8396123776828306`", "}"}]}]], "Output",ExpressionUUID->\
"f9156526-9351-448b-ae47-58679760531d"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "result", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"result", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"i", "=", "1"}], ",", 
    RowBox[{"i", "\[LessEqual]", 
     RowBox[{"Length", "[", "demoduled", "]"}]}], ",", 
    RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Clear", "[", "tmp1", "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"tmp1", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"j", "=", "1"}], ",", 
       RowBox[{"j", "\[LessEqual]", 
        RowBox[{"Length", "[", 
         RowBox[{"demoduled", "[", 
          RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", 
       RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Clear", "[", "tmp2", "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"tmp2", "=", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "}"}], ",", 
           RowBox[{"{", "}"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"For", "[", 
         RowBox[{
          RowBox[{"k", "=", "1"}], ",", 
          RowBox[{"k", "\[LessEqual]", 
           RowBox[{"Length", "[", 
            RowBox[{"demoduled", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j"}], "]"}], "]"}], "]"}]}], ",", 
          RowBox[{"k", "++"}], ",", 
          RowBox[{"(*", 
           RowBox[{"100", "\:56de\:7e70\:308a\:8fd4\:3059"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"l", "=", "1"}], ",", 
            RowBox[{"l", "\[LessEqual]", 
             RowBox[{"Length", "[", 
              RowBox[{"demoduled", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", "j", ",", "k"}], "]"}], "]"}], "]"}]}], ",", 
            RowBox[{"l", "++"}], ",", 
            RowBox[{"(*", 
             RowBox[{"\[Alpha]", ",", "\[Beta]\:306e\:4e8c\:56de"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"eval", "=", "9"}], ";", "\[IndentingNewLine]", 
             RowBox[{"For", "[", 
              RowBox[{
               RowBox[{"m", "=", "1"}], ",", 
               RowBox[{"m", "\[LessEqual]", 
                RowBox[{"Length", "[", 
                 RowBox[{"demoduled", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "j", ",", "k", ",", "l"}], "]"}], "]"}], 
                 "]"}]}], ",", 
               RowBox[{"m", "++"}], ",", 
               RowBox[{"(*", 
                RowBox[{"\:3053\:3053\:3067", "\:3001", 
                 RowBox[{"9", "\:56de\:7e70\:308a\:8fd4\:3059"}]}], "*)"}], 
               "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"demoduled", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "j", ",", "k", ",", "l", ",", "m"}], 
                    "]"}], "]"}], "\[Equal]", " ", 
                   RowBox[{"reference", "[", 
                    RowBox[{"[", "m", "]"}], "]"}]}], ",", 
                  RowBox[{"eval", "--"}]}], "]"}], ";"}]}], 
              "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
             RowBox[{"AppendTo", "[", 
              RowBox[{
               RowBox[{"tmp2", "[", 
                RowBox[{"[", "l", "]"}], "]"}], ",", "eval"}], "]"}], ";"}]}],
            "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"AppendTo", "[", 
            RowBox[{"tmp2", ",", "tmp3"}], "]"}], ";"}], "*)"}], 
         "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"tmp1", ",", "tmp2"}], "]"}], ";"}]}], "\[IndentingNewLine]",
       "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"AppendTo", "[", 
      RowBox[{"result", ",", "tmp1"}], "]"}], ";"}]}], "\[IndentingNewLine]", 
   "]"}], ";"}]}], "Input",ExpressionUUID->"9916264c-aaf8-496f-9311-\
fc92fc8c74b6"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Length", "[", "result", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Length", "[", 
  RowBox[{"result", "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "]"}]}], "Input",Expressi\
onUUID->"8972cd0e-e72b-4445-8d39-349039512ffb"],

Cell[BoxData["1"], "Output",ExpressionUUID->"382ebbb7-dd16-4c97-a4c3-e5619271ceab"],

Cell[BoxData["100"], "Output",ExpressionUUID->"0703f5a2-4c76-404e-9b6d-8b12382ad812"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"result", "[", 
  RowBox[{"[", 
   RowBox[{"1", ",", "2", ",", "1"}], "]"}], "]"}]], "Input",ExpressionUUID->\
"25751e26-dec0-4ad9-b33b-c89caa5b0538"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "5", ",", "6", ",", "5", ",", "6", ",", "5", ",", "4", ",", "5", ",", "5", 
   ",", "6", ",", "4", ",", "4", ",", "5", ",", "5", ",", "5", ",", "3", ",", 
   "7", ",", "5", ",", "5", ",", "5", ",", "6", ",", "6", ",", "5", ",", "4", 
   ",", "4", ",", "5", ",", "5", ",", "6", ",", "5", ",", "5", ",", "4", ",", 
   "6", ",", "6", ",", "4", ",", "6", ",", "5", ",", "5", ",", "6", ",", "6", 
   ",", "4", ",", "5", ",", "5", ",", "5", ",", "5", ",", "6", ",", "5", ",", 
   "4", ",", "4", ",", "5", ",", "5", ",", "4", ",", "4", ",", "5", ",", "5", 
   ",", "6", ",", "6", ",", "4", ",", "4", ",", "4", ",", "5", ",", "5", ",", 
   "5", ",", "5", ",", "4", ",", "5", ",", "5", ",", "5", ",", "6", ",", "5", 
   ",", "4", ",", "5", ",", "3", ",", "6", ",", "4", ",", "4", ",", "5", ",", 
   "6", ",", "5", ",", "6", ",", "4", ",", "4", ",", "5", ",", "6", ",", "6", 
   ",", "6", ",", "4", ",", "4", ",", "4", ",", "5", ",", "6", ",", "4", ",", 
   "4", ",", "4", ",", "5", ",", "6", ",", "6", ",", "5", ",", "5", ",", "4", 
   ",", "6", ",", "6"}], "}"}]], "Output",ExpressionUUID->"b6b9d632-2f29-4e10-\
bce4-5745353748f6"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "count", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"count", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "}"}], ",", 
     RowBox[{"{", "}"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"For", "[", 
  RowBox[{
   RowBox[{"i", "=", "1"}], ",", 
   RowBox[{"i", "\[LessEqual]", 
    RowBox[{"Length", "[", "result", "]"}]}], ",", 
   RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Clear", "[", "tmp1", "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"tmp1", "=", 
     RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"Clear", "[", "tmp2", "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"tmp2", "=", 
     RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"j", "=", "1"}], ",", 
      RowBox[{"j", "\[LessEqual]", 
       RowBox[{"Length", "[", 
        RowBox[{"result", "[", 
         RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", 
      RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"AppendTo", "[", 
        RowBox[{"tmp1", ",", 
         RowBox[{"Count", "[", 
          RowBox[{
           RowBox[{"result", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "j", ",", "1"}], "]"}], "]"}], ",", "0"}], 
          "]"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"AppendTo", "[", 
        RowBox[{"tmp2", ",", 
         RowBox[{"Count", "[", 
          RowBox[{
           RowBox[{"result", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "j", ",", "2"}], "]"}], "]"}], ",", "0"}], 
          "]"}]}], "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"AppendTo", "[", 
     RowBox[{
      RowBox[{"count", "[", 
       RowBox[{"[", "1", "]"}], "]"}], ",", "tmp1"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"AppendTo", "[", 
     RowBox[{
      RowBox[{"count", "[", 
       RowBox[{"[", "2", "]"}], "]"}], ",", "tmp2"}], "]"}], ";"}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input",ExpressionUUID->"5c9e94da-d7a2-4191-\
8e19-17efa788e604"],

Cell[CellGroupData[{

Cell[BoxData["count"], "Input",ExpressionUUID->"43e65487-2d7f-478d-afc2-129fec4ab705"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
    "}"}]}], "}"}]], "Output",ExpressionUUID->"61f6008f-972a-4307-b0d1-\
44bfdf29e841"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"count", "[", 
    RowBox[{"[", "1", "]"}], "]"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"count", "[", 
    RowBox[{"[", "2", "]"}], "]"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "Input",ExpressionUUID-\
>"33556c75-4799-4938-9832-39442e7eb397"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.012833333333333334`],
      AbsoluteThickness[1.6], 
     PointBox[{{1., 0.}, {2., 0.}, {3., 0.}, {4., 0.}, {5., 0.}, {6., 
      0.}}]}, {}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.921875, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageMargins->0.,
  ImagePadding->All,
  ImageSize->Automatic,
  ImageSizeRaw->Automatic,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{1., 6.}, {-1., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"a50556c4-2bf2-\
4564-b538-317151f7f4c9"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.012833333333333334`],
      AbsoluteThickness[1.6], 
     PointBox[{{1., 0.}, {2., 0.}, {3., 0.}, {4., 0.}, {5., 0.}, {6., 
      0.}}]}, {}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.921875, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageMargins->0.,
  ImagePadding->All,
  ImageSize->Automatic,
  ImageSizeRaw->Automatic,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{1., 6.}, {-1., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"6893553a-2087-\
4eaf-a622-afb4415e371a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Count", "[", 
  RowBox[{
   RowBox[{"result", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], ",", "0"}], 
  "]"}]], "Input",ExpressionUUID->"f4d814f2-44b5-4b0b-86da-0317416d5ff5"],

Cell[BoxData["0"], "Output",ExpressionUUID->"79589398-82dc-423f-8da7-201b55c89cb3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", 
  RowBox[{"result", "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "]"}]], "Input",Expressio\
nUUID->"c45b1d80-8135-4107-a45f-4d7339b0c639"],

Cell[BoxData["100"], "Output",ExpressionUUID->"5e28b909-bef5-4010-b01d-718d381ccc8c"]
}, Open  ]]
},
WindowSize->{1920, 1016},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
Magnification:>0.95 Inherited,
FrontEndVersion->"11.3 for Linux x86 (64-bit) (2018\:5e743\:670812\:65e5)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 390, 10, 72, "Input",ExpressionUUID->"3c39fa1e-382d-4cc1-a97f-98c873615404"],
Cell[1903, 47, 87, 0, 34, "Output",ExpressionUUID->"3098731b-0e79-477e-bca6-5c12b17ec302"]
}, Open  ]],
Cell[2005, 50, 126, 2, 31, "Input",ExpressionUUID->"e081adc4-74f8-4bcd-b8de-bb6151885c93"],
Cell[2134, 54, 138, 3, 31, "Input",ExpressionUUID->"2e0587d9-7295-4423-8fcc-e43d553cd9dd"],
Cell[CellGroupData[{
Cell[2297, 61, 139, 3, 49, "Input",ExpressionUUID->"b282f845-15a5-4dcd-903d-4afa8c9ce58d"],
Cell[2439, 66, 87, 0, 34, "Output",ExpressionUUID->"902c86b8-5314-429a-a66d-ed31a803d9d4"]
}, Open  ]],
Cell[2541, 69, 782, 21, 181, "Input",ExpressionUUID->"c01f6697-30df-4b8d-8a73-3cb9e2e9ff5f"],
Cell[CellGroupData[{
Cell[3348, 94, 85, 0, 31, "Input",ExpressionUUID->"600d3c5f-c4ba-4b05-bb03-39ef0560d36e"],
Cell[3436, 96, 512, 15, 34, "Output",ExpressionUUID->"4f4b5bd7-9410-46a5-b2d4-3f97b43b5ace"]
}, Open  ]],
Cell[3963, 114, 568, 16, 49, "Input",ExpressionUUID->"4070c166-6056-4ee7-801a-bb85d9608419"],
Cell[4534, 132, 3093, 80, 506, "Input",ExpressionUUID->"f6579e62-ee15-4e37-bbba-6011a255509d"],
Cell[7630, 214, 175, 4, 31, "Input",ExpressionUUID->"43fc7265-d387-4a4f-a489-7fd85747a2c7"],
Cell[7808, 220, 200, 5, 55, "Input",ExpressionUUID->"5dcdbb91-b03e-4054-b3d1-792996184dd6"],
Cell[8011, 227, 733, 20, 139, "Input",ExpressionUUID->"562926bf-3275-420a-a585-d11352dff2ba"],
Cell[8747, 249, 809, 22, 227, "Input",ExpressionUUID->"b98dd8c0-4eed-41d1-9ebb-ce23c49ba152"],
Cell[9559, 273, 759, 21, 181, "Input",ExpressionUUID->"45cfe027-4341-41d8-905b-a97dca6fe6d8"],
Cell[10321, 296, 512, 17, 95, "Input",ExpressionUUID->"34f84cb7-355d-44a8-9060-b6e74d68ee20"],
Cell[10836, 315, 412, 12, 49, "Input",ExpressionUUID->"475ab412-bb01-433b-a026-9074eeb05f1a"],
Cell[11251, 329, 401, 11, 49, "Input",ExpressionUUID->"9ae340ce-9320-49ec-b591-a7a05c97acbe"],
Cell[11655, 342, 372, 10, 49, "Input",ExpressionUUID->"c188cc12-0582-468c-92fa-a4c481093fcf"],
Cell[12030, 354, 1828, 53, 265, "Input",ExpressionUUID->"795c76c5-cd6f-4f9f-965b-4bcadad53c55"],
Cell[CellGroupData[{
Cell[13883, 411, 90, 0, 31, "Input",ExpressionUUID->"84e5ca43-045a-44a3-8c6b-55becb4f93b8"],
Cell[13976, 413, 87, 0, 34, "Output",ExpressionUUID->"f4331b6e-957e-4448-80da-461b68b1128c"]
}, Open  ]],
Cell[14078, 416, 320, 9, 49, "Input",ExpressionUUID->"52019318-800c-410b-aa82-ec2dc50fcc11"],
Cell[14401, 427, 7072, 176, 561, "Input",ExpressionUUID->"a0944036-5a58-452b-894e-eee2e96720ff"],
Cell[21476, 605, 905, 26, 101, "Input",ExpressionUUID->"fee62075-56ea-4e72-885c-e762b1e06206"],
Cell[22384, 633, 81, 0, 31, "Input",ExpressionUUID->"8c5e7392-90e2-4627-ac2d-92459beced6c"],
Cell[22468, 635, 3910, 110, 101, "Input",ExpressionUUID->"0ec4ab33-d490-4cef-b729-7352ee6c3508"],
Cell[CellGroupData[{
Cell[26403, 749, 142, 3, 55, "Input",ExpressionUUID->"3858d02f-f09d-47ff-8f21-a070000f9c55"],
Cell[26548, 754, 83, 0, 34, "Output",ExpressionUUID->"9dc6a369-f988-4643-9477-42c2051e23e7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26668, 759, 1744, 45, 412, "Input",ExpressionUUID->"80b8efed-2412-4fc9-bc38-59670ed8f329"],
Cell[28415, 806, 179, 2, 34, "Output",ExpressionUUID->"93023275-b0ad-413d-bd35-0e5590f38663"],
Cell[CellGroupData[{
Cell[28619, 812, 186, 2, 25, "Print",ExpressionUUID->"588f9cea-465a-4d21-8d65-0dd8b54aa9be"],
Cell[28808, 816, 82, 0, 25, "Print",ExpressionUUID->"65daeaa0-28d6-404f-bff5-9a6770e5fe0c"],
Cell[28893, 818, 187, 2, 25, "Print",ExpressionUUID->"d8feab9e-d7a4-4d6e-b4f5-b6ffd0bc747a"],
Cell[29083, 822, 82, 0, 25, "Print",ExpressionUUID->"6924a3bb-ddc8-4e8b-bd50-71369edc177d"],
Cell[29168, 824, 187, 2, 25, "Print",ExpressionUUID->"fe286ac2-5ae7-41f3-bbb5-e5d3acbbe270"],
Cell[29358, 828, 82, 0, 25, "Print",ExpressionUUID->"daf61f9d-bd0b-4b65-bf2b-c3f2487e82fd"],
Cell[29443, 830, 187, 2, 25, "Print",ExpressionUUID->"85570efc-a550-4759-a8e2-73f586a8304f"],
Cell[29633, 834, 82, 0, 25, "Print",ExpressionUUID->"f163a3b4-e331-4d7e-b144-4460775a876b"],
Cell[29718, 836, 187, 2, 25, "Print",ExpressionUUID->"d5a07268-f6cd-4601-8fc1-fd5b1b92b89c"],
Cell[29908, 840, 82, 0, 25, "Print",ExpressionUUID->"19c80734-0169-4456-bca4-a91bf91b5857"],
Cell[29993, 842, 187, 2, 25, "Print",ExpressionUUID->"5b3a8664-cac9-4dbc-88fb-14161babcb01"],
Cell[30183, 846, 82, 0, 25, "Print",ExpressionUUID->"c917f354-ca53-49cb-8704-a4170feea472"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[30314, 852, 394, 9, 133, "Input",ExpressionUUID->"d67cf4ff-d72c-4ac3-a9b6-4d8ff13167a6"],
Cell[30711, 863, 83, 0, 34, "Output",ExpressionUUID->"155ba661-3f43-4570-bbfb-b06399a45f93"],
Cell[30797, 865, 83, 0, 34, "Output",ExpressionUUID->"7313b4d0-b1c8-4645-bd49-0646912d13b7"],
Cell[30883, 867, 90, 0, 34, "Output",ExpressionUUID->"a05612d6-7fbb-4018-a030-884ee1188826"]
}, Open  ]],
Cell[30988, 870, 1442, 36, 353, "Input",ExpressionUUID->"916db743-e246-4c28-99c6-1a467d612fdf"],
Cell[CellGroupData[{
Cell[32455, 910, 25499, 561, 4368, "Input",ExpressionUUID->"09628bc8-055c-4e6e-994b-ae1e6e8439ca"],
Cell[CellGroupData[{
Cell[57979, 1475, 127, 2, 25, "Print",ExpressionUUID->"8c81c0f9-a83d-4545-8b01-9aa51bf723a4"],
Cell[58109, 1479, 154, 3, 25, "Print",ExpressionUUID->"84399575-6494-406e-89dc-104794be125b"],
Cell[58266, 1484, 157, 3, 25, "Print",ExpressionUUID->"af74417e-3e38-40d9-80d9-3d988becc113"],
Cell[58426, 1489, 155, 3, 25, "Print",ExpressionUUID->"31c8e0d9-09a5-4a83-97b8-752fc58bdab9"],
Cell[58584, 1494, 156, 3, 25, "Print",ExpressionUUID->"2c86bdb9-1123-419c-a75d-a3450c84181f"],
Cell[58743, 1499, 127, 2, 25, "Print",ExpressionUUID->"d7ef6e3d-20a9-4dc8-988b-c5ad6500045a"],
Cell[58873, 1503, 156, 3, 25, "Print",ExpressionUUID->"97a66424-a4eb-4d2f-b6fe-3d3689af93be"],
Cell[59032, 1508, 154, 3, 25, "Print",ExpressionUUID->"0f2ed8af-2c9c-4416-896d-3dc90fa3c1f1"],
Cell[59189, 1513, 156, 3, 25, "Print",ExpressionUUID->"a9012301-396c-4ee1-8418-c33bf32db9c4"],
Cell[59348, 1518, 157, 3, 25, "Print",ExpressionUUID->"4ace5fb9-20b5-4ec0-bd9b-d9ed8beecdc3"],
Cell[59508, 1523, 127, 2, 25, "Print",ExpressionUUID->"61beb1bf-5aed-4afb-8528-bd022170bd59"],
Cell[59638, 1527, 156, 3, 25, "Print",ExpressionUUID->"8cd8ea86-96e8-491c-aef6-754499eade2c"],
Cell[59797, 1532, 155, 3, 25, "Print",ExpressionUUID->"24f49183-df35-4d98-86cf-2a9cc11b8481"],
Cell[59955, 1537, 156, 3, 25, "Print",ExpressionUUID->"6d6cf867-a5f4-4085-9419-2bd1f42d1038"],
Cell[60114, 1542, 157, 3, 25, "Print",ExpressionUUID->"d95aee08-8b52-4104-96d2-fcb0c54d9f61"],
Cell[60274, 1547, 127, 2, 25, "Print",ExpressionUUID->"6d816efc-79c5-4563-95cc-c68374288762"],
Cell[60404, 1551, 156, 3, 25, "Print",ExpressionUUID->"c82d1e3b-4f4f-4bee-804b-e67553bd1ef4"],
Cell[60563, 1556, 170, 3, 25, "Print",ExpressionUUID->"71dc7058-155f-4f6e-a59d-f3e7140ab7e0"],
Cell[60736, 1561, 156, 3, 25, "Print",ExpressionUUID->"7012726e-ea7d-4a6a-9f9a-a9a9724620ce"],
Cell[60895, 1566, 157, 3, 25, "Print",ExpressionUUID->"85056d70-37ea-436c-97da-8c1c8b53bb2f"],
Cell[61055, 1571, 127, 2, 25, "Print",ExpressionUUID->"aa50098d-45d7-4625-a074-53e919be639d"],
Cell[61185, 1575, 154, 3, 25, "Print",ExpressionUUID->"bffd65eb-7fdb-4626-a0d0-d5e4a6f6b923"],
Cell[61342, 1580, 155, 3, 25, "Print",ExpressionUUID->"57fa6310-ef6a-4c6c-bfed-3f6b393bc0d1"],
Cell[61500, 1585, 155, 3, 25, "Print",ExpressionUUID->"f0934bd0-998e-4aa3-bfac-4f636269034b"],
Cell[61658, 1590, 156, 3, 25, "Print",ExpressionUUID->"25045267-1f45-4100-a77d-7ede5aeb5774"],
Cell[61817, 1595, 127, 2, 25, "Print",ExpressionUUID->"d48e4a62-0efe-4f64-a582-15c7f278c33d"],
Cell[61947, 1599, 156, 3, 25, "Print",ExpressionUUID->"9dd1bc27-1de6-4aea-959b-efbb5b3f19d0"],
Cell[62106, 1604, 156, 3, 25, "Print",ExpressionUUID->"565f9c0f-a94e-42ba-8912-956af5a177f5"],
Cell[62265, 1609, 156, 3, 25, "Print",ExpressionUUID->"d866d160-1936-48a2-8538-abde48538f9d"],
Cell[62424, 1614, 157, 3, 25, "Print",ExpressionUUID->"71182243-9306-4fa8-9170-837b1de4b593"],
Cell[62584, 1619, 109, 0, 25, "Print",ExpressionUUID->"8917dff4-5045-4b0f-a78a-bf4a8d41fdea"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[62742, 1625, 113, 1, 31, "Input",ExpressionUUID->"8adb7af2-bd36-4477-87fb-64cd286679d3"],
Cell[62858, 1628, 87, 0, 34, "Output",ExpressionUUID->"e29662da-246d-438e-ba7c-a67cfa38b122"]
}, Open  ]],
Cell[CellGroupData[{
Cell[62982, 1633, 122, 1, 49, "Input",ExpressionUUID->"147b63d0-3459-42d3-b0b2-b8e721444782"],
Cell[63107, 1636, 83, 0, 34, "Output",ExpressionUUID->"7d86c2c0-c59a-4dad-829d-e52e735b3cb3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[63227, 1641, 155, 4, 49, "Input",ExpressionUUID->"8fa4b507-81be-498e-bbcc-c41ade51b677"],
Cell[63385, 1647, 101, 0, 34, "Output",ExpressionUUID->"57fa112e-17ee-402c-84d4-1d0f015db9bc"]
}, Open  ]],
Cell[CellGroupData[{
Cell[63523, 1652, 176, 4, 31, "Input",ExpressionUUID->"9b263f76-5864-4121-9d2f-c9708a6d6974"],
Cell[63702, 1658, 674, 18, 51, "Output",ExpressionUUID->"71161e6d-6ac4-41b4-83fc-218b5ab7e0e8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[64413, 1681, 192, 4, 49, "Input",ExpressionUUID->"405d9192-8f79-4b8a-a945-29fe48b73a80"],
Cell[64608, 1687, 1487, 39, 236, "Output",ExpressionUUID->"8541c384-7fc7-46a5-a057-8c2d20d127c5"]
}, Open  ]],
Cell[66110, 1729, 1407, 40, 288, "Input",ExpressionUUID->"a4646150-df1f-49e8-b067-ae63da078b96"],
Cell[CellGroupData[{
Cell[67542, 1773, 193, 4, 49, "Input",ExpressionUUID->"9d190141-a488-440b-8429-504c5f40bfaf"],
Cell[67738, 1779, 1502, 39, 230, "Output",ExpressionUUID->"9d89fe39-2852-483c-a58e-a0c30cd882c5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[69277, 1823, 290, 7, 31, "Input",ExpressionUUID->"ca1032d6-ad2e-4298-b2de-16c169380b32"],
Cell[69570, 1832, 180, 4, 48, "Output",ExpressionUUID->"f9156526-9351-448b-ae47-58679760531d"]
}, Open  ]],
Cell[69765, 1839, 4198, 100, 763, "Input",ExpressionUUID->"9916264c-aaf8-496f-9311-fc92fc8c74b6"],
Cell[CellGroupData[{
Cell[73988, 1943, 275, 6, 91, "Input",ExpressionUUID->"8972cd0e-e72b-4445-8d39-349039512ffb"],
Cell[74266, 1951, 83, 0, 34, "Output",ExpressionUUID->"382ebbb7-dd16-4c97-a4c3-e5619271ceab"],
Cell[74352, 1953, 85, 0, 34, "Output",ExpressionUUID->"0703f5a2-4c76-404e-9b6d-8b12382ad812"]
}, Open  ]],
Cell[CellGroupData[{
Cell[74474, 1958, 173, 4, 31, "Input",ExpressionUUID->"25751e26-dec0-4ad9-b33b-c89caa5b0538"],
Cell[74650, 1964, 1165, 17, 58, "Output",ExpressionUUID->"b6b9d632-2f29-4e10-bce4-5745353748f6"]
}, Open  ]],
Cell[75830, 1984, 2147, 58, 502, "Input",ExpressionUUID->"5c9e94da-d7a2-4191-8e19-17efa788e604"],
Cell[CellGroupData[{
Cell[78002, 2046, 86, 0, 31, "Input",ExpressionUUID->"43e65487-2d7f-478d-afc2-129fec4ab705"],
Cell[78091, 2048, 370, 11, 34, "Output",ExpressionUUID->"61f6008f-972a-4307-b0d1-44bfdf29e841"]
}, Open  ]],
Cell[CellGroupData[{
Cell[78498, 2064, 424, 11, 91, "Input",ExpressionUUID->"33556c75-4799-4938-9832-39442e7eb397"],
Cell[78925, 2077, 1310, 38, 213, "Output",ExpressionUUID->"a50556c4-2bf2-4564-b538-317151f7f4c9"],
Cell[80238, 2117, 1310, 38, 213, "Output",ExpressionUUID->"6893553a-2087-4eaf-a622-afb4415e371a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[81585, 2160, 234, 6, 49, "Input",ExpressionUUID->"f4d814f2-44b5-4b0b-86da-0317416d5ff5"],
Cell[81822, 2168, 83, 0, 34, "Output",ExpressionUUID->"79589398-82dc-423f-8da7-201b55c89cb3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[81942, 2173, 208, 5, 49, "Input",ExpressionUUID->"c45b1d80-8135-4107-a45f-4d7339b0c639"],
Cell[82153, 2180, 85, 0, 34, "Output",ExpressionUUID->"5e28b909-bef5-4010-b01d-718d381ccc8c"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature pu03OiPVJ5Tu4AwVZDTPBoi1 *)
