# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00C456B0_FUN_00c456b0.c
Body [[00c456b0, 00c45749]]; envelope exclusive end 00c4574a

GHIDRA LISTING (original bytes)
00c456b0  83ec18  SUB ESP,0x18
00c456b3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c456b7  8b08  MOV ECX,dword ptr [EAX]
00c456b9  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c456bc  890c24  MOV dword ptr [ESP],ECX
00c456bf  8b480c  MOV ECX,dword ptr [EAX + 0xc]
00c456c2  894c240c  MOV dword ptr [ESP + 0xc],ECX
00c456c6  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00c456c9  894c2410  MOV dword ptr [ESP + 0x10],ECX
00c456cd  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00c456d1  f30f1001  MOVSS XMM0,dword ptr [ECX]
00c456d5  89542404  MOV dword ptr [ESP + 0x4],EDX
00c456d9  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00c456dc  8b4014  MOV EAX,dword ptr [EAX + 0x14]
00c456df  0f28c8  MOVAPS XMM1,XMM0
00c456e2  f30f580c24  ADDSS XMM1,dword ptr [ESP]
00c456e7  f30f5844240c  ADDSS XMM0,dword ptr [ESP + 0xc]
00c456ed  f30f110c24  MOVSS dword ptr [ESP],XMM1
00c456f2  f30f104904  MOVSS XMM1,dword ptr [ECX + 0x4]
00c456f7  8b4908  MOV ECX,dword ptr [ECX + 0x8]
00c456fa  03d1  ADD EDX,ECX
00c456fc  56  PUSH ESI
00c456fd  8b742404  MOV ESI,dword ptr [ESP + 0x4]
00c45701  03c1  ADD EAX,ECX
00c45703  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c45707  0f28d1  MOVAPS XMM2,XMM1
00c4570a  f30f58542408  ADDSS XMM2,dword ptr [ESP + 0x8]
00c45710  f30f584c2414  ADDSS XMM1,dword ptr [ESP + 0x14]
00c45716  8931  MOV dword ptr [ECX],ESI
00c45718  f30f11542408  MOVSS dword ptr [ESP + 0x8],XMM2
00c4571e  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c45722  897104  MOV dword ptr [ECX + 0x4],ESI
00c45725  895108  MOV dword ptr [ECX + 0x8],EDX
00c45728  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c4572e  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00c45732  89510c  MOV dword ptr [ECX + 0xc],EDX
00c45735  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
00c4573b  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c4573f  895110  MOV dword ptr [ECX + 0x10],EDX
00c45742  894114  MOV dword ptr [ECX + 0x14],EAX
00c45745  5e  POP ESI
00c45746  83c418  ADD ESP,0x18
00c45749  c3  RET
