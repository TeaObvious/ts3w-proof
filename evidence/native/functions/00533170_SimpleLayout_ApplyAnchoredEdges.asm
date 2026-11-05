# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00533170_SimpleLayout_ApplyAnchoredEdges.c
Owned ranges: [[00533170, 0053322e]]

00533170  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00533174  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00533178  56  PUSH ESI
00533179  8bf1  MOV ESI,ECX
0053317b  8a4e04  MOV CL,byte ptr [ESI + 0x4]
0053317e  f6c108  TEST CL,0x8
00533181  742c  JZ 0x005331af
00533183  f30f104208  MOVSS XMM0,dword ptr [EDX + 0x8]
00533188  f30f5c02  SUBSS XMM0,dword ptr [EDX]
0053318c  f30f584008  ADDSS XMM0,dword ptr [EAX + 0x8]
00533191  f30f114008  MOVSS dword ptr [EAX + 0x8],XMM0
00533196  f6460404  TEST byte ptr [ESI + 0x4],0x4
0053319a  7532  JNZ 0x005331ce
0053319c  f30f104208  MOVSS XMM0,dword ptr [EDX + 0x8]
005331a1  f30f5c02  SUBSS XMM0,dword ptr [EDX]
005331a5  f30f5800  ADDSS XMM0,dword ptr [EAX]
005331a9  f30f1100  MOVSS dword ptr [EAX],XMM0
005331ad  eb1f  JMP 0x005331ce
005331af  f6c104  TEST CL,0x4
005331b2  751a  JNZ 0x005331ce
005331b4  f30f1000  MOVSS XMM0,dword ptr [EAX]
005331b8  f30f5c02  SUBSS XMM0,dword ptr [EDX]
005331bc  f30f1100  MOVSS dword ptr [EAX],XMM0
005331c0  f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
005331c5  f30f5c02  SUBSS XMM0,dword ptr [EDX]
005331c9  f30f114008  MOVSS dword ptr [EAX + 0x8],XMM0
005331ce  8a4e04  MOV CL,byte ptr [ESI + 0x4]
005331d1  f6c102  TEST CL,0x2
005331d4  7432  JZ 0x00533208
005331d6  f30f10420c  MOVSS XMM0,dword ptr [EDX + 0xc]
005331db  f30f5c4204  SUBSS XMM0,dword ptr [EDX + 0x4]
005331e0  f30f58400c  ADDSS XMM0,dword ptr [EAX + 0xc]
005331e5  f30f11400c  MOVSS dword ptr [EAX + 0xc],XMM0
005331ea  f6460401  TEST byte ptr [ESI + 0x4],0x1
005331ee  753b  JNZ 0x0053322b
005331f0  f30f10420c  MOVSS XMM0,dword ptr [EDX + 0xc]
005331f5  f30f5c4204  SUBSS XMM0,dword ptr [EDX + 0x4]
005331fa  f30f584004  ADDSS XMM0,dword ptr [EAX + 0x4]
005331ff  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00533204  5e  POP ESI
00533205  c20800  RET 0x8
00533208  f6c101  TEST CL,0x1
0053320b  751e  JNZ 0x0053322b
0053320d  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
00533212  f30f5c4204  SUBSS XMM0,dword ptr [EDX + 0x4]
00533217  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
0053321c  f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
00533221  f30f5c4204  SUBSS XMM0,dword ptr [EDX + 0x4]
00533226  f30f11400c  MOVSS dword ptr [EAX + 0xc],XMM0
0053322b  5e  POP ESI
0053322c  c20800  RET 0x8
