# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00779830_ScriptCore_UIManager_UIManager_GetFocusImpl.c
Owned ranges: [[00779830, 00779870]]

00779830  56  PUSH ESI
00779831  57  PUSH EDI
00779832  e859fbfeff  CALL 0x00769390
00779837  8bf8  MOV EDI,EAX
00779839  e85217d9ff  CALL 0x0050af90
0077983e  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00779842  8b10  MOV EDX,dword ptr [EAX]
00779844  8b5254  MOV EDX,dword ptr [EDX + 0x54]
00779847  51  PUSH ECX
00779848  8bc8  MOV ECX,EAX
0077984a  ffd2  CALL EDX
0077984c  8bf0  MOV ESI,EAX
0077984e  85f6  TEST ESI,ESI
00779850  741a  JZ 0x0077986c
00779852  8b06  MOV EAX,dword ptr [ESI]
00779854  8b10  MOV EDX,dword ptr [EAX]
00779856  8bce  MOV ECX,ESI
00779858  ffd2  CALL EDX
0077985a  8b07  MOV EAX,dword ptr [EDI]
0077985c  8b90c8000000  MOV EDX,dword ptr [EAX + 0xc8]
00779862  6a30  PUSH 0x30
00779864  56  PUSH ESI
00779865  8bcf  MOV ECX,EDI
00779867  ffd2  CALL EDX
00779869  5f  POP EDI
0077986a  5e  POP ESI
0077986b  c3  RET
0077986c  5f  POP EDI
0077986d  33c0  XOR EAX,EAX
0077986f  5e  POP ESI
00779870  c3  RET
