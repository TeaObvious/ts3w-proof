# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: RoomLighting_ReducePhysicalFloorColorLanes
; Owned ranges: [[006a0130, 006a02a9]]
; Actual entry PLATE: PC1.67 ECX room owner, plain RET; saved fastcall analysis is preserved. Iterate physical X/Z under actual unsigned bounds, obtain tile through6A42C0, test only6A9930 AL then nonnull tile. Fetch6AA510(selector9,1), decode through69EF30 and accumulate four float lanes/count in order. Divide by admitted count, then multiply room vector+120 and referenced lighting scalar into+140; separately write scaled room vector+130 and MINPS both against referenced limit. There is no explicit empty-count rejection in this body. Decoder/room-membership predicate/full light-factor producers and runtime consumers remain separate; this is not merely an RGB averaging API.

006a0130  55  PUSH EBP
006a0131  8bec  MOV EBP,ESP
006a0133  83e4f0  AND ESP,0xfffffff0
006a0136  83ec34  SUB ESP,0x34
006a0139  0f57c0  XORPS XMM0,XMM0
006a013c  53  PUSH EBX
006a013d  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006a0143  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006a0149  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006a014f  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006a0155  0f28442418  MOVAPS XMM0,xmmword ptr [ESP + 0x18]
006a015a  56  PUSH ESI
006a015b  33d2  XOR EDX,EDX
006a015d  57  PUSH EDI
006a015e  8bf1  MOV ESI,ECX
006a0160  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
006a0165  8954241c  MOV dword ptr [ESP + 0x1c],EDX
006a0169  89542418  MOV dword ptr [ESP + 0x18],EDX
006a016d  33db  XOR EBX,EBX
006a016f  90  NOP
006a0170  3b96c0000000  CMP EDX,dword ptr [ESI + 0xc0]
006a0176  7366  JNC 0x006a01de
006a0178  3b9ec4000000  CMP EBX,dword ptr [ESI + 0xc4]
006a017e  735e  JNC 0x006a01de
006a0180  8b4624  MOV EAX,dword ptr [ESI + 0x24]
006a0183  8b4e1c  MOV ECX,dword ptr [ESI + 0x1c]
006a0186  03c3  ADD EAX,EBX
006a0188  03ca  ADD ECX,EDX
006a018a  50  PUSH EAX
006a018b  51  PUSH ECX
006a018c  8b0e  MOV ECX,dword ptr [ESI]
006a018e  e82d410000  CALL 0x006a42c0
006a0193  8bf8  MOV EDI,EAX
006a0195  8b460c  MOV EAX,dword ptr [ESI + 0xc]
006a0198  50  PUSH EAX
006a0199  8bcf  MOV ECX,EDI
006a019b  e890970000  CALL 0x006a9930
006a01a0  84c0  TEST AL,AL
006a01a2  7431  JZ 0x006a01d5
006a01a4  85ff  TEST EDI,EDI
006a01a6  742d  JZ 0x006a01d5
006a01a8  6a01  PUSH 0x1
006a01aa  6a09  PUSH 0x9
006a01ac  8bcf  MOV ECX,EDI
006a01ae  e85da30000  CALL 0x006aa510
006a01b3  50  PUSH EAX
006a01b4  8d442434  LEA EAX,[ESP + 0x34]
006a01b8  50  PUSH EAX
006a01b9  e872edffff  CALL 0x0069ef30
006a01be  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006a01c1  0f58442428  ADDPS XMM0,xmmword ptr [ESP + 0x28]
006a01c6  83c408  ADD ESP,0x8
006a01c9  8344241c01  ADD dword ptr [ESP + 0x1c],0x1
006a01ce  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
006a01d3  eb05  JMP 0x006a01da
006a01d5  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006a01da  8b542418  MOV EDX,dword ptr [ESP + 0x18]
006a01de  83c301  ADD EBX,0x1
006a01e1  3b9ec4000000  CMP EBX,dword ptr [ESI + 0xc4]
006a01e7  7687  JBE 0x006a0170
006a01e9  83c201  ADD EDX,0x1
006a01ec  3b96c0000000  CMP EDX,dword ptr [ESI + 0xc0]
006a01f2  89542418  MOV dword ptr [ESP + 0x18],EDX
006a01f6  0f8671ffffff  JBE 0x006a016d
006a01fc  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
006a0200  db44241c  FILD dword ptr [ESP + 0x1c]
006a0204  85c9  TEST ECX,ECX
006a0206  7d06  JGE 0x006a020e
006a0208  d8054899f900  FADD float ptr [0x00f99948]
006a020e  d95c241c  FSTP float ptr [ESP + 0x1c]
006a0212  5f  POP EDI
006a0213  f30f104c2418  MOVSS XMM1,dword ptr [ESP + 0x18]
006a0219  0fc6c900  SHUFPS XMM1,XMM1,0x0
006a021d  0f5ec1  DIVPS XMM0,XMM1
006a0220  0f288e20010000  MOVAPS XMM1,xmmword ptr [ESI + 0x120]
006a0227  0f59c1  MULPS XMM0,XMM1
006a022a  f30f100d783ffb00  MOVSS XMM1,dword ptr [0x00fb3f78]
006a0232  0fc6c900  SHUFPS XMM1,XMM1,0x0
006a0236  0f59c1  MULPS XMM0,XMM1
006a0239  0f298640010000  MOVAPS xmmword ptr [ESI + 0x140],XMM0
006a0240  0f288e20010000  MOVAPS XMM1,xmmword ptr [ESI + 0x120]
006a0247  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
006a024f  0fc6c000  SHUFPS XMM0,XMM0,0x0
006a0253  0f59c1  MULPS XMM0,XMM1
006a0256  0f298630010000  MOVAPS xmmword ptr [ESI + 0x130],XMM0
006a025d  f30f10050c44ff00  MOVSS XMM0,dword ptr [0x00ff440c]
006a0265  0f288e40010000  MOVAPS XMM1,xmmword ptr [ESI + 0x140]
006a026c  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006a0272  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006a0278  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006a027e  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006a0284  0f2844241c  MOVAPS XMM0,xmmword ptr [ESP + 0x1c]
006a0289  0f5dc8  MINPS XMM1,XMM0
006a028c  0f298e40010000  MOVAPS xmmword ptr [ESI + 0x140],XMM1
006a0293  0f288e30010000  MOVAPS XMM1,xmmword ptr [ESI + 0x130]
006a029a  0f5dc8  MINPS XMM1,XMM0
006a029d  0f298e30010000  MOVAPS xmmword ptr [ESI + 0x130],XMM1
006a02a4  5e  POP ESI
006a02a5  5b  POP EBX
006a02a6  8be5  MOV ESP,EBP
006a02a8  5d  POP EBP
006a02a9  c3  RET
