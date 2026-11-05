# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WorldObject_ApplyAuthoredWallAndFenceCutoutRows
; Owned ranges: [[00b0bc60, 00b0c11a]]
; Actual entry PLATE: Static PC1.67: cdecl object pointer, plain RET; no meaningful return asserted. After existing object/catalog/lot/component gates, enumerates each raw authored cutout row independently. Transform/locator query B47D20 at B0BEC2, TEST AL then JZ B0C0DA skips that row on missing physical wall. Pair-index modulo belongs to transform input, not an aggregate host union. Found-wall product and ordinary/alternate message paths remain distinct downstream owners. No CLR outcome ledger or whole object-visibility result is recovered here.

00b0bc60  55  PUSH EBP
00b0bc61  8bec  MOV EBP,ESP
00b0bc63  83e4f0  AND ESP,0xfffffff0
00b0bc66  81ec04010000  SUB ESP,0x104
00b0bc6c  53  PUSH EBX
00b0bc6d  56  PUSH ESI
00b0bc6e  57  PUSH EDI
00b0bc6f  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
00b0bc72  33db  XOR EBX,EBX
00b0bc74  3bfb  CMP EDI,EBX
00b0bc76  0f8498040000  JZ 0x00b0c114
00b0bc7c  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b0bc82  8d4718  LEA EAX,[EDI + 0x18]
00b0bc85  50  PUSH EAX
00b0bc86  e8252f1800  CALL 0x00c8ebb0
00b0bc8b  8bf0  MOV ESI,EAX
00b0bc8d  3bf3  CMP ESI,EBX
00b0bc8f  89742434  MOV dword ptr [ESP + 0x34],ESI
00b0bc93  0f847b040000  JZ 0x00b0c114
00b0bc99  8b8ed4000000  MOV ECX,dword ptr [ESI + 0xd4]
00b0bc9f  3b8ed8000000  CMP ECX,dword ptr [ESI + 0xd8]
00b0bca5  0f8469040000  JZ 0x00b0c114
00b0bcab  8b1508df1e01  MOV EDX,dword ptr [0x011edf08]
00b0bcb1  52  PUSH EDX
00b0bcb2  8bcf  MOV ECX,EDI
00b0bcb4  e8a785e2ff  CALL 0x00934260
00b0bcb9  3bc3  CMP EAX,EBX
00b0bcbb  89442420  MOV dword ptr [ESP + 0x20],EAX
00b0bcbf  0f844f040000  JZ 0x00b0c114
00b0bcc5  8bcf  MOV ECX,EDI
00b0bcc7  e86434b8ff  CALL 0x0068f130
00b0bccc  3bc3  CMP EAX,EBX
00b0bcce  0f8440040000  JZ 0x00b0c114
00b0bcd4  8b10  MOV EDX,dword ptr [EAX]
00b0bcd6  8bc8  MOV ECX,EAX
00b0bcd8  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00b0bcdb  680e6b5690  PUSH 0x90566b0e
00b0bce0  ffd0  CALL EAX
00b0bce2  8bf8  MOV EDI,EAX
00b0bce4  3bfb  CMP EDI,EBX
00b0bce6  0f8428040000  JZ 0x00b0c114
00b0bcec  8b8ed0000000  MOV ECX,dword ptr [ESI + 0xd0]
00b0bcf2  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00b0bcf5  81e100000100  AND ECX,0x10000
00b0bcfb  81f900000100  CMP ECX,0x10000
00b0bd01  52  PUSH EDX
00b0bd02  0f9444241b  SETZ byte ptr [ESP + 0x1b]
00b0bd07  e8b46da7ff  CALL 0x00582ac0
00b0bd0c  83c404  ADD ESP,0x4
00b0bd0f  3bc3  CMP EAX,EBX
00b0bd11  740a  JZ 0x00b0bd1d
00b0bd13  f6400801  TEST byte ptr [EAX + 0x8],0x1
00b0bd17  0f84f7030000  JZ 0x00b0c114
00b0bd1d  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00b0bd21  e81adc1700  CALL 0x00c89940
00b0bd26  51  PUSH ECX
00b0bd27  d91c24  FSTP float ptr [ESP]
00b0bd2a  e8d1fffeff  CALL 0x00afbd00
00b0bd2f  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00b0bd37  83c404  ADD ESP,0x4
00b0bd3a  8944244c  MOV dword ptr [ESP + 0x4c],EAX
00b0bd3e  8d442464  LEA EAX,[ESP + 0x64]
00b0bd42  50  PUSH EAX
00b0bd43  8d4c2464  LEA ECX,[ESP + 0x64]
00b0bd47  51  PUSH ECX
00b0bd48  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00b0bd4c  8d542464  LEA EDX,[ESP + 0x64]
00b0bd50  52  PUSH EDX
00b0bd51  f30f11442468  MOVSS dword ptr [ESP + 0x68],XMM0
00b0bd57  f30f1144246c  MOVSS dword ptr [ESP + 0x6c],XMM0
00b0bd5d  895c2470  MOV dword ptr [ESP + 0x70],EBX
00b0bd61  e87ad71700  CALL 0x00c894e0
00b0bd66  8b8798020000  MOV EAX,dword ptr [EDI + 0x298]
00b0bd6c  8bce  MOV ECX,ESI
00b0bd6e  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00b0bd72  e8d9d6c7ff  CALL 0x00789450
00b0bd77  8b8ee4000000  MOV ECX,dword ptr [ESI + 0xe4]
00b0bd7d  8d542424  LEA EDX,[ESP + 0x24]
00b0bd81  894c2430  MOV dword ptr [ESP + 0x30],ECX
00b0bd85  52  PUSH EDX
00b0bd86  8d8c24a0000000  LEA ECX,[ESP + 0xa0]
00b0bd8d  89442424  MOV dword ptr [ESP + 0x24],EAX
00b0bd91  c744242834ba0601  MOV dword ptr [ESP + 0x28],0x106ba34
00b0bd99  e832baf6ff  CALL 0x00a777d0
00b0bd9e  395c2420  CMP dword ptr [ESP + 0x20],EBX
00b0bda2  895c2428  MOV dword ptr [ESP + 0x28],EBX
00b0bda6  0f8643030000  JBE 0x00b0c0ef
00b0bdac  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00b0bdb0  8d0c00  LEA ECX,[EAX + EAX*0x1]
00b0bdb3  898c2494000000  MOV dword ptr [ESP + 0x94],ECX
00b0bdba  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00b0bdbe  33d2  XOR EDX,EDX
00b0bdc0  f7b42494000000  DIV dword ptr [ESP + 0x94]
00b0bdc7  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00b0bdcf  8d442448  LEA EAX,[ESP + 0x48]
00b0bdd3  8d4c2454  LEA ECX,[ESP + 0x54]
00b0bdd7  895c2468  MOV dword ptr [ESP + 0x68],EBX
00b0bddb  895c246c  MOV dword ptr [ESP + 0x6c],EBX
00b0bddf  895c2470  MOV dword ptr [ESP + 0x70],EBX
00b0bde3  895c2474  MOV dword ptr [ESP + 0x74],EBX
00b0bde7  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00b0bded  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00b0bdf3  895c2448  MOV dword ptr [ESP + 0x48],EBX
00b0bdf7  f30f11442450  MOVSS dword ptr [ESP + 0x50],XMM0
00b0bdfd  f30f11442454  MOVSS dword ptr [ESP + 0x54],XMM0
00b0be03  895c2458  MOV dword ptr [ESP + 0x58],EBX
00b0be07  89542430  MOV dword ptr [ESP + 0x30],EDX
00b0be0b  8d542468  LEA EDX,[ESP + 0x68]
00b0be0f  52  PUSH EDX
00b0be10  50  PUSH EAX
00b0be11  51  PUSH ECX
00b0be12  8d54245c  LEA EDX,[ESP + 0x5c]
00b0be16  52  PUSH EDX
00b0be17  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00b0be1b  8d442454  LEA EAX,[ESP + 0x54]
00b0be1f  50  PUSH EAX
00b0be20  8d4c2454  LEA ECX,[ESP + 0x54]
00b0be24  51  PUSH ECX
00b0be25  52  PUSH EDX
00b0be26  8bce  MOV ECX,ESI
00b0be28  e873bb1800  CALL 0x00c979a0
00b0be2d  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00b0be31  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00b0be35  8b542444  MOV EDX,dword ptr [ESP + 0x44]
00b0be39  89442458  MOV dword ptr [ESP + 0x58],EAX
00b0be3d  89842484000000  MOV dword ptr [ESP + 0x84],EAX
00b0be44  89842490000000  MOV dword ptr [ESP + 0x90],EAX
00b0be4b  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00b0be4f  894c247c  MOV dword ptr [ESP + 0x7c],ECX
00b0be53  8b4c2450  MOV ECX,dword ptr [ESP + 0x50]
00b0be57  89942480000000  MOV dword ptr [ESP + 0x80],EDX
00b0be5e  8b542454  MOV EDX,dword ptr [ESP + 0x54]
00b0be62  d1f8  SAR EAX,0x1
00b0be64  50  PUSH EAX
00b0be65  898c248c000000  MOV dword ptr [ESP + 0x8c],ECX
00b0be6c  8d8c2480000000  LEA ECX,[ESP + 0x80]
00b0be73  89942490000000  MOV dword ptr [ESP + 0x90],EDX
00b0be7a  51  PUSH ECX
00b0be7b  8d542454  LEA EDX,[ESP + 0x54]
00b0be7f  52  PUSH EDX
00b0be80  8bc1  MOV EAX,ECX
00b0be82  50  PUSH EAX
00b0be83  e8c8981300  CALL 0x00c45750
00b0be88  8d8c248c000000  LEA ECX,[ESP + 0x8c]
00b0be8f  51  PUSH ECX
00b0be90  8d542470  LEA EDX,[ESP + 0x70]
00b0be94  52  PUSH EDX
00b0be95  8bc1  MOV EAX,ECX
00b0be97  50  PUSH EAX
00b0be98  e813981300  CALL 0x00c456b0
00b0be9d  83c41c  ADD ESP,0x1c
00b0bea0  8d8c2488000000  LEA ECX,[ESP + 0x88]
00b0bea7  51  PUSH ECX
00b0bea8  8d942480000000  LEA EDX,[ESP + 0x80]
00b0beaf  52  PUSH EDX
00b0beb0  8d4c2440  LEA ECX,[ESP + 0x40]
00b0beb4  e8378fc7ff  CALL 0x00784df0
00b0beb9  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00b0bebd  8d442438  LEA EAX,[ESP + 0x38]
00b0bec1  50  PUSH EAX
00b0bec2  e859be0300  CALL 0x00b47d20
00b0bec7  84c0  TEST AL,AL
00b0bec9  0f840b020000  JZ 0x00b0c0da
00b0becf  53  PUSH EBX
00b0bed0  8d4c243c  LEA ECX,[ESP + 0x3c]
00b0bed4  51  PUSH ECX
00b0bed5  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00b0bed9  e812bf0300  CALL 0x00b47df0
00b0bede  50  PUSH EAX
00b0bedf  89442428  MOV dword ptr [ESP + 0x28],EAX
00b0bee3  e848f91400  CALL 0x00c5b830
00b0bee8  83c404  ADD ESP,0x4
00b0beeb  84c0  TEST AL,AL
00b0beed  0f85e7010000  JNZ 0x00b0c0da
00b0bef3  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00b0bef7  52  PUSH EDX
00b0bef8  e863f91400  CALL 0x00c5b860
00b0befd  83c404  ADD ESP,0x4
00b0bf00  84c0  TEST AL,AL
00b0bf02  0f84d5000000  JZ 0x00b0bfdd
00b0bf08  8d442418  LEA EAX,[ESP + 0x18]
00b0bf0c  50  PUSH EAX
00b0bf0d  8d4c243c  LEA ECX,[ESP + 0x3c]
00b0bf11  51  PUSH ECX
00b0bf12  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00b0bf16  c6442420ff  MOV byte ptr [ESP + 0x20],0xff
00b0bf1b  c6442421ff  MOV byte ptr [ESP + 0x21],0xff
00b0bf20  885c2422  MOV byte ptr [ESP + 0x22],BL
00b0bf24  c6442423ff  MOV byte ptr [ESP + 0x23],0xff
00b0bf29  c6442424ff  MOV byte ptr [ESP + 0x24],0xff
00b0bf2e  885c2425  MOV byte ptr [ESP + 0x25],BL
00b0bf32  e809be0300  CALL 0x00b47d40
00b0bf37  8d542418  LEA EDX,[ESP + 0x18]
00b0bf3b  52  PUSH EDX
00b0bf3c  8d84249c000000  LEA EAX,[ESP + 0x9c]
00b0bf43  50  PUSH EAX
00b0bf44  8d8c24a4000000  LEA ECX,[ESP + 0xa4]
00b0bf4b  e8b0091400  CALL 0x00c4c900
00b0bf50  8d8c24a0000000  LEA ECX,[ESP + 0xa0]
00b0bf57  3908  CMP dword ptr [EAX],ECX
00b0bf59  0f8514010000  JNZ 0x00b0c073
00b0bf5f  e88c0594ff  CALL 0x0044c4f0
00b0bf64  8bf0  MOV ESI,EAX
00b0bf66  3bf3  CMP ESI,EBX
00b0bf68  7455  JZ 0x00b0bfbf
00b0bf6a  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00b0bf6e  53  PUSH EBX
00b0bf6f  8d54241c  LEA EDX,[ESP + 0x1c]
00b0bf73  52  PUSH EDX
00b0bf74  e877be0300  CALL 0x00b47df0
00b0bf79  6a18  PUSH 0x18
00b0bf7b  e8d031fdff  CALL 0x00adf150
00b0bf80  83c404  ADD ESP,0x4
00b0bf83  3bc3  CMP EAX,EBX
00b0bf85  7409  JZ 0x00b0bf90
00b0bf87  8bc8  MOV ECX,EAX
00b0bf89  e8d259ffff  CALL 0x00b01960
00b0bf8e  eb02  JMP 0x00b0bf92
00b0bf90  33c0  XOR EAX,EAX
00b0bf92  8b4f48  MOV ECX,dword ptr [EDI + 0x48]
00b0bf95  894808  MOV dword ptr [EAX + 0x8],ECX
00b0bf98  8b574c  MOV EDX,dword ptr [EDI + 0x4c]
00b0bf9b  89500c  MOV dword ptr [EAX + 0xc],EDX
00b0bf9e  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00b0bfa2  894810  MOV dword ptr [EAX + 0x10],ECX
00b0bfa5  668b54241c  MOV DX,word ptr [ESP + 0x1c]
00b0bfaa  53  PUSH EBX
00b0bfab  53  PUSH EBX
00b0bfac  66895014  MOV word ptr [EAX + 0x14],DX
00b0bfb0  8b16  MOV EDX,dword ptr [ESI]
00b0bfb2  50  PUSH EAX
00b0bfb3  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00b0bfb6  68c2857f05  PUSH 0x57f85c2
00b0bfbb  8bce  MOV ECX,ESI
00b0bfbd  ffd0  CALL EAX
00b0bfbf  8d4c2418  LEA ECX,[ESP + 0x18]
00b0bfc3  51  PUSH ECX
00b0bfc4  8d9424bc000000  LEA EDX,[ESP + 0xbc]
00b0bfcb  52  PUSH EDX
00b0bfcc  8d8c24a4000000  LEA ECX,[ESP + 0xa4]
00b0bfd3  e868f3ffff  CALL 0x00b0b340
00b0bfd8  e992000000  JMP 0x00b0c06f
00b0bfdd  e80e0594ff  CALL 0x0044c4f0
00b0bfe2  8bf0  MOV ESI,EAX
00b0bfe4  3bf3  CMP ESI,EBX
00b0bfe6  0f8483000000  JZ 0x00b0c06f
00b0bfec  6a30  PUSH 0x30
00b0bfee  e85d31fdff  CALL 0x00adf150
00b0bff3  83c404  ADD ESP,0x4
00b0bff6  3bc3  CMP EAX,EBX
00b0bff8  7409  JZ 0x00b0c003
00b0bffa  8bc8  MOV ECX,EAX
00b0bffc  e88f59ffff  CALL 0x00b01990
00b0c001  eb02  JMP 0x00b0c005
00b0c003  33c0  XOR EAX,EAX
00b0c005  8b4f48  MOV ECX,dword ptr [EDI + 0x48]
00b0c008  894808  MOV dword ptr [EAX + 0x8],ECX
00b0c00b  8b574c  MOV EDX,dword ptr [EDI + 0x4c]
00b0c00e  89500c  MOV dword ptr [EAX + 0xc],EDX
00b0c011  8b4c2468  MOV ECX,dword ptr [ESP + 0x68]
00b0c015  894818  MOV dword ptr [EAX + 0x18],ECX
00b0c018  8b54246c  MOV EDX,dword ptr [ESP + 0x6c]
00b0c01c  89501c  MOV dword ptr [EAX + 0x1c],EDX
00b0c01f  8b4c2470  MOV ECX,dword ptr [ESP + 0x70]
00b0c023  894820  MOV dword ptr [EAX + 0x20],ECX
00b0c026  8b542474  MOV EDX,dword ptr [ESP + 0x74]
00b0c02a  895024  MOV dword ptr [EAX + 0x24],EDX
00b0c02d  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00b0c031  894810  MOV dword ptr [EAX + 0x10],ECX
00b0c034  668b54243c  MOV DX,word ptr [ESP + 0x3c]
00b0c039  66895014  MOV word ptr [EAX + 0x14],DX
00b0c03d  8a4c244c  MOV CL,byte ptr [ESP + 0x4c]
00b0c041  8a542430  MOV DL,byte ptr [ESP + 0x30]
00b0c045  884828  MOV byte ptr [EAX + 0x28],CL
00b0c048  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00b0c04c  d1e9  SHR ECX,0x1
00b0c04e  385c2417  CMP byte ptr [ESP + 0x17],BL
00b0c052  885029  MOV byte ptr [EAX + 0x29],DL
00b0c055  53  PUSH EBX
00b0c056  0f94c2  SETZ DL
00b0c059  88482a  MOV byte ptr [EAX + 0x2a],CL
00b0c05c  53  PUSH EBX
00b0c05d  88502b  MOV byte ptr [EAX + 0x2b],DL
00b0c060  8b16  MOV EDX,dword ptr [ESI]
00b0c062  50  PUSH EAX
00b0c063  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00b0c066  68b47e2506  PUSH 0x6257eb4
00b0c06b  8bce  MOV ECX,ESI
00b0c06d  ffd0  CALL EAX
00b0c06f  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00b0c073  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00b0c077  6a01  PUSH 0x1
00b0c079  51  PUSH ECX
00b0c07a  e831f91400  CALL 0x00c5b9b0
00b0c07f  83c408  ADD ESP,0x8
00b0c082  84c0  TEST AL,AL
00b0c084  7454  JZ 0x00b0c0da
00b0c086  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00b0c089  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00b0c08c  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00b0c08f  8d8c24c0000000  LEA ECX,[ESP + 0xc0]
00b0c096  c78424c00000000abd6e0a  MOV dword ptr [ESP + 0xc0],0xa6ebd0a
00b0c0a1  899c24c4000000  MOV dword ptr [ESP + 0xc4],EBX
00b0c0a8  899424c8000000  MOV dword ptr [ESP + 0xc8],EDX
00b0c0af  898424cc000000  MOV dword ptr [ESP + 0xcc],EAX
00b0c0b6  e84516ffff  CALL 0x00afd700
00b0c0bb  8d8c24c0000000  LEA ECX,[ESP + 0xc0]
00b0c0c2  51  PUSH ECX
00b0c0c3  c60001  MOV byte ptr [EAX],0x1
00b0c0c6  e8b572b8ff  CALL 0x00693380
00b0c0cb  83c404  ADD ESP,0x4
00b0c0ce  8d8c24c0000000  LEA ECX,[ESP + 0xc0]
00b0c0d5  e89669a7ff  CALL 0x00582a70
00b0c0da  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00b0c0de  83c001  ADD EAX,0x1
00b0c0e1  3b442420  CMP EAX,dword ptr [ESP + 0x20]
00b0c0e5  89442428  MOV dword ptr [ESP + 0x28],EAX
00b0c0e9  0f82cbfcffff  JC 0x00b0bdba
00b0c0ef  53  PUSH EBX
00b0c0f0  57  PUSH EDI
00b0c0f1  8d8c24a4000000  LEA ECX,[ESP + 0xa4]
00b0c0f8  e8e3f8ffff  CALL 0x00b0b9e0
00b0c0fd  8b9424b0000000  MOV EDX,dword ptr [ESP + 0xb0]
00b0c104  83c408  ADD ESP,0x8
00b0c107  52  PUSH EDX
00b0c108  8d8c24a0000000  LEA ECX,[ESP + 0xa0]
00b0c10f  e89c58daff  CALL 0x008b19b0
00b0c114  5f  POP EDI
00b0c115  5e  POP ESI
00b0c116  5b  POP EBX
00b0c117  8be5  MOV ESP,EBP
00b0c119  5d  POP EBP
00b0c11a  c3  RET
