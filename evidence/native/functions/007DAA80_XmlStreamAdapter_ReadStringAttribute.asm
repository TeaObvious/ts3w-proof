# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function XmlStreamAdapter_ReadStringAttribute Entry 007daa80
OWNED_RANGE 007daa80:007daabe
007daa80: 56  PUSH ESI
007daa81: 8bf1  MOV ESI,ECX
007daa83: 837e4801  CMP dword ptr [ESI + 0x48],0x1
007daa87: 7530  JNZ 0x007daab9
007daa89: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
007daa8d: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007daa90: 50  PUSH EAX
007daa91: e8ca64c9ff  CALL 0x00470f60
007daa96: 837e4801  CMP dword ptr [ESI + 0x48],0x1
007daa9a: 7509  JNZ 0x007daaa5
007daa9c: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007daa9f: 83790800  CMP dword ptr [ECX + 0x8],0x0
007daaa3: 7514  JNZ 0x007daab9
007daaa5: 85c0  TEST EAX,EAX
007daaa7: 7410  JZ 0x007daab9
007daaa9: 8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007daaad: 50  PUSH EAX
007daaae: e89de4c2ff  CALL 0x00408f50
007daab3: b001  MOV AL,0x1
007daab5: 5e  POP ESI
007daab6: c20800  RET 0x8
007daab9: 32c0  XOR AL,AL
007daabb: 5e  POP ESI
007daabc: c20800  RET 0x8
Total instructions: 24; owned bytes: 63
