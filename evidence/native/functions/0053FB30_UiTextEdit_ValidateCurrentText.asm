# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053FB30_UiTextEdit_ValidateCurrentText.c
Owned ranges: [[0053fb30, 0053fb91]]

0053fb30  83ec28  SUB ESP,0x28
0053fb33  8b417c  MOV EAX,dword ptr [ECX + 0x7c]
0053fb36  8b9180000000  MOV EDX,dword ptr [ECX + 0x80]
0053fb3c  2bd0  SUB EDX,EAX
0053fb3e  d1fa  SAR EDX,0x1
0053fb40  56  PUSH ESI
0053fb41  89442404  MOV dword ptr [ESP + 0x4],EAX
0053fb45  8d7104  LEA ESI,[ECX + 0x4]
0053fb48  89542408  MOV dword ptr [ESP + 0x8],EDX
0053fb4c  8b16  MOV EDX,dword ptr [ESI]
0053fb4e  8d442404  LEA EAX,[ESP + 0x4]
0053fb52  89442428  MOV dword ptr [ESP + 0x28],EAX
0053fb56  8b4214  MOV EAX,dword ptr [EDX + 0x14]
0053fb59  8bce  MOV ECX,ESI
0053fb5b  c7442418da52159b  MOV dword ptr [ESP + 0x18],0x9b1552da
0053fb63  c644240c01  MOV byte ptr [ESP + 0xc],0x1
0053fb68  ffd0  CALL EAX
0053fb6a  85c0  TEST EAX,EAX
0053fb6c  741b  JZ 0x0053fb89
0053fb6e  8b16  MOV EDX,dword ptr [ESI]
0053fb70  8b4214  MOV EAX,dword ptr [EDX + 0x14]
0053fb73  8bce  MOV ECX,ESI
0053fb75  ffd0  CALL EAX
0053fb77  8b10  MOV EDX,dword ptr [EAX]
0053fb79  8b5210  MOV EDX,dword ptr [EDX + 0x10]
0053fb7c  6a00  PUSH 0x0
0053fb7e  8d4c2414  LEA ECX,[ESP + 0x14]
0053fb82  51  PUSH ECX
0053fb83  56  PUSH ESI
0053fb84  56  PUSH ESI
0053fb85  8bc8  MOV ECX,EAX
0053fb87  ffd2  CALL EDX
0053fb89  8a44240c  MOV AL,byte ptr [ESP + 0xc]
0053fb8d  5e  POP ESI
0053fb8e  83c428  ADD ESP,0x28
0053fb91  c3  RET
