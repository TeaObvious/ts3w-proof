# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined WallLocator_QueryOtherAdjacentTile(undefined2 * param_1, undefined2 * param_2)
Owned ranges: [[00c45fb0, 00c45fe9]]

00c45fb0  83ec08  SUB ESP,0x8
00c45fb3  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c45fb7  0fb74803  MOVZX ECX,word ptr [EAX + 0x3]
00c45fbb  0fb65005  MOVZX EDX,byte ptr [EAX + 0x5]
00c45fbf  66890c24  MOV word ptr [ESP],CX
00c45fc3  0fb708  MOVZX ECX,word ptr [EAX]
00c45fc6  88542402  MOV byte ptr [ESP + 0x2],DL
00c45fca  0fb65002  MOVZX EDX,byte ptr [EAX + 0x2]
00c45fce  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c45fd2  66894c2403  MOV word ptr [ESP + 0x3],CX
00c45fd7  50  PUSH EAX
00c45fd8  8d4c2404  LEA ECX,[ESP + 0x4]
00c45fdc  51  PUSH ECX
00c45fdd  8854240d  MOV byte ptr [ESP + 0xd],DL
00c45fe1  e83affffff  CALL 0x00c45f20
00c45fe6  83c410  ADD ESP,0x10
00c45fe9  c3  RET
