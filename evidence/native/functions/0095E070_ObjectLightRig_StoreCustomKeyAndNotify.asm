# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: ObjectLightRig_StoreCustomKeyAndNotify
Paired annotated actual pseudocode: 0095E070_ObjectLightRig_StoreCustomKeyAndNotify.c
Owned ranges: [[0095e070, 0095e091]]

GHIDRA LISTING (original bytes)
0095e070  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0095e074  394110  CMP dword ptr [ECX + 0x10],EAX
0095e077  7416  JZ 0x0095e08f
0095e079  894110  MOV dword ptr [ECX + 0x10],EAX
0095e07c  8b4904  MOV ECX,dword ptr [ECX + 0x4]
0095e07f  8d442404  LEA EAX,[ESP + 0x4]
0095e083  50  PUSH EAX
0095e084  51  PUSH ECX
0095e085  6a1f  PUSH 0x1f
0095e087  e83476fdff  CALL 0x009356c0
0095e08c  83c40c  ADD ESP,0xc
0095e08f  c20400  RET 0x4
Owned instructions=12 owned bytes=34
