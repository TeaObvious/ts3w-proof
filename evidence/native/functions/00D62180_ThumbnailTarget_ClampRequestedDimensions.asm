# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailTarget_ClampRequestedDimensions
Paired actual annotated Ghidra pseudocode: 00D62180_ThumbnailTarget_ClampRequestedDimensions.c
Owned ranges: [[00d62180, 00d621c1]]
Envelope bytes=66

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d62180  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00d62184  3b512c  CMP EDX,dword ptr [ECX + 0x2c]
00d62187  8d412c  LEA EAX,[ECX + 0x2c]
00d6218a  56  PUSH ESI
00d6218b  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00d6218f  7705  JA 0x00d62196
00d62191  3b7130  CMP ESI,dword ptr [ECX + 0x30]
00d62194  7622  JBE 0x00d621b8
00d62196  3910  CMP dword ptr [EAX],EDX
00d62198  7204  JC 0x00d6219e
00d6219a  8d442408  LEA EAX,[ESP + 0x8]
00d6219e  397130  CMP dword ptr [ECX + 0x30],ESI
00d621a1  8b10  MOV EDX,dword ptr [EAX]
00d621a3  8d4130  LEA EAX,[ECX + 0x30]
00d621a6  7204  JC 0x00d621ac
00d621a8  8d44240c  LEA EAX,[ESP + 0xc]
00d621ac  8b00  MOV EAX,dword ptr [EAX]
00d621ae  894128  MOV dword ptr [ECX + 0x28],EAX
00d621b1  895124  MOV dword ptr [ECX + 0x24],EDX
00d621b4  5e  POP ESI
00d621b5  c20800  RET 0x8
00d621b8  897128  MOV dword ptr [ECX + 0x28],ESI
00d621bb  895124  MOV dword ptr [ECX + 0x24],EDX
00d621be  5e  POP ESI
00d621bf  c20800  RET 0x8
Owned instructions=25 owned bytes=66 gap/nonowned bytes=0
