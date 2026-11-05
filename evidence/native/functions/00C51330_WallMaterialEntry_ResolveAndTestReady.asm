# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c51330, 00c513bc]]
Actual pseudocode: 00C51330_WallMaterialEntry_ResolveAndTestReady.c
; Actual plate: Analyst PC1.67 Physical ECX entry, no stack arguments/plain RET; only AL is meaningful predicate. If material+38 absent, clear entry+68, reject zero or low-two-bit-tagged source+3C, compare four actual key words+48/+50/+54/+4C against globals11EC8D0/D8/DC/D4. Equal path rereads output+38 and clears it before old virtual+4 release if nonnull, then calls actual MaterialDef_AcquireMaterial6CAEC0 with source inECX and stack(&entry+38,FFFFFFFF); other path calls C505A0. Present output tests material+30==3 using XOR EAX/SETZ AL; absent/rejected path XOR AL only leaves upper residue. Key words are actual32-bit fields; tag test is not a whole64-bit sentinel classification. C51720 consumes only AL for its bucket readiness. Complete C505A0/material creation/status producers and exact queued execution remain their own owners; no native decoder, current texture/hash prewarm, frame-budget or GPU completion parity is asserted.

00c51330  56  PUSH ESI
00c51331  8bf1  MOV ESI,ECX
00c51333  837e3800  CMP dword ptr [ESI + 0x38],0x0
00c51337  57  PUSH EDI
00c51338  8d7e38  LEA EDI,[ESI + 0x38]
00c5133b  7569  JNZ 0x00c513a6
00c5133d  c7466800000000  MOV dword ptr [ESI + 0x68],0x0
00c51344  8b463c  MOV EAX,dword ptr [ESI + 0x3c]
00c51347  85c0  TEST EAX,EAX
00c51349  746d  JZ 0x00c513b8
00c5134b  8b4e3c  MOV ECX,dword ptr [ESI + 0x3c]
00c5134e  f6c103  TEST CL,0x3
00c51351  7565  JNZ 0x00c513b8
00c51353  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00c51356  3b15d0c81e01  CMP EDX,dword ptr [0x011ec8d0]
00c5135c  7521  JNZ 0x00c5137f
00c5135e  8b4650  MOV EAX,dword ptr [ESI + 0x50]
00c51361  3b05d8c81e01  CMP EAX,dword ptr [0x011ec8d8]
00c51367  7516  JNZ 0x00c5137f
00c51369  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00c5136c  3b0ddcc81e01  CMP ECX,dword ptr [0x011ec8dc]
00c51372  750b  JNZ 0x00c5137f
00c51374  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00c51377  3b15d4c81e01  CMP EDX,dword ptr [0x011ec8d4]
00c5137d  7409  JZ 0x00c51388
00c5137f  8bce  MOV ECX,ESI
00c51381  e81af2ffff  CALL 0x00c505a0
00c51386  eb1e  JMP 0x00c513a6
00c51388  8b0f  MOV ECX,dword ptr [EDI]
00c5138a  85c9  TEST ECX,ECX
00c5138c  740d  JZ 0x00c5139b
00c5138e  c70700000000  MOV dword ptr [EDI],0x0
00c51394  8b01  MOV EAX,dword ptr [ECX]
00c51396  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c51399  ffd2  CALL EDX
00c5139b  8b4e3c  MOV ECX,dword ptr [ESI + 0x3c]
00c5139e  6aff  PUSH -0x1
00c513a0  57  PUSH EDI
00c513a1  e81a9ba7ff  CALL 0x006caec0
00c513a6  8b3f  MOV EDI,dword ptr [EDI]
00c513a8  85ff  TEST EDI,EDI
00c513aa  740c  JZ 0x00c513b8
00c513ac  33c0  XOR EAX,EAX
00c513ae  837f3003  CMP dword ptr [EDI + 0x30],0x3
00c513b2  5f  POP EDI
00c513b3  0f94c0  SETZ AL
00c513b6  5e  POP ESI
00c513b7  c3  RET
00c513b8  5f  POP EDI
00c513b9  32c0  XOR AL,AL
00c513bb  5e  POP ESI
00c513bc  c3  RET
