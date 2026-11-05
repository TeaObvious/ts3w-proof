# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint Catalog_AllowsSlopedPlacement(int param_1)
Owned ranges: [[00afc8d0, 00afc901]]

00afc8d0  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00afc8d4  85c9  TEST ECX,ECX
00afc8d6  7427  JZ 0x00afc8ff
00afc8d8  8b8198000000  MOV EAX,dword ptr [ECX + 0x98]
00afc8de  8bd0  MOV EDX,EAX
00afc8e0  c1ea13  SHR EDX,0x13
00afc8e3  f6c201  TEST DL,0x1
00afc8e6  7403  JZ 0x00afc8eb
00afc8e8  b001  MOV AL,0x1
00afc8ea  c3  RET
00afc8eb  c1e811  SHR EAX,0x11
00afc8ee  a801  TEST AL,0x1
00afc8f0  75f6  JNZ 0x00afc8e8
00afc8f2  8b81d0000000  MOV EAX,dword ptr [ECX + 0xd0]
00afc8f8  c1e80b  SHR EAX,0xb
00afc8fb  a801  TEST AL,0x1
00afc8fd  75e9  JNZ 0x00afc8e8
00afc8ff  32c0  XOR AL,AL
00afc901  c3  RET
