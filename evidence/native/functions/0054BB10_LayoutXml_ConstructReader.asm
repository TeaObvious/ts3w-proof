# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name LayoutXml_ConstructReader
Owned ranges: [[0054bb10, 0054bbf2]]
Signature: void * __thiscall LayoutXml_ConstructReader(uint contextWord, void * stream, void * document, void * notifications, void * errorCallback, void * errorContext)
Physical ABI: ECX reader; six stack words: opaque contextWord,stream,document,notificationVector,errorCallback,errorContext; EAX receiver; RET18.

0054bb10  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0054bb14  53  PUSH EBX
0054bb15  55  PUSH EBP
0054bb16  56  PUSH ESI
0054bb17  57  PUSH EDI
0054bb18  33ed  XOR EBP,EBP
0054bb1a  55  PUSH EBP
0054bb1b  55  PUSH EBP
0054bb1c  8bf1  MOV ESI,ECX
0054bb1e  55  PUSH EBP
0054bb1f  6aff  PUSH -0x1
0054bb21  8d7e08  LEA EDI,[ESI + 0x8]
0054bb24  55  PUSH EBP
0054bb25  8bcf  MOV ECX,EDI
0054bb27  c7069020fc00  MOV dword ptr [ESI],0xfc2090
0054bb2d  894604  MOV dword ptr [ESI + 0x4],EAX
0054bb30  e87bd1f9ff  CALL 0x004e8cb0
0054bb35  55  PUSH EBP
0054bb36  55  PUSH EBP
0054bb37  55  PUSH EBP
0054bb38  6aff  PUSH -0x1
0054bb3a  8d5e2c  LEA EBX,[ESI + 0x2c]
0054bb3d  55  PUSH EBP
0054bb3e  8bcb  MOV ECX,EBX
0054bb40  e86bd1f9ff  CALL 0x004e8cb0
0054bb45  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
0054bb49  8b542428  MOV EDX,dword ptr [ESP + 0x28]
0054bb4d  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
0054bb55  894e50  MOV dword ptr [ESI + 0x50],ECX ; Store fifth and sixth stack inputs as error callback/context at reader+50/+54.
0054bb58  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
0054bb5c  895654  MOV dword ptr [ESI + 0x54],EDX
0054bb5f  8b542418  MOV EDX,dword ptr [ESP + 0x18]
0054bb63  c746584c0554ef  MOV dword ptr [ESI + 0x58],0xef54054c ; Initialize generated object-ID counter to rawEF54054C; class IDs, authored object IDs and live pointers are different domains.
0054bb6a  896e5c  MOV dword ptr [ESI + 0x5c],EBP
0054bb6d  8d4660  LEA EAX,[ESI + 0x60]
0054bb70  894004  MOV dword ptr [EAX + 0x4],EAX
0054bb73  8900  MOV dword ptr [EAX],EAX
0054bb75  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
0054bb79  f30f114678  MOVSS dword ptr [ESI + 0x78],XMM0
0054bb7e  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
0054bb86  f30f11467c  MOVSS dword ptr [ESI + 0x7c],XMM0
0054bb8b  c786840000009820fc00  MOV dword ptr [ESI + 0x84],0xfc2098
0054bb95  c7467001000000  MOV dword ptr [ESI + 0x70],0x1
0054bb9c  c7466c00d91401  MOV dword ptr [ESI + 0x6c],0x114d900
0054bba3  896e74  MOV dword ptr [ESI + 0x74],EBP
0054bba6  89ae80000000  MOV dword ptr [ESI + 0x80],EBP
0054bbac  55  PUSH EBP
0054bbad  55  PUSH EBP
0054bbae  898e8c000000  MOV dword ptr [ESI + 0x8c],ECX
0054bbb4  52  PUSH EDX
0054bbb5  8d8e98000000  LEA ECX,[ESI + 0x98]
0054bbbb  898688000000  MOV dword ptr [ESI + 0x88],EAX
0054bbc1  89ae90000000  MOV dword ptr [ESI + 0x90],EBP
0054bbc7  89ae94000000  MOV dword ptr [ESI + 0x94],EBP
0054bbcd  e8de5cf2ff  CALL 0x004718b0 ; Construct embedded cursor+98 with incoming stream, null source label and null allocator; follows non-namespace parser creation.
0054bbd2  55  PUSH EBP
0054bbd3  55  PUSH EBP
0054bbd4  55  PUSH EBP
0054bbd5  55  PUSH EBP
0054bbd6  55  PUSH EBP
0054bbd7  8bcb  MOV ECX,EBX
0054bbd9  e802cff9ff  CALL 0x004e8ae0
0054bbde  55  PUSH EBP
0054bbdf  55  PUSH EBP
0054bbe0  55  PUSH EBP
0054bbe1  55  PUSH EBP
0054bbe2  55  PUSH EBP
0054bbe3  8bcf  MOV ECX,EDI
0054bbe5  e8f6cef9ff  CALL 0x004e8ae0
0054bbea  5f  POP EDI
0054bbeb  8bc6  MOV EAX,ESI
0054bbed  5e  POP ESI
0054bbee  5d  POP EBP
0054bbef  5b  POP EBX
0054bbf0  c21800  RET 0x18 ; Physical six-word callee cleanup confirms RET18; EAX is the constructed receiver.
