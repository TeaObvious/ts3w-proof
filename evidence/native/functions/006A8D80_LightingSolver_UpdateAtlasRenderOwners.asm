# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightingSolver_UpdateAtlasRenderOwners
; Owned ranges: [[006a8d80, 006a8df7]]
; Actual entry PLATE: Static PC1.67: ECX solver, stack+4 pointer and stack+8 float, RET8. If byte solver+280 is0 calls6A7ED0. Updates nested virtual render owners and conditional resource/render state, without direct allocator offset/limit/stride stores. Listing reloads the same stack float before second virtual call; decompiler unaff_retaddr presentation is not a proven uninitialized read. Opaque descendants are not inferred initializers.

006a8d80  56  PUSH ESI
006a8d81  8bf1  MOV ESI,ECX
006a8d83  80be8002000000  CMP byte ptr [ESI + 0x280],0x0
006a8d8a  57  PUSH EDI
006a8d8b  7505  JNZ 0x006a8d92
006a8d8d  e83ef1ffff  CALL 0x006a7ed0
006a8d92  83be8800000000  CMP dword ptr [ESI + 0x88],0x0
006a8d99  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
006a8d9d  7c34  JL 0x006a8dd3
006a8d9f  8b8690020000  MOV EAX,dword ptr [ESI + 0x290]
006a8da5  d9442410  FLD float ptr [ESP + 0x10]
006a8da9  8b500c  MOV EDX,dword ptr [EAX + 0xc]
006a8dac  8d8e90020000  LEA ECX,[ESI + 0x290]
006a8db2  51  PUSH ECX
006a8db3  d91c24  FSTP float ptr [ESP]
006a8db6  57  PUSH EDI
006a8db7  ffd2  CALL EDX
006a8db9  d9442410  FLD float ptr [ESP + 0x10]
006a8dbd  8b86e8020000  MOV EAX,dword ptr [ESI + 0x2e8]
006a8dc3  8b500c  MOV EDX,dword ptr [EAX + 0xc]
006a8dc6  8d8ee8020000  LEA ECX,[ESI + 0x2e8]
006a8dcc  51  PUSH ECX
006a8dcd  d91c24  FSTP float ptr [ESP]
006a8dd0  57  PUSH EDI
006a8dd1  ffd2  CALL EDX
006a8dd3  83be3c02000000  CMP dword ptr [ESI + 0x23c],0x0
006a8dda  7417  JZ 0x006a8df3
006a8ddc  8bce  MOV ECX,ESI
006a8dde  e80dbaffff  CALL 0x006a47f0
006a8de3  d9442410  FLD float ptr [ESP + 0x10]
006a8de7  51  PUSH ECX
006a8de8  d91c24  FSTP float ptr [ESP]
006a8deb  57  PUSH EDI
006a8dec  8bce  MOV ECX,ESI
006a8dee  e89dfcffff  CALL 0x006a8a90
006a8df3  5f  POP EDI
006a8df4  5e  POP ESI
006a8df5  c20800  RET 0x8
