# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorAtlas_WriteNextWrappedOrigin
; Owned ranges: [[006a9050, 006a90b2]]
; Actual entry PLATE: Static PC1.67: ECX allocator, stack+4/+8 raw output pointers, RET8. Uses counters+0/+4, offsets+8/+10, limits+C/+14, strides+18/+1C. Low32 next-coordinate calculations compare unsigned to limits; first wraps row then second may reset both counters. Writes raw32 current X/Y and increments x. No child call, failure/status or uniqueness/nonzero guarantee. Stored analysis return metadata is preserved.

006a9050  8b4118  MOV EAX,dword ptr [ECX + 0x18]
006a9053  8b5108  MOV EDX,dword ptr [ECX + 0x8]
006a9056  56  PUSH ESI
006a9057  8b31  MOV ESI,dword ptr [ECX]
006a9059  83c601  ADD ESI,0x1
006a905c  0faff0  IMUL ESI,EAX
006a905f  03f2  ADD ESI,EDX
006a9061  3b710c  CMP ESI,dword ptr [ECX + 0xc]
006a9064  760a  JBE 0x006a9070
006a9066  83410401  ADD dword ptr [ECX + 0x4],0x1
006a906a  c70100000000  MOV dword ptr [ECX],0x0
006a9070  8b7104  MOV ESI,dword ptr [ECX + 0x4]
006a9073  83c601  ADD ESI,0x1
006a9076  0faf711c  IMUL ESI,dword ptr [ECX + 0x1c]
006a907a  037110  ADD ESI,dword ptr [ECX + 0x10]
006a907d  3b7114  CMP ESI,dword ptr [ECX + 0x14]
006a9080  760d  JBE 0x006a908f
006a9082  c7410400000000  MOV dword ptr [ECX + 0x4],0x0
006a9089  c70100000000  MOV dword ptr [ECX],0x0
006a908f  8b31  MOV ESI,dword ptr [ECX]
006a9091  0faff0  IMUL ESI,EAX
006a9094  8b442408  MOV EAX,dword ptr [ESP + 0x8]
006a9098  03f2  ADD ESI,EDX
006a909a  8930  MOV dword ptr [EAX],ESI
006a909c  8b511c  MOV EDX,dword ptr [ECX + 0x1c]
006a909f  0faf5104  IMUL EDX,dword ptr [ECX + 0x4]
006a90a3  035110  ADD EDX,dword ptr [ECX + 0x10]
006a90a6  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
006a90aa  8910  MOV dword ptr [EAX],EDX
006a90ac  830101  ADD dword ptr [ECX],0x1
006a90af  5e  POP ESI
006a90b0  c20800  RET 0x8
