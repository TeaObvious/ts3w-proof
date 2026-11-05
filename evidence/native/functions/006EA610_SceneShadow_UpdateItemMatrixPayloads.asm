# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneShadow_UpdateItemMatrixPayloads
Paired annotated actual pseudocode: 006EA610_SceneShadow_UpdateItemMatrixPayloads.c
Owned ranges: [[006ea610, 006ea7db]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006ea610  55  PUSH EBP
006ea611  8bec  MOV EBP,ESP
006ea613  83e4f0  AND ESP,0xfffffff0
006ea616  83ec54  SUB ESP,0x54
006ea619  53  PUSH EBX
006ea61a  8b1d30851d01  MOV EBX,dword ptr [0x011d8530]
006ea620  56  PUSH ESI
006ea621  8b7508  MOV ESI,dword ptr [EBP + 0x8]
006ea624  85f6  TEST ESI,ESI
006ea626  57  PUSH EDI
006ea627  8bf9  MOV EDI,ECX
006ea629  0f84df000000  JZ 0x006ea70e
006ea62f  8bce  MOV ECX,ESI
006ea631  e83a030100  CALL 0x006fa970
006ea636  84c0  TEST AL,AL
006ea638  0f84d0000000  JZ 0x006ea70e
006ea63e  8b06  MOV EAX,dword ptr [ESI]
006ea640  8b5010  MOV EDX,dword ptr [EAX + 0x10]
006ea643  8bce  MOV ECX,ESI
006ea645  ffd2  CALL EDX
006ea647  84c0  TEST AL,AL
006ea649  745d  JZ 0x006ea6a8
006ea64b  b801000000  MOV EAX,0x1
006ea650  8405d02a1d01  TEST byte ptr [0x011d2ad0],AL
006ea656  7506  JNZ 0x006ea65e
006ea658  0905d02a1d01  OR dword ptr [0x011d2ad0],EAX
006ea65e  8d442420  LEA EAX,[ESP + 0x20]
006ea662  50  PUSH EAX
006ea663  8bce  MOV ECX,ESI
006ea665  e806080100  CALL 0x006fae70
006ea66a  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006ea66d  0f2905902a1d01  MOVAPS xmmword ptr [0x011d2a90],XMM0
006ea674  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006ea678  0f2905a02a1d01  MOVAPS xmmword ptr [0x011d2aa0],XMM0
006ea67f  0f284020  MOVAPS XMM0,xmmword ptr [EAX + 0x20]
006ea683  0f2905b02a1d01  MOVAPS xmmword ptr [0x011d2ab0],XMM0
006ea68a  0f284030  MOVAPS XMM0,xmmword ptr [EAX + 0x30]
006ea68e  0f2905c02a1d01  MOVAPS xmmword ptr [0x011d2ac0],XMM0
006ea695  8b8fdc010000  MOV ECX,dword ptr [EDI + 0x1dc]
006ea69b  68902a1d01  PUSH 0x11d2a90
006ea6a0  51  PUSH ECX
006ea6a1  8bcb  MOV ECX,EBX
006ea6a3  e898f90a00  CALL 0x0079a040
006ea6a8  b802000000  MOV EAX,0x2
006ea6ad  8405d02a1d01  TEST byte ptr [0x011d2ad0],AL
006ea6b3  7506  JNZ 0x006ea6bb
006ea6b5  0905d02a1d01  OR dword ptr [0x011d2ad0],EAX
006ea6bb  8d542420  LEA EDX,[ESP + 0x20]
006ea6bf  52  PUSH EDX
006ea6c0  8bce  MOV ECX,ESI
006ea6c2  e879080100  CALL 0x006faf40
006ea6c7  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006ea6ca  0f2905502a1d01  MOVAPS xmmword ptr [0x011d2a50],XMM0
006ea6d1  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006ea6d5  0f2905602a1d01  MOVAPS xmmword ptr [0x011d2a60],XMM0
006ea6dc  0f284020  MOVAPS XMM0,xmmword ptr [EAX + 0x20]
006ea6e0  0f2905702a1d01  MOVAPS xmmword ptr [0x011d2a70],XMM0
006ea6e7  0f284030  MOVAPS XMM0,xmmword ptr [EAX + 0x30]
006ea6eb  0f2905802a1d01  MOVAPS xmmword ptr [0x011d2a80],XMM0
006ea6f2  8b87e0010000  MOV EAX,dword ptr [EDI + 0x1e0]
006ea6f8  68502a1d01  PUSH 0x11d2a50
006ea6fd  50  PUSH EAX
006ea6fe  8bcb  MOV ECX,EBX
006ea700  e83bf90a00  CALL 0x0079a040
006ea705  5f  POP EDI
006ea706  5e  POP ESI
006ea707  5b  POP EBX
006ea708  8be5  MOV ESP,EBP
006ea70a  5d  POP EBP
006ea70b  c20400  RET 0x4
006ea70e  b804000000  MOV EAX,0x4
006ea713  8405d02a1d01  TEST byte ptr [0x011d2ad0],AL
006ea719  0f85a1000000  JNZ 0x006ea7c0
006ea71f  0f57c0  XORPS XMM0,XMM0
006ea722  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
006ea72a  0905d02a1d01  OR dword ptr [0x011d2ad0],EAX
006ea730  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006ea736  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006ea73c  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006ea742  f30f114c2410  MOVSS dword ptr [ESP + 0x10],XMM1
006ea748  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006ea74d  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006ea753  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006ea759  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
006ea75f  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006ea765  0f2915102a1d01  MOVAPS xmmword ptr [0x011d2a10],XMM2
006ea76c  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006ea771  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006ea777  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
006ea77d  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006ea783  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006ea789  0f2915202a1d01  MOVAPS xmmword ptr [0x011d2a20],XMM2
006ea790  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006ea795  f30f114c241c  MOVSS dword ptr [ESP + 0x1c],XMM1
006ea79b  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006ea7a1  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006ea7a7  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006ea7ad  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
006ea7b2  0f2915302a1d01  MOVAPS xmmword ptr [0x011d2a30],XMM2
006ea7b9  0f2905402a1d01  MOVAPS xmmword ptr [0x011d2a40],XMM0
006ea7c0  8b8fe0010000  MOV ECX,dword ptr [EDI + 0x1e0]
006ea7c6  68102a1d01  PUSH 0x11d2a10
006ea7cb  51  PUSH ECX
006ea7cc  8bcb  MOV ECX,EBX
006ea7ce  e86df80a00  CALL 0x0079a040
006ea7d3  5f  POP EDI
006ea7d4  5e  POP ESI
006ea7d5  5b  POP EBX
006ea7d6  8be5  MOV ESP,EBP
006ea7d8  5d  POP EBP
006ea7d9  c20400  RET 0x4
Owned instructions=111 owned bytes=460 envelope bytes=460
