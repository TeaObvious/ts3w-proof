# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightingSolver_UpdateRoomAtlasResources
; Owned ranges: [[006a82c0, 006a8368]]
; Actual entry PLATE: Static PC1.67: ECX solver input, no consumed stack argument or incoming EDX before overwrite, plain RET; stored fastcall analysis remains unchanged. If byte solver+280 is0 calls6A7ED0, then traverses retained room nodes and conditionally updates room/resource owners. No direct allocator offset/limit/stride initialization; opaque descendants remain separate.

006a82c0  83ec08  SUB ESP,0x8
006a82c3  55  PUSH EBP
006a82c4  56  PUSH ESI
006a82c5  57  PUSH EDI
006a82c6  8bf9  MOV EDI,ECX
006a82c8  80bf8002000000  CMP byte ptr [EDI + 0x280],0x0
006a82cf  7505  JNZ 0x006a82d6
006a82d1  e8fafbffff  CALL 0x006a7ed0
006a82d6  8b8738020000  MOV EAX,dword ptr [EDI + 0x238]
006a82dc  8b8f34020000  MOV ECX,dword ptr [EDI + 0x234]
006a82e2  8b1481  MOV EDX,dword ptr [ECX + EAX*0x4]
006a82e5  8bc1  MOV EAX,ECX
006a82e7  8b30  MOV ESI,dword ptr [EAX]
006a82e9  85f6  TEST ESI,ESI
006a82eb  8954240c  MOV dword ptr [ESP + 0xc],EDX
006a82ef  7511  JNZ 0x006a8302
006a82f1  83c004  ADD EAX,0x4
006a82f4  3930  CMP dword ptr [EAX],ESI
006a82f6  7508  JNZ 0x006a8300
006a82f8  83c004  ADD EAX,0x4
006a82fb  833800  CMP dword ptr [EAX],0x0
006a82fe  74f8  JZ 0x006a82f8
006a8300  8b30  MOV ESI,dword ptr [EAX]
006a8302  3bf2  CMP ESI,EDX
006a8304  8be8  MOV EBP,EAX
006a8306  745a  JZ 0x006a8362
006a8308  53  PUSH EBX
006a8309  8da42400000000  LEA ESP,[ESP]
006a8310  8b5e10  MOV EBX,dword ptr [ESI + 0x10]
006a8313  85db  TEST EBX,EBX
006a8315  8b07  MOV EAX,dword ptr [EDI]
006a8317  8b88d4000000  MOV ECX,dword ptr [EAX + 0xd4]
006a831d  742a  JZ 0x006a8349
006a831f  85c9  TEST ECX,ECX
006a8321  7426  JZ 0x006a8349
006a8323  8b9788000000  MOV EDX,dword ptr [EDI + 0x88]
006a8329  8b8794000000  MOV EAX,dword ptr [EDI + 0x94]
006a832f  53  PUSH EBX
006a8330  52  PUSH EDX
006a8331  8b9790000000  MOV EDX,dword ptr [EDI + 0x90]
006a8337  50  PUSH EAX
006a8338  52  PUSH EDX
006a8339  e802d30100  CALL 0x006c5640
006a833e  8bcb  MOV ECX,EBX
006a8340  e86bbbffff  CALL 0x006a3eb0
006a8345  8b542410  MOV EDX,dword ptr [ESP + 0x10]
006a8349  8bb680000000  MOV ESI,dword ptr [ESI + 0x80]
006a834f  85f6  TEST ESI,ESI
006a8351  750a  JNZ 0x006a835d
006a8353  8b7504  MOV ESI,dword ptr [EBP + 0x4]
006a8356  83c504  ADD EBP,0x4
006a8359  85f6  TEST ESI,ESI
006a835b  74f6  JZ 0x006a8353
006a835d  3bf2  CMP ESI,EDX
006a835f  75af  JNZ 0x006a8310
006a8361  5b  POP EBX
006a8362  5f  POP EDI
006a8363  5e  POP ESI
006a8364  5d  POP EBP
006a8365  83c408  ADD ESP,0x8
006a8368  c3  RET
