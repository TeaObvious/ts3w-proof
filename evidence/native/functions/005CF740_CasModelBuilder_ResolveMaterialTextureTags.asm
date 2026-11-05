# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: CasModelBuilder_ResolveMaterialTextureTags
Paired annotated actual pseudocode: 005CF740_CasModelBuilder_ResolveMaterialTextureTags.c
Owned ranges: [[005cf740, 005cf7bf]]

GHIDRA LISTING (original bytes)
005cf740  83ec10  SUB ESP,0x10
005cf743  53  PUSH EBX
005cf744  55  PUSH EBP
005cf745  56  PUSH ESI
005cf746  57  PUSH EDI
005cf747  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
005cf74b  8bd9  MOV EBX,ECX
005cf74d  8bcf  MOV ECX,EDI
005cf74f  e8ec9a1c00  CALL 0x00799240
005cf754  33ed  XOR EBP,EBP
005cf756  83ceff  OR ESI,0xffffffff
005cf759  3bc5  CMP EAX,EBP
005cf75b  7e59  JLE 0x005cf7b6
005cf75d  89442424  MOV dword ptr [ESP + 0x24],EAX
005cf761  55  PUSH EBP
005cf762  56  PUSH ESI
005cf763  8bcf  MOV ECX,EDI
005cf765  e8069b1c00  CALL 0x00799270
005cf76a  8bf0  MOV ESI,EAX
005cf76c  8d442410  LEA EAX,[ESP + 0x10]
005cf770  50  PUSH EAX
005cf771  56  PUSH ESI
005cf772  8bcf  MOV ECX,EDI
005cf774  896c2418  MOV dword ptr [ESP + 0x18],EBP
005cf778  896c241c  MOV dword ptr [ESP + 0x1c],EBP
005cf77c  896c2420  MOV dword ptr [ESP + 0x20],EBP
005cf780  896c2424  MOV dword ptr [ESP + 0x24],EBP
005cf784  e8679b1c00  CALL 0x007992f0
005cf789  837c2418ff  CMP dword ptr [ESP + 0x18],-0x1
005cf78e  751f  JNZ 0x005cf7af
005cf790  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005cf794  83f8ff  CMP EAX,-0x1
005cf797  7504  JNZ 0x005cf79d
005cf799  6a04  PUSH 0x4
005cf79b  eb07  JMP 0x005cf7a4
005cf79d  83f8fe  CMP EAX,-0x2
005cf7a0  750d  JNZ 0x005cf7af
005cf7a2  6a08  PUSH 0x8
005cf7a4  6a1f  PUSH 0x1f
005cf7a6  56  PUSH ESI
005cf7a7  57  PUSH EDI
005cf7a8  8bcb  MOV ECX,EBX
005cf7aa  e8e1feffff  CALL 0x005cf690
005cf7af  836c242401  SUB dword ptr [ESP + 0x24],0x1
005cf7b4  75ab  JNZ 0x005cf761
005cf7b6  5f  POP EDI
005cf7b7  5e  POP ESI
005cf7b8  5d  POP EBP
005cf7b9  5b  POP EBX
005cf7ba  83c410  ADD ESP,0x10
005cf7bd  c20400  RET 0x4
Owned instructions=51 owned bytes=128 envelope bytes=128
