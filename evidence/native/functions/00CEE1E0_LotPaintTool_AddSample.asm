# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotPaintTool_AddSample(void * this, TerrainPaintSampleInput * sample)
Owned ranges: [[00cee1e0, 00cee3c1]]

00cee1e0  55  PUSH EBP
00cee1e1  8bec  MOV EBP,ESP
00cee1e3  83e4f0  AND ESP,0xfffffff0
00cee1e6  83ec64  SUB ESP,0x64
00cee1e9  53  PUSH EBX
00cee1ea  56  PUSH ESI
00cee1eb  8bf1  MOV ESI,ECX
00cee1ed  80bef000000000  CMP byte ptr [ESI + 0xf0],0x0
00cee1f4  57  PUSH EDI
00cee1f5  0f844a010000  JZ 0x00cee345
00cee1fb  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
00cee1fe  807f0800  CMP byte ptr [EDI + 0x8],0x0
00cee202  0f843d010000  JZ 0x00cee345
00cee208  f30f101544310801  MOVSS XMM2,dword ptr [0x01083144]
00cee210  f30f2a07  CVTSI2SS XMM0,dword ptr [EDI]
00cee214  f30f2a4f04  CVTSI2SS XMM1,dword ptr [EDI + 0x4]
00cee219  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00cee21c  f30f59c2  MULSS XMM0,XMM2
00cee220  f30f59ca  MULSS XMM1,XMM2
00cee224  0f57d2  XORPS XMM2,XMM2
00cee227  33d2  XOR EDX,EDX
00cee229  0f2fd0  COMISS XMM2,XMM0
00cee22c  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00cee232  f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
00cee238  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00cee23c  7609  JBE 0x00cee247
00cee23e  0f28c2  MOVAPS XMM0,XMM2
00cee241  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00cee247  f30f2a9874010000  CVTSI2SS XMM3,dword ptr [EAX + 0x174]
00cee24f  0f2fc3  COMISS XMM0,XMM3
00cee252  7606  JBE 0x00cee25a
00cee254  f30f115c2424  MOVSS dword ptr [ESP + 0x24],XMM3
00cee25a  0f2fd1  COMISS XMM2,XMM1
00cee25d  7609  JBE 0x00cee268
00cee25f  0f28ca  MOVAPS XMM1,XMM2
00cee262  f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
00cee268  f30f2a8078010000  CVTSI2SS XMM0,dword ptr [EAX + 0x178]
00cee270  0f2fc8  COMISS XMM1,XMM0
00cee273  7606  JBE 0x00cee27b
00cee275  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00cee27b  8b887c010000  MOV ECX,dword ptr [EAX + 0x17c]
00cee281  85c9  TEST ECX,ECX
00cee283  7e06  JLE 0x00cee28b
00cee285  8bd1  MOV EDX,ECX
00cee287  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00cee28b  8b8080010000  MOV EAX,dword ptr [EAX + 0x180]
00cee291  3bd0  CMP EDX,EAX
00cee293  7e04  JLE 0x00cee299
00cee295  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00cee299  d9442428  FLD float ptr [ESP + 0x28]
00cee29d  db542414  FIST dword ptr [ESP + 0x14]
00cee2a1  db442414  FILD dword ptr [ESP + 0x14]
00cee2a5  dee9  FSUBP
00cee2a7  d95c2418  FSTP float ptr [ESP + 0x18]
00cee2ab  817c241801000080  CMP dword ptr [ESP + 0x18],0x80000001
00cee2b3  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00cee2b7  83d0ff  ADC EAX,-0x1
00cee2ba  8bc8  MOV ECX,EAX
00cee2bc  d9442424  FLD float ptr [ESP + 0x24]
00cee2c0  db542420  FIST dword ptr [ESP + 0x20]
00cee2c4  db442420  FILD dword ptr [ESP + 0x20]
00cee2c8  dee9  FSUBP
00cee2ca  d95c241c  FSTP float ptr [ESP + 0x1c]
00cee2ce  817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00cee2d6  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00cee2da  83d0ff  ADC EAX,-0x1
00cee2dd  8b5e34  MOV EBX,dword ptr [ESI + 0x34]
00cee2e0  88442410  MOV byte ptr [ESP + 0x10],AL
00cee2e4  8d442410  LEA EAX,[ESP + 0x10]
00cee2e8  884c2411  MOV byte ptr [ESP + 0x11],CL
00cee2ec  50  PUSH EAX
00cee2ed  8bcb  MOV ECX,EBX
00cee2ef  c644241600  MOV byte ptr [ESP + 0x16],0x0
00cee2f4  e877a6b7ff  CALL 0x00868970
00cee2f9  84c0  TEST AL,AL
00cee2fb  7453  JZ 0x00cee350
00cee2fd  6a01  PUSH 0x1
00cee2ff  6a0f  PUSH 0xf
00cee301  8d4c2418  LEA ECX,[ESP + 0x18]
00cee305  51  PUSH ECX
00cee306  8b8b90020000  MOV ECX,dword ptr [EBX + 0x290]
00cee30c  e87ffdd9ff  CALL 0x00a8e090
00cee311  84c0  TEST AL,AL
00cee313  743b  JZ 0x00cee350
00cee315  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00cee318  8d542410  LEA EDX,[ESP + 0x10]
00cee31c  52  PUSH EDX
00cee31d  50  PUSH EAX
00cee31e  68d7000000  PUSH 0xd7
00cee323  8d4c243c  LEA ECX,[ESP + 0x3c]
00cee327  e83486deff  CALL 0x00ad6960
00cee32c  8d4c2430  LEA ECX,[ESP + 0x30]
00cee330  51  PUSH ECX
00cee331  8d8e24010000  LEA ECX,[ESI + 0x124]
00cee337  e834a2deff  CALL 0x00ad8570
00cee33c  8d4c2430  LEA ECX,[ESP + 0x30]
00cee340  e88b8ddeff  CALL 0x00ad70d0
00cee345  32c0  XOR AL,AL
00cee347  5f  POP EDI
00cee348  5e  POP ESI
00cee349  5b  POP EBX
00cee34a  8be5  MOV ESP,EBP
00cee34c  5d  POP EBP
00cee34d  c20400  RET 0x4
00cee350  0fb64708  MOVZX EAX,byte ptr [EDI + 0x8]
00cee354  f30f104754  MOVSS XMM0,dword ptr [EDI + 0x54]
00cee359  f30f594750  MULSS XMM0,dword ptr [EDI + 0x50]
00cee35e  8b574c  MOV EDX,dword ptr [EDI + 0x4c]
00cee361  f30f594220  MULSS XMM0,dword ptr [EDX + 0x20]
00cee366  f30f2ac8  CVTSI2SS XMM1,EAX
00cee36a  f30f59c1  MULSS XMM0,XMM1
00cee36e  0f2f053441fa00  COMISS XMM0,dword ptr [0x00fa4134]
00cee375  7207  JC 0x00cee37e
00cee377  c6442420ff  MOV byte ptr [ESP + 0x20],0xff
00cee37c  eb10  JMP 0x00cee38e
00cee37e  0f57c9  XORPS XMM1,XMM1
00cee381  0f2fc8  COMISS XMM1,XMM0
00cee384  77bf  JA 0x00cee345
00cee386  f30f2cc8  CVTTSS2SI ECX,XMM0
00cee38a  884c2420  MOV byte ptr [ESP + 0x20],CL
00cee38e  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00cee392  8b8eb0010000  MOV ECX,dword ptr [ESI + 0x1b0]
00cee398  8d86f0000000  LEA EAX,[ESI + 0xf0]
00cee39e  50  PUSH EAX
00cee39f  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00cee3a2  6a01  PUSH 0x1
00cee3a4  52  PUSH EDX
00cee3a5  8b17  MOV EDX,dword ptr [EDI]
00cee3a7  50  PUSH EAX
00cee3a8  8b8690000000  MOV EAX,dword ptr [ESI + 0x90]
00cee3ae  52  PUSH EDX
00cee3af  8b5634  MOV EDX,dword ptr [ESI + 0x34]
00cee3b2  50  PUSH EAX
00cee3b3  52  PUSH EDX
00cee3b4  e8f7600300  CALL 0x00d244b0
00cee3b9  5f  POP EDI
00cee3ba  5e  POP ESI
00cee3bb  5b  POP EBX
00cee3bc  8be5  MOV ESP,EBP
00cee3be  5d  POP EBP
00cee3bf  c20400  RET 0x4
