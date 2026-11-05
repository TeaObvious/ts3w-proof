# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void UInt16WorldGrid_FillAll(void * this, ushort * value)
Owned ranges: [[00a810c0, 00a810dd]]

00a810c0  8b5114  MOV EDX,dword ptr [ECX + 0x14]
00a810c3  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00a810c6  3bc2  CMP EAX,EDX
00a810c8  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00a810cc  0fb709  MOVZX ECX,word ptr [ECX]
00a810cf  740a  JZ 0x00a810db
00a810d1  668908  MOV word ptr [EAX],CX
00a810d4  83c002  ADD EAX,0x2
00a810d7  3bc2  CMP EAX,EDX
00a810d9  75f6  JNZ 0x00a810d1
00a810db  c20400  RET 0x4
