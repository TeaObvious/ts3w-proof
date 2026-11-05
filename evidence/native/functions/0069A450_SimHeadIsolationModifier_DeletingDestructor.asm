# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: SimHeadIsolationModifier_DeletingDestructor
; Owned ranges: [[0069a450, 0069a482]]
; Actual entry PLATE: Static PC1.67: ECX modifier, one stack flag byte, EAX=this, RET4. Restores vptr00FF409C, releases nonnull retained model+8 through its virtual+4, stores basevptr00FA2B80, and calls memory free only when flags bit0 is set. Does not clear or replace the model before that release, invent flag meanings or modify original bytes/ABI. This is the actual deleting-destructor order, not a no-op retirement.

0069a450  56  PUSH ESI
0069a451  8bf1  MOV ESI,ECX
0069a453  c7069c40ff00  MOV dword ptr [ESI],0xff409c
0069a459  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0069a45c  85c9  TEST ECX,ECX
0069a45e  7407  JZ 0x0069a467
0069a460  8b01  MOV EAX,dword ptr [ECX]
0069a462  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0069a465  ffd2  CALL EDX
0069a467  f644240801  TEST byte ptr [ESP + 0x8],0x1
0069a46c  c706802bfa00  MOV dword ptr [ESI],0xfa2b80
0069a472  7409  JZ 0x0069a47d
0069a474  56  PUSH ESI
0069a475  e866a0e4ff  CALL 0x004e44e0
0069a47a  83c404  ADD ESP,0x4
0069a47d  8bc6  MOV EAX,ESI
0069a47f  5e  POP ESI
0069a480  c20400  RET 0x4
