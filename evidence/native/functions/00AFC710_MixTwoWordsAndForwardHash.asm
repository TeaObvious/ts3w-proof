# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined8 MixTwoWordsAndForwardHash(int param_1, int param_2)
Owned ranges: [[00afc710, 00afc782]]

00afc710  56  PUSH ESI
00afc711  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00afc715  8bc1  MOV EAX,ECX
00afc717  c1e00f  SHL EAX,0xf
00afc71a  f7d0  NOT EAX
00afc71c  03c1  ADD EAX,ECX
00afc71e  8bc8  MOV ECX,EAX
00afc720  c1e90a  SHR ECX,0xa
00afc723  33c8  XOR ECX,EAX
00afc725  8d04c9  LEA EAX,[ECX + ECX*0x8]
00afc728  8bc8  MOV ECX,EAX
00afc72a  c1e906  SHR ECX,0x6
00afc72d  33c1  XOR EAX,ECX
00afc72f  8bd0  MOV EDX,EAX
00afc731  c1e20b  SHL EDX,0xb
00afc734  f7d2  NOT EDX
00afc736  03c2  ADD EAX,EDX
00afc738  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00afc73c  8bca  MOV ECX,EDX
00afc73e  c1e10f  SHL ECX,0xf
00afc741  f7d1  NOT ECX
00afc743  03ca  ADD ECX,EDX
00afc745  8bd1  MOV EDX,ECX
00afc747  c1ea0a  SHR EDX,0xa
00afc74a  33d1  XOR EDX,ECX
00afc74c  8d0cd2  LEA ECX,[EDX + EDX*0x8]
00afc74f  8bd1  MOV EDX,ECX
00afc751  c1ea06  SHR EDX,0x6
00afc754  33ca  XOR ECX,EDX
00afc756  8bd1  MOV EDX,ECX
00afc758  c1e20b  SHL EDX,0xb
00afc75b  f7d2  NOT EDX
00afc75d  03ca  ADD ECX,EDX
00afc75f  8bd0  MOV EDX,EAX
00afc761  8bf1  MOV ESI,ECX
00afc763  c1ea10  SHR EDX,0x10
00afc766  c1ee10  SHR ESI,0x10
00afc769  33d0  XOR EDX,EAX
00afc76b  33f1  XOR ESI,ECX
00afc76d  33c0  XOR EAX,EAX
00afc76f  33c9  XOR ECX,ECX
00afc771  0bc6  OR EAX,ESI
00afc773  0bd1  OR EDX,ECX
00afc775  5e  POP ESI
00afc776  89542408  MOV dword ptr [ESP + 0x8],EDX
00afc77a  89442404  MOV dword ptr [ESP + 0x4],EAX
00afc77e  e9edfeffff  JMP 0x00afc670
