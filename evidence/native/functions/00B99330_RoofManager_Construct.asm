# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: RoofManager_Construct
Paired actual annotated Ghidra pseudocode: 00B99330_RoofManager_Construct.c
Owned ranges: [[00b99330, 00b99490]]
Envelope bytes=353

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b99330  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00b99338  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
00b99340  f30f1015b4b5f900  MOVSS XMM2,dword ptr [0x00f9b5b4]
00b99348  81ec94040000  SUB ESP,0x494
00b9934e  53  PUSH EBX
00b9934f  33db  XOR EBX,EBX
00b99351  56  PUSH ESI
00b99352  8bf1  MOV ESI,ECX
00b99354  c706400f0701  MOV dword ptr [ESI],0x1070f40
00b9935a  895e08  MOV dword ptr [ESI + 0x8],EBX
00b9935d  895e0c  MOV dword ptr [ESI + 0xc],EBX
00b99360  895e10  MOV dword ptr [ESI + 0x10],EBX
00b99363  895e14  MOV dword ptr [ESI + 0x14],EBX
00b99366  c74618200f0701  MOV dword ptr [ESI + 0x18],0x1070f20
00b9936d  f30f11462c  MOVSS dword ptr [ESI + 0x2c],XMM0
00b99372  f30f114e30  MOVSS dword ptr [ESI + 0x30],XMM1
00b99377  c74638fc0e0701  MOV dword ptr [ESI + 0x38],0x1070efc
00b9937e  895e28  MOV dword ptr [ESI + 0x28],EBX
00b99381  895e34  MOV dword ptr [ESI + 0x34],EBX
00b99384  b801000000  MOV EAX,0x1
00b99389  894624  MOV dword ptr [ESI + 0x24],EAX
00b9938c  b900d91401  MOV ECX,0x114d900
00b99391  894e20  MOV dword ptr [ESI + 0x20],ECX
00b99394  895e3c  MOV dword ptr [ESI + 0x3c],EBX
00b99397  895e40  MOV dword ptr [ESI + 0x40],EBX
00b9939a  895e44  MOV dword ptr [ESI + 0x44],EBX
00b9939d  895e48  MOV dword ptr [ESI + 0x48],EBX
00b993a0  895e4c  MOV dword ptr [ESI + 0x4c],EBX
00b993a3  884650  MOV byte ptr [ESI + 0x50],AL
00b993a6  f30f115654  MOVSS dword ptr [ESI + 0x54],XMM2
00b993ab  f30f114668  MOVSS dword ptr [ESI + 0x68],XMM0
00b993b0  f30f114e6c  MOVSS dword ptr [ESI + 0x6c],XMM1
00b993b5  c74674d80e0701  MOV dword ptr [ESI + 0x74],0x1070ed8
00b993bc  894e5c  MOV dword ptr [ESI + 0x5c],ECX
00b993bf  894660  MOV dword ptr [ESI + 0x60],EAX
00b993c2  895e64  MOV dword ptr [ESI + 0x64],EBX
00b993c5  895e70  MOV dword ptr [ESI + 0x70],EBX
00b993c8  895e78  MOV dword ptr [ESI + 0x78],EBX
00b993cb  895e7c  MOV dword ptr [ESI + 0x7c],EBX
00b993ce  899e80000000  MOV dword ptr [ESI + 0x80],EBX
00b993d4  899e84000000  MOV dword ptr [ESI + 0x84],EBX
00b993da  50  PUSH EAX
00b993db  53  PUSH EBX
00b993dc  8d8ea0000000  LEA ECX,[ESI + 0xa0]
00b993e2  888688000000  MOV byte ptr [ESI + 0x88],AL
00b993e8  899e8c000000  MOV dword ptr [ESI + 0x8c],EBX
00b993ee  889e90000000  MOV byte ptr [ESI + 0x90],BL
00b993f4  899e94000000  MOV dword ptr [ESI + 0x94],EBX
00b993fa  889e98000000  MOV byte ptr [ESI + 0x98],BL
00b99400  889e99000000  MOV byte ptr [ESI + 0x99],BL
00b99406  e8e58894ff  CALL 0x004e1cf0
00b9940b  a134e01e01  MOV EAX,[0x011ee034]
00b99410  8b80a8000000  MOV EAX,dword ptr [EAX + 0xa8]
00b99416  3bc3  CMP EAX,EBX
00b99418  7418  JZ 0x00b99432
00b9941a  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00b9941d  894e40  MOV dword ptr [ESI + 0x40],ECX
00b99420  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00b99423  895644  MOV dword ptr [ESI + 0x44],EDX
00b99426  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00b99429  894e48  MOV dword ptr [ESI + 0x48],ECX
00b9942c  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00b9942f  89564c  MOV dword ptr [ESI + 0x4c],EDX
00b99432  53  PUSH EBX
00b99433  68c40e0701  PUSH 0x1070ec4
00b99438  e823209fff  CALL 0x0058b460
00b9943d  83c408  ADD ESP,0x8
00b99440  381d88d31e01  CMP byte ptr [0x011ed388],BL
00b99446  a289d31e01  MOV [0x011ed389],AL
00b9944b  7539  JNZ 0x00b99486
00b9944d  8d4c2408  LEA ECX,[ESP + 0x8]
00b99451  e8ca6cc3ff  CALL 0x007d0120
00b99456  53  PUSH EBX
00b99457  68900e0701  PUSH 0x1070e90
00b9945c  8d4c2410  LEA ECX,[ESP + 0x10]
00b99460  e80b6fc3ff  CALL 0x007d0370
00b99465  84c0  TEST AL,AL
00b99467  7414  JZ 0x00b9947d
00b99469  8d442408  LEA EAX,[ESP + 0x8]
00b9946d  50  PUSH EAX
00b9946e  e8dde2ffff  CALL 0x00b97750
00b99473  83c404  ADD ESP,0x4
00b99476  c60588d31e0101  MOV byte ptr [0x011ed388],0x1
00b9947d  8d4c2408  LEA ECX,[ESP + 0x8]
00b99481  e8ca6dc3ff  CALL 0x007d0250
00b99486  8bc6  MOV EAX,ESI
00b99488  5e  POP ESI
00b99489  5b  POP EBX
00b9948a  81c494040000  ADD ESP,0x494
00b99490  c3  RET
Owned instructions=90 owned bytes=353 gap/nonowned bytes=0
