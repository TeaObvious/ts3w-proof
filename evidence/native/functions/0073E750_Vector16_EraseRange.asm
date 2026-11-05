# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Vector16_EraseRange(void * this, undefined4 * param_1, undefined4 * param_2)
Owned ranges: [[0073e750, 0073e76c] [0073e770, 0073e795]]

0073e750  55  PUSH EBP
0073e751  8bec  MOV EBP,ESP
0073e753  83e4f0  AND ESP,0xfffffff0
0073e756  51  PUSH ECX
0073e757  8b4508  MOV EAX,dword ptr [EBP + 0x8]
0073e75a  53  PUSH EBX
0073e75b  8b5904  MOV EBX,dword ptr [ECX + 0x4]
0073e75e  56  PUSH ESI
0073e75f  8b750c  MOV ESI,dword ptr [EBP + 0xc]
0073e762  3bf3  CMP ESI,EBX
0073e764  57  PUSH EDI
0073e765  8bf8  MOV EDI,EAX
0073e767  8bd6  MOV EDX,ESI
0073e769  7415  JZ 0x0073e780
0073e76b  eb03  JMP 0x0073e770
0073e76d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
0073e770  0f2802  MOVAPS XMM0,xmmword ptr [EDX]
0073e773  0f2907  MOVAPS xmmword ptr [EDI],XMM0
0073e776  83c210  ADD EDX,0x10
0073e779  83c710  ADD EDI,0x10
0073e77c  3bd3  CMP EDX,EBX
0073e77e  75f0  JNZ 0x0073e770
0073e780  2bf0  SUB ESI,EAX
0073e782  c1fe04  SAR ESI,0x4
0073e785  f7de  NEG ESI
0073e787  c1e604  SHL ESI,0x4
0073e78a  017104  ADD dword ptr [ECX + 0x4],ESI
0073e78d  5f  POP EDI
0073e78e  5e  POP ESI
0073e78f  5b  POP EBX
0073e790  8be5  MOV ESP,EBP
0073e792  5d  POP EBP
0073e793  c20800  RET 0x8
