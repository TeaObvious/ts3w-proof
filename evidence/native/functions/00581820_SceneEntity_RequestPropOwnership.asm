# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SceneEntity_RequestPropOwnership
Paired actual annotated Ghidra pseudocode: 00581820_SceneEntity_RequestPropOwnership.c
Owned ranges: [[00581820, 0058186d]]
Envelope bytes=78

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00581820  8a442404  MOV AL,byte ptr [ESP + 0x4]
00581824  84c0  TEST AL,AL
00581826  7410  JZ 0x00581838
00581828  8b510c  MOV EDX,dword ptr [ECX + 0xc]
0058182b  83e201  AND EDX,0x1
0058182e  80fa01  CMP DL,0x1
00581831  7405  JZ 0x00581838
00581833  32c0  XOR AL,AL
00581835  c20400  RET 0x4
00581838  8b5110  MOV EDX,dword ptr [ECX + 0x10]
0058183b  0b5114  OR EDX,dword ptr [ECX + 0x14]
0058183e  7418  JZ 0x00581858
00581840  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00581843  83e102  AND ECX,0x2
00581846  80f902  CMP CL,0x2
00581849  0f94c2  SETZ DL
0058184c  33c9  XOR ECX,ECX
0058184e  3ac2  CMP AL,DL
00581850  0f94c1  SETZ CL
00581853  8ac1  MOV AL,CL
00581855  c20400  RET 0x4
00581858  84c0  TEST AL,AL
0058185a  7409  JZ 0x00581865
0058185c  83490c02  OR dword ptr [ECX + 0xc],0x2
00581860  b001  MOV AL,0x1
00581862  c20400  RET 0x4
00581865  83610cfd  AND dword ptr [ECX + 0xc],0xfffffffd
00581869  b001  MOV AL,0x1
0058186b  c20400  RET 0x4
Owned instructions=29 owned bytes=78 gap/nonowned bytes=0
