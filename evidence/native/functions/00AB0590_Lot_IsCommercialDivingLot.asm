# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: Lot_IsCommercialDivingLot
; Owned ranges: [[00ab0590, 00ab05b1]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. ECX lot pointer, no stack parameters, plainRET. Compare DWORD lot+408==1 and lot+40C==50hex; true only for both. Instructions MOV EAX1 / XOR EAX plus XOR ECX,TEST AL,SETNZ CL,MOV EAX,ECX prove fullEAX0/1, although existing inferred return metadata saysAL. Used by63E0A0 as routing level1/0; no prototype/type repair is made. Complete34bytes/11instructions.

00ab0590  b801000000  MOV EAX,0x1
00ab0595  398108040000  CMP dword ptr [ECX + 0x408],EAX
00ab059b  7509  JNZ 0x00ab05a6
00ab059d  83b90c04000050  CMP dword ptr [ECX + 0x40c],0x50
00ab05a4  7402  JZ 0x00ab05a8
00ab05a6  33c0  XOR EAX,EAX
00ab05a8  33c9  XOR ECX,ECX
00ab05aa  84c0  TEST AL,AL
00ab05ac  0f95c1  SETNZ CL
00ab05af  8bc1  MOV EAX,ECX
00ab05b1  c3  RET
