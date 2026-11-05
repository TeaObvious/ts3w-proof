# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function WorldSurface_TestGroundAdmission 00c6b8f0..00c6b9f7; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=cec26f0277f7c8928cc1fbefd4809e4db6344984e733484b5e306f43248cebb7
; PC 1.67 original: ECX world, two float stack words, RET 8; AL boolean. Checks lower-inclusive X/Z and upper-exclusive X/world+C0+C4 bounds. Optional terrain +0x54 lookup 008C2C70 and C209C0 material test at threshold 0.5 can require containing-lot membership. Coordinate conversion uses inherited-rounding x87 FIST then float residual sign-bit adjustment, not an asserted floor or truncation. Child material/resource semantics beyond these calls remain bounded to the inspected instructions.
00c6b8f0: f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00c6b8f6: 83ec14  SUB ESP,0x14
00c6b8f9: 56  PUSH ESI
00c6b8fa: 8bf1  MOV ESI,ECX
00c6b8fc: 0f2f8eb4000000  COMISS XMM1,dword ptr [ESI + 0xb4]
00c6b903: 7231  JC 0x00c6b936
00c6b905: f30f10442420  MOVSS XMM0,dword ptr [ESP + 0x20]
00c6b90b: 0f2f86b8000000  COMISS XMM0,dword ptr [ESI + 0xb8]
00c6b912: 7222  JC 0x00c6b936
00c6b914: f30f1096bc000000  MOVSS XMM2,dword ptr [ESI + 0xbc]
00c6b91c: 0f2fd1  COMISS XMM2,XMM1
00c6b91f: 7615  JBE 0x00c6b936
00c6b921: f30f108ec4000000  MOVSS XMM1,dword ptr [ESI + 0xc4]
00c6b929: f30f588ec0000000  ADDSS XMM1,dword ptr [ESI + 0xc0]
00c6b931: 0f2fc8  COMISS XMM1,XMM0
00c6b934: 7709  JA 0x00c6b93f
00c6b936: 32c0  XOR AL,AL
00c6b938: 5e  POP ESI
00c6b939: 83c414  ADD ESP,0x14
00c6b93c: c20800  RET 0x8
00c6b93f: 8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00c6b942: 85c9  TEST ECX,ECX
00c6b944: 0f84a5000000  JZ 0x00c6b9ef
00c6b94a: e82173c5ff  CALL 0x008c2c70
00c6b94f: 8bc8  MOV ECX,EAX
00c6b951: 85c9  TEST ECX,ECX
00c6b953: 0f8496000000  JZ 0x00c6b9ef
00c6b959: 0f57c0  XORPS XMM0,XMM0
00c6b95c: 57  PUSH EDI
00c6b95d: f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00c6b963: d9442424  FLD float ptr [ESP + 0x24]
00c6b967: db54240c  FIST dword ptr [ESP + 0xc]
00c6b96b: db44240c  FILD dword ptr [ESP + 0xc]
00c6b96f: dee9  FSUBP
00c6b971: d95c2410  FSTP float ptr [ESP + 0x10]
00c6b975: 817c241001000080  CMP dword ptr [ESP + 0x10],0x80000001
00c6b97d: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c6b981: 83d0ff  ADC EAX,-0x1
00c6b984: 8bd0  MOV EDX,EAX
00c6b986: d9442420  FLD float ptr [ESP + 0x20]
00c6b98a: db542418  FIST dword ptr [ESP + 0x18]
00c6b98e: db442418  FILD dword ptr [ESP + 0x18]
00c6b992: dee9  FSUBP
00c6b994: d95c2414  FSTP float ptr [ESP + 0x14]
00c6b998: 817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00c6b9a0: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c6b9a4: 83d0ff  ADC EAX,-0x1
00c6b9a7: 8d7c2408  LEA EDI,[ESP + 0x8]
00c6b9ab: 57  PUSH EDI
00c6b9ac: 6a00  PUSH 0x0
00c6b9ae: 52  PUSH EDX
00c6b9af: 50  PUSH EAX
00c6b9b0: e80b50fbff  CALL 0x00c209c0
00c6b9b5: 84c0  TEST AL,AL
00c6b9b7: 5f  POP EDI
00c6b9b8: 7435  JZ 0x00c6b9ef
00c6b9ba: f30f1005b4b5f900  MOVSS XMM0,dword ptr [0x00f9b5b4]
00c6b9c2: 0f2f442404  COMISS XMM0,dword ptr [ESP + 0x4]
00c6b9c7: 7726  JA 0x00c6b9ef
00c6b9c9: d9442420  FLD float ptr [ESP + 0x20]
00c6b9cd: 83ec08  SUB ESP,0x8
00c6b9d0: d95c2404  FSTP float ptr [ESP + 0x4]
00c6b9d4: 8bce  MOV ECX,ESI
00c6b9d6: d9442424  FLD float ptr [ESP + 0x24]
00c6b9da: d91c24  FSTP float ptr [ESP]
00c6b9dd: e8eecdffff  CALL 0x00c687d0
00c6b9e2: f7d8  NEG EAX
00c6b9e4: 1bc0  SBB EAX,EAX
00c6b9e6: f7d8  NEG EAX
00c6b9e8: 5e  POP ESI
00c6b9e9: 83c414  ADD ESP,0x14
00c6b9ec: c20800  RET 0x8
00c6b9ef: b001  MOV AL,0x1
00c6b9f1: 5e  POP ESI
00c6b9f2: 83c414  ADD ESP,0x14
00c6b9f5: c20800  RET 0x8
