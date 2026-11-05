# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void UInt16WorldGrid_FillLevelRange(void * this, int firstLevel, int lastLevelInclusive, ushort * value)
Owned ranges: [[00a810e0, 00a8111d]]

00a810e0  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00a810e3  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00a810e7  56  PUSH ESI
00a810e8  8b7108  MOV ESI,dword ptr [ECX + 0x8]
00a810eb  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00a810ee  83c201  ADD EDX,0x1
00a810f1  0fafd0  IMUL EDX,EAX
00a810f4  0fafc6  IMUL EAX,ESI
00a810f7  0faf442408  IMUL EAX,dword ptr [ESP + 0x8]
00a810fc  0fafd6  IMUL EDX,ESI
00a810ff  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00a81103  0fb736  MOVZX ESI,word ptr [ESI]
00a81106  8d0441  LEA EAX,[ECX + EAX*0x2]
00a81109  8d0c51  LEA ECX,[ECX + EDX*0x2]
00a8110c  3bc1  CMP EAX,ECX
00a8110e  740a  JZ 0x00a8111a
00a81110  668930  MOV word ptr [EAX],SI
00a81113  83c002  ADD EAX,0x2
00a81116  3bc1  CMP EAX,ECX
00a81118  75f6  JNZ 0x00a81110
00a8111a  5e  POP ESI
00a8111b  c20c00  RET 0xc
