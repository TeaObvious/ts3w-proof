# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1098a040..1098a092; ResourceMgr_CreateKeyFromName
1098a040: 83ec10  SUB ESP,0x10
1098a043: 8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
1098a047: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
1098a04b: 33c0  XOR EAX,EAX
1098a04d: 50  PUSH EAX
1098a04e: 50  PUSH EAX
1098a04f: 89442408  MOV dword ptr [ESP + 0x8],EAX
1098a053: 8944240c  MOV dword ptr [ESP + 0xc],EAX
1098a057: 89442410  MOV dword ptr [ESP + 0x10],EAX
1098a05b: 89442414  MOV dword ptr [ESP + 0x14],EAX
1098a05f: 8b442428  MOV EAX,dword ptr [ESP + 0x28]
1098a063: 50  PUSH EAX
1098a064: 51  PUSH ECX
1098a065: 52  PUSH EDX
1098a066: 8d442414  LEA EAX,[ESP + 0x14]
1098a06a: 50  PUSH EAX
1098a06b: e8c0a7f5ff  CALL 0x108e4830
1098a070: 8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
1098a074: 8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
1098a078: 8b542424  MOV EDX,dword ptr [ESP + 0x24]
1098a07c: 8908  MOV dword ptr [EAX],ECX
1098a07e: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
1098a082: 895004  MOV dword ptr [EAX + 0x4],EDX
1098a085: 8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
1098a089: 894808  MOV dword ptr [EAX + 0x8],ECX
1098a08c: 89500c  MOV dword ptr [EAX + 0xc],EDX
1098a08f: 83c428  ADD ESP,0x28
1098a092: c3  RET
