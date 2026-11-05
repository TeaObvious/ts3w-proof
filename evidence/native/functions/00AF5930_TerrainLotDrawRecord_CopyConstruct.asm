# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: TerrainLotDrawRecord_CopyConstruct
Paired annotated actual pseudocode: 00AF5930_TerrainLotDrawRecord_CopyConstruct.c
Owned ranges: [[00af5930, 00af59cd]]

GHIDRA LISTING (original bytes)
00af5930  53  PUSH EBX
00af5931  55  PUSH EBP
00af5932  56  PUSH ESI
00af5933  8bf1  MOV ESI,ECX
00af5935  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
00af593c  57  PUSH EDI
00af593d  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00af5941  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00af5944  894608  MOV dword ptr [ESI + 0x8],EAX
00af5947  8b5f0c  MOV EBX,dword ptr [EDI + 0xc]
00af594a  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
00af594d  3bdd  CMP EBX,EBP
00af594f  741d  JZ 0x00af596e
00af5951  85db  TEST EBX,EBX
00af5953  7408  JZ 0x00af595d
00af5955  8b13  MOV EDX,dword ptr [EBX]
00af5957  8b02  MOV EAX,dword ptr [EDX]
00af5959  8bcb  MOV ECX,EBX
00af595b  ffd0  CALL EAX
00af595d  85ed  TEST EBP,EBP
00af595f  895e0c  MOV dword ptr [ESI + 0xc],EBX
00af5962  740a  JZ 0x00af596e
00af5964  8b5500  MOV EDX,dword ptr [EBP]
00af5967  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00af596a  8bcd  MOV ECX,EBP
00af596c  ffd0  CALL EAX
00af596e  8b4f18  MOV ECX,dword ptr [EDI + 0x18]
00af5971  894e18  MOV dword ptr [ESI + 0x18],ECX
00af5974  8b5710  MOV EDX,dword ptr [EDI + 0x10]
00af5977  895610  MOV dword ptr [ESI + 0x10],EDX
00af597a  8b4714  MOV EAX,dword ptr [EDI + 0x14]
00af597d  8a5620  MOV DL,byte ptr [ESI + 0x20]
00af5980  894614  MOV dword ptr [ESI + 0x14],EAX
00af5983  8b4f1c  MOV ECX,dword ptr [EDI + 0x1c]
00af5986  894e1c  MOV dword ptr [ESI + 0x1c],ECX
00af5989  d907  FLD float ptr [EDI]
00af598b  d91e  FSTP float ptr [ESI]
00af598d  d94704  FLD float ptr [EDI + 0x4]
00af5990  d95e04  FSTP float ptr [ESI + 0x4]
00af5993  325720  XOR DL,byte ptr [EDI + 0x20]
00af5996  80e201  AND DL,0x1
00af5999  305620  XOR byte ptr [ESI + 0x20],DL
00af599c  8a4e20  MOV CL,byte ptr [ESI + 0x20]
00af599f  8a4720  MOV AL,byte ptr [EDI + 0x20]
00af59a2  32c1  XOR AL,CL
00af59a4  2402  AND AL,0x2
00af59a6  32c1  XOR AL,CL
00af59a8  884620  MOV byte ptr [ESI + 0x20],AL
00af59ab  8a4f20  MOV CL,byte ptr [EDI + 0x20]
00af59ae  32c8  XOR CL,AL
00af59b0  80e108  AND CL,0x8
00af59b3  32c8  XOR CL,AL
00af59b5  884e20  MOV byte ptr [ESI + 0x20],CL
00af59b8  0fb64720  MOVZX EAX,byte ptr [EDI + 0x20]
00af59bc  32c1  XOR AL,CL
00af59be  2404  AND AL,0x4
00af59c0  32c1  XOR AL,CL
00af59c2  5f  POP EDI
00af59c3  884620  MOV byte ptr [ESI + 0x20],AL
00af59c6  8bc6  MOV EAX,ESI
00af59c8  5e  POP ESI
00af59c9  5d  POP EBP
00af59ca  5b  POP EBX
00af59cb  c20400  RET 0x4
Owned instructions=64 owned bytes=158 envelope bytes=158
