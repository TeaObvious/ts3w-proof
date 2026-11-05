# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fa460..101fa4a6; CAW_TerrainGetHeightRasterDirtyRect
101fa460: 8b4908  MOV ECX,dword ptr [ECX + 0x8]
101fa463: 33c0  XOR EAX,EAX
101fa465: 83ec10  SUB ESP,0x10
101fa468: 3bc8  CMP ECX,EAX
101fa46a: 7407  JZ 0x101fa473
101fa46c: e82fe4e6ff  CALL 0x100688a0
101fa471: eb12  JMP 0x101fa485
101fa473: 890424  MOV dword ptr [ESP],EAX
101fa476: 89442404  MOV dword ptr [ESP + 0x4],EAX
101fa47a: 89442408  MOV dword ptr [ESP + 0x8],EAX
101fa47e: 8944240c  MOV dword ptr [ESP + 0xc],EAX
101fa482: 8d0424  LEA EAX,[ESP]
101fa485: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
101fa489: 8b10  MOV EDX,dword ptr [EAX]
101fa48b: 8911  MOV dword ptr [ECX],EDX
101fa48d: 8b5004  MOV EDX,dword ptr [EAX + 0x4]
101fa490: 895104  MOV dword ptr [ECX + 0x4],EDX
101fa493: 8b5008  MOV EDX,dword ptr [EAX + 0x8]
101fa496: 8b400c  MOV EAX,dword ptr [EAX + 0xc]
101fa499: 89410c  MOV dword ptr [ECX + 0xc],EAX
101fa49c: 895108  MOV dword ptr [ECX + 0x8],EDX
101fa49f: 8bc1  MOV EAX,ECX
101fa4a1: 83c410  ADD ESP,0x10
101fa4a4: c20400  RET 0x4
