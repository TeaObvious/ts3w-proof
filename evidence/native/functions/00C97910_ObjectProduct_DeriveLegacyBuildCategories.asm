# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectProduct_DeriveLegacyBuildCategories
Paired actual annotated Ghidra pseudocode: 00C97910_ObjectProduct_DeriveLegacyBuildCategories.c
Owned ranges: [[00c97910, 00c97994]]
Envelope bytes=133

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c97910  8b91d0000000  MOV EDX,dword ptr [ECX + 0xd0]
00c97916  81fa00000080  CMP EDX,0x80000000
00c9791c  7404  JZ 0x00c97922
00c9791e  85d2  TEST EDX,EDX
00c97920  7572  JNZ 0x00c97994
00c97922  8b8198000000  MOV EAX,dword ptr [ECX + 0x98]
00c97928  a808  TEST AL,0x8
00c9792a  7409  JZ 0x00c97935
00c9792c  83ca02  OR EDX,0x2
00c9792f  8991d0000000  MOV dword ptr [ECX + 0xd0],EDX
00c97935  a810  TEST AL,0x10
00c97937  7407  JZ 0x00c97940
00c97939  8389d000000004  OR dword ptr [ECX + 0xd0],0x4
00c97940  a820  TEST AL,0x20
00c97942  7407  JZ 0x00c9794b
00c97944  8389d000000008  OR dword ptr [ECX + 0xd0],0x8
00c9794b  84c0  TEST AL,AL
00c9794d  7907  JNS 0x00c97956
00c9794f  8389d000000020  OR dword ptr [ECX + 0xd0],0x20
00c97956  a900080000  TEST EAX,0x800
00c9795b  7407  JZ 0x00c97964
00c9795d  8389d000000040  OR dword ptr [ECX + 0xd0],0x40
00c97964  a900100000  TEST EAX,0x1000
00c97969  740a  JZ 0x00c97975
00c9796b  8189d000000080000000  OR dword ptr [ECX + 0xd0],0x80
00c97975  a900200000  TEST EAX,0x2000
00c9797a  740a  JZ 0x00c97986
00c9797c  8189d000000000020000  OR dword ptr [ECX + 0xd0],0x200
00c97986  a900400000  TEST EAX,0x4000
00c9798b  7407  JZ 0x00c97994
00c9798d  8389d000000010  OR dword ptr [ECX + 0xd0],0x10
00c97994  c3  RET
Owned instructions=32 owned bytes=133 nonowned bytes=0
