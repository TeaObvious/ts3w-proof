# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: LotFloorFootprint_Construct
Paired actual annotated Ghidra pseudocode: 008077D0_LotFloorFootprint_Construct.c
Owned ranges: [[008077d0, 00807833]]
Envelope bytes=100

GHIDRA LISTING (original bytes; nonowned gaps explicit)
008077d0  53  PUSH EBX
008077d1  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
008077d5  83fb1f  CMP EBX,0x1f
008077d8  0f95c0  SETNZ AL
008077db  56  PUSH ESI
008077dc  57  PUSH EDI
008077dd  8bf1  MOV ESI,ECX
008077df  50  PUSH EAX
008077e0  6a01  PUSH 0x1
008077e2  e869730000  CALL 0x0080eb50
008077e7  8a4c2414  MOV CL,byte ptr [ESP + 0x14]
008077eb  c70698cdfe00  MOV dword ptr [ESI],0xfecd98
008077f1  c7460470cdfe00  MOV dword ptr [ESI + 0x4],0xfecd70
008077f8  c7464000000000  MOV dword ptr [ESI + 0x40],0x0
008077ff  885e35  MOV byte ptr [ESI + 0x35],BL
00807802  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00807806  884e36  MOV byte ptr [ESI + 0x36],CL
00807809  8b7e40  MOV EDI,dword ptr [ESI + 0x40]
0080780c  3bdf  CMP EBX,EDI
0080780e  741c  JZ 0x0080782c
00807810  85db  TEST EBX,EBX
00807812  7408  JZ 0x0080781c
00807814  8b13  MOV EDX,dword ptr [EBX]
00807816  8b02  MOV EAX,dword ptr [EDX]
00807818  8bcb  MOV ECX,EBX
0080781a  ffd0  CALL EAX
0080781c  85ff  TEST EDI,EDI
0080781e  895e40  MOV dword ptr [ESI + 0x40],EBX
00807821  7409  JZ 0x0080782c
00807823  8b17  MOV EDX,dword ptr [EDI]
00807825  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00807828  8bcf  MOV ECX,EDI
0080782a  ffd0  CALL EAX
0080782c  5f  POP EDI
0080782d  8bc6  MOV EAX,ESI
0080782f  5e  POP ESI
00807830  5b  POP EBX
00807831  c20c00  RET 0xc
Owned instructions=38 owned bytes=100 nonowned bytes=0
