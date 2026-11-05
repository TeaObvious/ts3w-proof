# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 00512B80_UiTransform_PrependTranslation.c
Owned ranges: [[00512b80, 00512bd5]]

00512b80  55  PUSH EBP
00512b81  8bec  MOV EBP,ESP
00512b83  83e4f0  AND ESP,0xfffffff0
00512b86  83794000  CMP dword ptr [ECX + 0x40],0x0
00512b8a  7507  JNZ 0x00512b93
00512b8c  c7414001000000  MOV dword ptr [ECX + 0x40],0x1
00512b93  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00512b96  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
00512b99  0f285120  MOVAPS XMM2,xmmword ptr [ECX + 0x20]
00512b9d  0f285910  MOVAPS XMM3,xmmword ptr [ECX + 0x10]
00512ba1  0f28c8  MOVAPS XMM1,XMM0
00512ba4  0fc6c8aa  SHUFPS XMM1,XMM0,0xaa
00512ba8  0f59ca  MULPS XMM1,XMM2
00512bab  0f28d0  MOVAPS XMM2,XMM0
00512bae  0fc6d055  SHUFPS XMM2,XMM0,0x55
00512bb2  0fc6c000  SHUFPS XMM0,XMM0,0x0
00512bb6  0f59d3  MULPS XMM2,XMM3
00512bb9  0f2819  MOVAPS XMM3,xmmword ptr [ECX]
00512bbc  0f59c3  MULPS XMM0,XMM3
00512bbf  0f58c2  ADDPS XMM0,XMM2
00512bc2  0f58c1  ADDPS XMM0,XMM1
00512bc5  0f284930  MOVAPS XMM1,xmmword ptr [ECX + 0x30]
00512bc9  0f58c1  ADDPS XMM0,XMM1
00512bcc  0f294130  MOVAPS xmmword ptr [ECX + 0x30],XMM0
00512bd0  8be5  MOV ESP,EBP
00512bd2  5d  POP EBP
00512bd3  c20400  RET 0x4
