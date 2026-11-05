# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ScriptCore.UserToolUtils::UserToolUtils_GetObjectProductListFilteredImpl
Paired actual annotated Ghidra pseudocode: 00CEAC20_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductListFilteredImpl.c
Owned ranges: [[00ceac20, 00cead17]]
Envelope bytes=248

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00ceac20  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00ceac26  83ec60  SUB ESP,0x60
00ceac29  56  PUSH ESI
00ceac2a  33f6  XOR ESI,ESI
00ceac2c  3bce  CMP ECX,ESI
00ceac2e  0f84dd000000  JZ 0x00cead11
00ceac34  8b442468  MOV EAX,dword ptr [ESP + 0x68]
00ceac38  8b542470  MOV EDX,dword ptr [ESP + 0x70]
00ceac3c  89442418  MOV dword ptr [ESP + 0x18],EAX
00ceac40  8b442474  MOV EAX,dword ptr [ESP + 0x74]
00ceac44  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00ceac48  8b542478  MOV EDX,dword ptr [ESP + 0x78]
00ceac4c  89442420  MOV dword ptr [ESP + 0x20],EAX
00ceac50  8b44247c  MOV EAX,dword ptr [ESP + 0x7c]
00ceac54  89542424  MOV dword ptr [ESP + 0x24],EDX
00ceac58  8b942480000000  MOV EDX,dword ptr [ESP + 0x80]
00ceac5f  89442428  MOV dword ptr [ESP + 0x28],EAX
00ceac63  8b842484000000  MOV EAX,dword ptr [ESP + 0x84]
00ceac6a  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00ceac6e  8b942488000000  MOV EDX,dword ptr [ESP + 0x88]
00ceac75  89442430  MOV dword ptr [ESP + 0x30],EAX
00ceac79  8b84248c000000  MOV EAX,dword ptr [ESP + 0x8c]
00ceac80  89542454  MOV dword ptr [ESP + 0x54],EDX
00ceac84  8b942490000000  MOV EDX,dword ptr [ESP + 0x90]
00ceac8b  89442458  MOV dword ptr [ESP + 0x58],EAX
00ceac8f  8b842494000000  MOV EAX,dword ptr [ESP + 0x94]
00ceac96  89542414  MOV dword ptr [ESP + 0x14],EDX
00ceac9a  8b54246c  MOV EDX,dword ptr [ESP + 0x6c]
00ceac9e  57  PUSH EDI
00ceac9f  8944243c  MOV dword ptr [ESP + 0x3c],EAX
00ceaca3  8d442408  LEA EAX,[ESP + 0x8]
00ceaca7  89542438  MOV dword ptr [ESP + 0x38],EDX
00ceacab  50  PUSH EAX
00ceacac  8d54241c  LEA EDX,[ESP + 0x1c]
00ceacb0  52  PUSH EDX
00ceacb1  89742410  MOV dword ptr [ESP + 0x10],ESI
00ceacb5  89742414  MOV dword ptr [ESP + 0x14],ESI
00ceacb9  89742418  MOV dword ptr [ESP + 0x18],ESI
00ceacbd  c744241c2c170801  MOV dword ptr [ESP + 0x1c],0x108172c
00ceacc5  89742448  MOV dword ptr [ESP + 0x48],ESI
00ceacc9  89742450  MOV dword ptr [ESP + 0x50],ESI
00ceaccd  89742454  MOV dword ptr [ESP + 0x54],ESI
00ceacd1  89742458  MOV dword ptr [ESP + 0x58],ESI
00ceacd5  8974245c  MOV dword ptr [ESP + 0x5c],ESI
00ceacd9  89742468  MOV dword ptr [ESP + 0x68],ESI
00ceacdd  e87e53faff  CALL 0x00c90060
00ceace2  8d442418  LEA EAX,[ESP + 0x18]
00ceace6  50  PUSH EAX
00ceace7  8d4c240c  LEA ECX,[ESP + 0xc]
00ceaceb  6a04  PUSH 0x4
00ceaced  51  PUSH ECX
00ceacee  e82dfbffff  CALL 0x00cea820
00ceacf3  8bf8  MOV EDI,EAX
00ceacf5  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ceacf9  83c40c  ADD ESP,0xc
00ceacfc  3bc6  CMP EAX,ESI
00ceacfe  7409  JZ 0x00cead09
00cead00  50  PUSH EAX
00cead01  e8da977fff  CALL 0x004e44e0
00cead06  83c404  ADD ESP,0x4
00cead09  8bc7  MOV EAX,EDI
00cead0b  5f  POP EDI
00cead0c  5e  POP ESI
00cead0d  83c460  ADD ESP,0x60
00cead10  c3  RET
00cead11  33c0  XOR EAX,EAX
00cead13  5e  POP ESI
00cead14  83c460  ADD ESP,0x60
00cead17  c3  RET
Owned instructions=69 owned bytes=248 nonowned bytes=0
