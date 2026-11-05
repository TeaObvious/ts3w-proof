# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_RefreshSeaBoundaryFlag
Paired actual annotated Ghidra pseudocode: 00AB76C0_Lot_RefreshSeaBoundaryFlag.c
Owned ranges: [[00ab76c0, 00ab777c] [00ab7780, 00ab77d5]]
Envelope bytes=278

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ab76c0  51  PUSH ECX
00ab76c1  56  PUSH ESI
00ab76c2  8bf1  MOV ESI,ECX
00ab76c4  83be9002000000  CMP dword ptr [ESI + 0x290],0x0
00ab76cb  c686b004000000  MOV byte ptr [ESI + 0x4b0],0x0
00ab76d2  0f84fb000000  JZ 0x00ab77d3
00ab76d8  80bebc04000000  CMP byte ptr [ESI + 0x4bc],0x0
00ab76df  0f85ee000000  JNZ 0x00ab77d3
00ab76e5  53  PUSH EBX
00ab76e6  bb01000000  MOV EBX,0x1
00ab76eb  399e08040000  CMP dword ptr [ESI + 0x408],EBX
00ab76f1  750d  JNZ 0x00ab7700
00ab76f3  83be0c04000050  CMP dword ptr [ESI + 0x40c],0x50
00ab76fa  0f84d2000000  JZ 0x00ab77d2
00ab7700  55  PUSH EBP
00ab7701  57  PUSH EDI
00ab7702  e889a3ffff  CALL 0x00ab1a90
00ab7707  d95c2410  FSTP float ptr [ESP + 0x10]
00ab770b  8bbe78010000  MOV EDI,dword ptr [ESI + 0x178]
00ab7711  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00ab7717  33d2  XOR EDX,EDX
00ab7719  85ff  TEST EDI,EDI
00ab771b  7c4e  JL 0x00ab776b
00ab771d  8b8690020000  MOV EAX,dword ptr [ESI + 0x290]
00ab7723  8b6818  MOV EBP,dword ptr [EAX + 0x18]
00ab7726  2b6810  SUB EBP,dword ptr [EAX + 0x10]
00ab7729  8b4824  MOV ECX,dword ptr [EAX + 0x24]
00ab772c  0faf6908  IMUL EBP,dword ptr [ECX + 0x8]
00ab7730  0faf6904  IMUL EBP,dword ptr [ECX + 0x4]
00ab7734  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00ab7737  03ea  ADD EBP,EDX
00ab7739  0f2f04a9  COMISS XMM0,dword ptr [ECX + EBP*0x4]
00ab773d  0f8787000000  JA 0x00ab77ca
00ab7743  8b6818  MOV EBP,dword ptr [EAX + 0x18]
00ab7746  2b6810  SUB EBP,dword ptr [EAX + 0x10]
00ab7749  8b4824  MOV ECX,dword ptr [EAX + 0x24]
00ab774c  0faf6904  IMUL EBP,dword ptr [ECX + 0x4]
00ab7750  03ae74010000  ADD EBP,dword ptr [ESI + 0x174]
00ab7756  0faf6908  IMUL EBP,dword ptr [ECX + 0x8]
00ab775a  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00ab775d  03ea  ADD EBP,EDX
00ab775f  0f2f04a9  COMISS XMM0,dword ptr [ECX + EBP*0x4]
00ab7763  7765  JA 0x00ab77ca
00ab7765  03d3  ADD EDX,EBX
00ab7767  3bd7  CMP EDX,EDI
00ab7769  7eb8  JLE 0x00ab7723
00ab776b  399e74010000  CMP dword ptr [ESI + 0x174],EBX
00ab7771  8bd3  MOV EDX,EBX
00ab7773  7e5b  JLE 0x00ab77d0
00ab7775  8b8690020000  MOV EAX,dword ptr [ESI + 0x290]
00ab777b  eb03  JMP 0x00ab7780
00ab777d  8d  .byte (gap/alignment)
00ab777e  49  .byte (gap/alignment)
00ab777f  00  .byte (gap/alignment)
00ab7780  8b6818  MOV EBP,dword ptr [EAX + 0x18]
00ab7783  2b6810  SUB EBP,dword ptr [EAX + 0x10]
00ab7786  8b4824  MOV ECX,dword ptr [EAX + 0x24]
00ab7789  0faf6904  IMUL EBP,dword ptr [ECX + 0x4]
00ab778d  03ea  ADD EBP,EDX
00ab778f  0faf6908  IMUL EBP,dword ptr [ECX + 0x8]
00ab7793  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00ab7796  0f2f04a9  COMISS XMM0,dword ptr [ECX + EBP*0x4]
00ab779a  772e  JA 0x00ab77ca
00ab779c  8b6818  MOV EBP,dword ptr [EAX + 0x18]
00ab779f  2b6810  SUB EBP,dword ptr [EAX + 0x10]
00ab77a2  8b4824  MOV ECX,dword ptr [EAX + 0x24]
00ab77a5  0faf6904  IMUL EBP,dword ptr [ECX + 0x4]
00ab77a9  03ea  ADD EBP,EDX
00ab77ab  0faf6908  IMUL EBP,dword ptr [ECX + 0x8]
00ab77af  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00ab77b2  03ef  ADD EBP,EDI
00ab77b4  0f2f04a9  COMISS XMM0,dword ptr [ECX + EBP*0x4]
00ab77b8  7710  JA 0x00ab77ca
00ab77ba  03d3  ADD EDX,EBX
00ab77bc  3b9674010000  CMP EDX,dword ptr [ESI + 0x174]
00ab77c2  7cbc  JL 0x00ab7780
00ab77c4  5f  POP EDI
00ab77c5  5d  POP EBP
00ab77c6  5b  POP EBX
00ab77c7  5e  POP ESI
00ab77c8  59  POP ECX
00ab77c9  c3  RET
00ab77ca  889eb0040000  MOV byte ptr [ESI + 0x4b0],BL
00ab77d0  5f  POP EDI
00ab77d1  5d  POP EBP
00ab77d2  5b  POP EBX
00ab77d3  5e  POP ESI
00ab77d4  59  POP ECX
00ab77d5  c3  RET
Owned instructions=86 owned bytes=275 gap/nonowned bytes=3
