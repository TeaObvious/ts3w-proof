# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00517F70_WinButton_QueryInterface.c
Owned ranges: [[00517f70, 00517f95]]

00517f70  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00517f74  3d7a7ed28e  CMP EAX,0x8ed27e7a
00517f79  7409  JZ 0x00517f84
00517f7b  89442404  MOV dword ptr [ESP + 0x4],EAX
00517f7f  e98cbaffff  JMP 0x00513a10
00517f84  85c9  TEST ECX,ECX
00517f86  7409  JZ 0x00517f91
00517f88  8d8150020000  LEA EAX,[ECX + 0x250]
00517f8e  c20400  RET 0x4
00517f91  33c0  XOR EAX,EAX
00517f93  c20400  RET 0x4
