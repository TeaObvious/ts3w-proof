# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete owned Ghidra Listing.
Signature: byte __thiscall VisualState_WriteSavedComponentState(void * this, void * writer, undefined4 unusedContextWord)
Owned ranges: [[0095dbe0, 0095dc44]]

0095dbe0  56  PUSH ESI
0095dbe1  8b742408  MOV ESI,dword ptr [ESP + 0x8]
0095dbe5  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0095dbe8  57  PUSH EDI
0095dbe9  8bf9  MOV EDI,ECX
0095dbeb  0fb74708  MOVZX EAX,word ptr [EDI + 0x8]
0095dbef  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0095dbf2  51  PUSH ECX
0095dbf3  50  PUSH EAX
0095dbf4  52  PUSH EDX
0095dbf5  e87602b8ff  CALL 0x004dde70
0095dbfa  83c40c  ADD ESP,0xc
0095dbfd  8bce  MOV ECX,ESI
0095dbff  50  PUSH EAX
0095dc00  e8eb9de7ff  CALL 0x007d79f0
0095dc05  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0095dc08  8b4714  MOV EAX,dword ptr [EDI + 0x14]
0095dc0b  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0095dc0e  51  PUSH ECX
0095dc0f  50  PUSH EAX
0095dc10  52  PUSH EDX
0095dc11  e85a03b8ff  CALL 0x004ddf70
0095dc16  83c40c  ADD ESP,0xc
0095dc19  8bce  MOV ECX,ESI
0095dc1b  50  PUSH EAX
0095dc1c  e8cf9de7ff  CALL 0x007d79f0
0095dc21  8b4610  MOV EAX,dword ptr [ESI + 0x10]
0095dc24  8b7f0c  MOV EDI,dword ptr [EDI + 0xc]
0095dc27  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0095dc2a  50  PUSH EAX
0095dc2b  57  PUSH EDI
0095dc2c  51  PUSH ECX
0095dc2d  e83e03b8ff  CALL 0x004ddf70
0095dc32  83c40c  ADD ESP,0xc
0095dc35  8bce  MOV ECX,ESI
0095dc37  50  PUSH EAX
0095dc38  e8b39de7ff  CALL 0x007d79f0
0095dc3d  8a4614  MOV AL,byte ptr [ESI + 0x14]
0095dc40  5f  POP EDI
0095dc41  5e  POP ESI
0095dc42  c20800  RET 0x8
