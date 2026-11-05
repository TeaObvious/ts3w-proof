# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneGeometrySources_ReplaceBoundSource
Paired annotated actual pseudocode: 006DB570_SceneGeometrySources_ReplaceBoundSource.c
Owned ranges: [[006db570, 006db5c2]]

GHIDRA LISTING (original bytes)
006db570  56  PUSH ESI
006db571  8bf1  MOV ESI,ECX
006db573  8b4e38  MOV ECX,dword ptr [ESI + 0x38]
006db576  85c9  TEST ECX,ECX
006db578  57  PUSH EDI
006db579  7407  JZ 0x006db582
006db57b  8b01  MOV EAX,dword ptr [ECX]
006db57d  8b5004  MOV EDX,dword ptr [EAX + 0x4]
006db580  ffd2  CALL EDX
006db582  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
006db586  85ff  TEST EDI,EDI
006db588  897e38  MOV dword ptr [ESI + 0x38],EDI
006db58b  7408  JZ 0x006db595
006db58d  8b07  MOV EAX,dword ptr [EDI]
006db58f  8b10  MOV EDX,dword ptr [EAX]
006db591  8bcf  MOV ECX,EDI
006db593  ffd2  CALL EDX
006db595  8b06  MOV EAX,dword ptr [ESI]
006db597  a803  TEST AL,0x3
006db599  750c  JNZ 0x006db5a7
006db59b  8b0e  MOV ECX,dword ptr [ESI]
006db59d  85c9  TEST ECX,ECX
006db59f  7406  JZ 0x006db5a7
006db5a1  57  PUSH EDI
006db5a2  e81950ffff  CALL 0x006d05c0
006db5a7  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006db5aa  f6c103  TEST CL,0x3
006db5ad  750f  JNZ 0x006db5be
006db5af  837e0800  CMP dword ptr [ESI + 0x8],0x0
006db5b3  7409  JZ 0x006db5be
006db5b5  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006db5b8  57  PUSH EDI
006db5b9  e8e2f5ffff  CALL 0x006daba0
006db5be  5f  POP EDI
006db5bf  5e  POP ESI
006db5c0  c20400  RET 0x4
Owned instructions=36 owned bytes=83 envelope bytes=83
