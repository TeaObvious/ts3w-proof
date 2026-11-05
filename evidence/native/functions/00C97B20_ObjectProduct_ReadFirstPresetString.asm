# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 ObjectProduct_ReadFirstPresetString(void * this, undefined4 * param_1)
Owned ranges: [[00c97b20, 00c97b43]]

00c97b20  8b8104010000  MOV EAX,dword ptr [ECX + 0x104]
00c97b26  3b8108010000  CMP EAX,dword ptr [ECX + 0x108]
00c97b2c  7505  JNZ 0x00c97b33
00c97b2e  32c0  XOR AL,AL
00c97b30  c20400  RET 0x4
00c97b33  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00c97b37  8b08  MOV ECX,dword ptr [EAX]
00c97b39  52  PUSH EDX
00c97b3a  e8e18192ff  CALL 0x005bfd20
00c97b3f  b001  MOV AL,0x1
00c97b41  c20400  RET 0x4
