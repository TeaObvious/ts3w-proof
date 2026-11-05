# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00779670_ScriptCore_UIManager_UIManager_RegisterCustomControlFactoryImpl.c
Owned ranges: [[00779670, 00779690]]

00779670  807c240800  CMP byte ptr [ESP + 0x8],0x0
00779675  740e  JZ 0x00779685
00779677  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077967b  50  PUSH EAX
0077967c  e84f970600  CALL 0x007e2dd0
00779681  83c404  ADD ESP,0x4
00779684  c3  RET
00779685  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00779689  51  PUSH ECX
0077968a  e8b1950600  CALL 0x007e2c40
0077968f  59  POP ECX
00779690  c3  RET
