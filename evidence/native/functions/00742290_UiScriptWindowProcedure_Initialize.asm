# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00742290_UiScriptWindowProcedure_Initialize.c
Owned ranges: [[00742290, 007422f9]]

00742290  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00742298  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0074229c  8bc1  MOV EAX,ECX
0074229e  c74004fcb1fb00  MOV dword ptr [EAX + 0x4],0xfbb1fc
007422a5  33c9  XOR ECX,ECX
007422a7  894808  MOV dword ptr [EAX + 0x8],ECX
007422aa  88480c  MOV byte ptr [EAX + 0xc],CL
007422ad  c700c8210001  MOV dword ptr [EAX],0x10021c8
007422b3  c74004ac210001  MOV dword ptr [EAX + 0x4],0x10021ac
007422ba  f30f114020  MOVSS dword ptr [EAX + 0x20],XMM0
007422bf  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
007422c7  f30f114024  MOVSS dword ptr [EAX + 0x24],XMM0
007422cc  c7402c78220001  MOV dword ptr [EAX + 0x2c],0x1002278
007422d3  89481c  MOV dword ptr [EAX + 0x1c],ECX
007422d6  894828  MOV dword ptr [EAX + 0x28],ECX
007422d9  c7401801000000  MOV dword ptr [EAX + 0x18],0x1
007422e0  c7401400d91401  MOV dword ptr [EAX + 0x14],0x114d900
007422e7  894830  MOV dword ptr [EAX + 0x30],ECX
007422ea  894834  MOV dword ptr [EAX + 0x34],ECX
007422ed  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007422f1  894838  MOV dword ptr [EAX + 0x38],ECX
007422f4  89503c  MOV dword ptr [EAX + 0x3c],EDX
007422f7  c20800  RET 0x8
