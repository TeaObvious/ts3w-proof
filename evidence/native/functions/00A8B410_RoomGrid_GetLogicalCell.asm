# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00a8b410, 00a8b467]]
signature=int __thiscall RoomGrid_GetLogicalCell(void * this, uint param_1, uint param_2, int param_3)
PLATE
PC1.67 Room query/storage gate: complete88byte/32instruction body A8B410..A8B467. ECX grid with X,Z,layer stackDWORDs/RET0C; returns EAX pointer to one logical8byte cell. Compressed block reference highbit8000 selects shared/default cell storage; otherwise block and low-two-bit X/Z select the stored cell. C03FC0 performs signed bounds before calling. This memory representation does not alter layer->X->Z serialized order or the four retained UInt16 room-ID fields. No body/type/byte changes.

00a8b410  8b4120  MOV EAX,dword ptr [ECX + 0x20]
00a8b413  0faf44240c  IMUL EAX,dword ptr [ESP + 0xc]
00a8b418  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00a8b41c  56  PUSH ESI
00a8b41d  8bf2  MOV ESI,EDX
00a8b41f  c1fe02  SAR ESI,0x2
00a8b422  03c6  ADD EAX,ESI
00a8b424  0faf4124  IMUL EAX,dword ptr [ECX + 0x24]
00a8b428  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00a8b42c  57  PUSH EDI
00a8b42d  8bfe  MOV EDI,ESI
00a8b42f  c1ff02  SAR EDI,0x2
00a8b432  03c7  ADD EAX,EDI
00a8b434  8b7948  MOV EDI,dword ptr [ECX + 0x48]
00a8b437  0fb73c47  MOVZX EDI,word ptr [EDI + EAX*0x2]
00a8b43b  f7c700800000  TEST EDI,0x8000
00a8b441  740b  JZ 0x00a8b44e
00a8b443  8b4938  MOV ECX,dword ptr [ECX + 0x38]
00a8b446  5f  POP EDI
00a8b447  8d04c1  LEA EAX,[ECX + EAX*0x8]
00a8b44a  5e  POP ESI
00a8b44b  c20c00  RET 0xc
00a8b44e  8b4928  MOV ECX,dword ptr [ECX + 0x28]
00a8b451  0fb7c7  MOVZX EAX,DI
00a8b454  83e203  AND EDX,0x3
00a8b457  8d1482  LEA EDX,[EDX + EAX*0x4]
00a8b45a  83e603  AND ESI,0x3
00a8b45d  8d0496  LEA EAX,[ESI + EDX*0x4]
00a8b460  5f  POP EDI
00a8b461  8d04c1  LEA EAX,[ECX + EAX*0x8]
00a8b464  5e  POP ESI
00a8b465  c20c00  RET 0xc
