# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10a90966..10a909da; CAW_TruncateX87ValueToInt64
10a90966: 55  PUSH EBP
10a90967: 8bec  MOV EBP,ESP
10a90969: 83ec20  SUB ESP,0x20
10a9096c: 83e4f0  AND ESP,0xfffffff0
10a9096f: d9c0  FLD ST0
10a90971: d9542418  FST float ptr [ESP + 0x18]
10a90975: df7c2410  FISTP qword ptr [ESP + 0x10]
10a90979: df6c2410  FILD qword ptr [ESP + 0x10]
10a9097d: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
10a90981: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
10a90985: 85c0  TEST EAX,EAX
10a90987: 743c  JZ 0x10a909c5
10a90989: dee9  FSUBP
10a9098b: 85d2  TEST EDX,EDX
10a9098d: 791e  JNS 0x10a909ad
10a9098f: d91c24  FSTP float ptr [ESP]
10a90992: 8b0c24  MOV ECX,dword ptr [ESP]
10a90995: 81f100000080  XOR ECX,0x80000000
10a9099b: 81c1ffffff7f  ADD ECX,0x7fffffff
10a909a1: 83d000  ADC EAX,0x0
10a909a4: 8b542414  MOV EDX,dword ptr [ESP + 0x14]
10a909a8: 83d200  ADC EDX,0x0
10a909ab: eb2c  JMP 0x10a909d9
10a909ad: d91c24  FSTP float ptr [ESP]
10a909b0: 8b0c24  MOV ECX,dword ptr [ESP]
10a909b3: 81c1ffffff7f  ADD ECX,0x7fffffff
10a909b9: 83d800  SBB EAX,0x0
10a909bc: 8b542414  MOV EDX,dword ptr [ESP + 0x14]
10a909c0: 83da00  SBB EDX,0x0
10a909c3: eb14  JMP 0x10a909d9
10a909c5: 8b542414  MOV EDX,dword ptr [ESP + 0x14]
10a909c9: f7c2ffffff7f  TEST EDX,0x7fffffff
10a909cf: 75b8  JNZ 0x10a90989
10a909d1: d95c2418  FSTP float ptr [ESP + 0x18]
10a909d5: d95c2418  FSTP float ptr [ESP + 0x18]
10a909d9: c9  LEAVE
10a909da: c3  RET
