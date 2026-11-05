# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ModularStairs_CountQuarterStepsAndWidth
Paired actual annotated Ghidra pseudocode: 00AFC420_ModularStairs_CountQuarterStepsAndWidth.c
Owned ranges: [[00afc420, 00afc562]]
Envelope bytes=323

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00afc420  55  PUSH EBP
00afc421  8bec  MOV EBP,ESP
00afc423  83e4f8  AND ESP,0xfffffff8
00afc426  83ec10  SUB ESP,0x10
00afc429  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00afc42c  f30f1000  MOVSS XMM0,dword ptr [EAX]
00afc430  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00afc433  f30f5c01  SUBSS XMM0,dword ptr [ECX]
00afc437  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00afc43d  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
00afc442  f30f5c4104  SUBSS XMM0,dword ptr [ECX + 0x4]
00afc447  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00afc44b  f30f110424  MOVSS dword ptr [ESP],XMM0
00afc450  8b0424  MOV EAX,dword ptr [ESP]
00afc453  25ffffff7f  AND EAX,0x7fffffff
00afc458  890424  MOV dword ptr [ESP],EAX
00afc45b  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00afc45e  81e2ffffff7f  AND EDX,0x7fffffff
00afc464  83f806  CMP EAX,0x6
00afc467  89542404  MOV dword ptr [ESP + 0x4],EDX
00afc46b  0f87ba000000  JA 0x00afc52b
00afc471  ff248564c5af00  JMP dword ptr [EAX*0x4 + 0xafc564]
00afc478  f30f100c24  MOVSS XMM1,dword ptr [ESP]
00afc47d  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00afc483  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00afc486  8b5520  MOV EDX,dword ptr [EBP + 0x20]
00afc489  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00afc48f  0f57c9  XORPS XMM1,XMM1
00afc492  f30f1109  MOVSS dword ptr [ECX],XMM1
00afc496  f30f100d18b2fa00  MOVSS XMM1,dword ptr [0x00fab218]
00afc49e  f30f110a  MOVSS dword ptr [EDX],XMM1
00afc4a2  e98a000000  JMP 0x00afc531
00afc4a7  f30f100c24  MOVSS XMM1,dword ptr [ESP]
00afc4ac  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00afc4b2  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
00afc4b5  8b4d20  MOV ECX,dword ptr [EBP + 0x20]
00afc4b8  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00afc4be  0f57c9  XORPS XMM1,XMM1
00afc4c1  f30f1108  MOVSS dword ptr [EAX],XMM1
00afc4c5  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00afc4cd  f30f1109  MOVSS dword ptr [ECX],XMM1
00afc4d1  eb5e  JMP 0x00afc531
00afc4d3  f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00afc4d9  8b551c  MOV EDX,dword ptr [EBP + 0x1c]
00afc4dc  8b4520  MOV EAX,dword ptr [EBP + 0x20]
00afc4df  f30f100424  MOVSS XMM0,dword ptr [ESP]
00afc4e4  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00afc4ea  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00afc4f2  f30f110a  MOVSS dword ptr [EDX],XMM1
00afc4f6  0f57c9  XORPS XMM1,XMM1
00afc4f9  f30f1108  MOVSS dword ptr [EAX],XMM1
00afc4fd  eb32  JMP 0x00afc531
00afc4ff  f30f104c2404  MOVSS XMM1,dword ptr [ESP + 0x4]
00afc505  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00afc508  8b5520  MOV EDX,dword ptr [EBP + 0x20]
00afc50b  f30f100424  MOVSS XMM0,dword ptr [ESP]
00afc510  f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
00afc516  f30f100d18b2fa00  MOVSS XMM1,dword ptr [0x00fab218]
00afc51e  f30f1109  MOVSS dword ptr [ECX],XMM1
00afc522  0f57c9  XORPS XMM1,XMM1
00afc525  f30f110a  MOVSS dword ptr [EDX],XMM1
00afc529  eb06  JMP 0x00afc531
00afc52b  f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00afc531  f30f59057c3ffb00  MULSS XMM0,dword ptr [0x00fb3f7c]
00afc539  f30f110424  MOVSS dword ptr [ESP],XMM0
00afc53e  d90424  FLD float ptr [ESP]
00afc541  df7c2408  FISTP qword ptr [ESP + 0x8]
00afc545  8b4514  MOV EAX,dword ptr [EBP + 0x14]
00afc548  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00afc54c  8908  MOV dword ptr [EAX],ECX
00afc54e  d9442404  FLD float ptr [ESP + 0x4]
00afc552  df7c2408  FISTP qword ptr [ESP + 0x8]
00afc556  8b5518  MOV EDX,dword ptr [EBP + 0x18]
00afc559  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00afc55d  8902  MOV dword ptr [EDX],EAX
00afc55f  8be5  MOV ESP,EBP
00afc561  5d  POP EBP
00afc562  c3  RET
Owned instructions=78 owned bytes=323 nonowned bytes=0
