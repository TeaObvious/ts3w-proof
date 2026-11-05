# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsWalker_PopQueuedRequest(void * param_1)
Owned ranges: [[00802870, 008028d9]]

00802870  56  PUSH ESI
00802871  8bf1  MOV ESI,ECX
00802873  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00802876  3b4644  CMP EAX,dword ptr [ESI + 0x44]
00802879  7514  JNZ 0x0080288f
0080287b  c7462400000000  MOV dword ptr [ESI + 0x24],0x0
00802882  c7462040000000  MOV dword ptr [ESI + 0x20],0x40
00802889  c6467200  MOV byte ptr [ESI + 0x72],0x0
0080288d  5e  POP ESI
0080288e  c3  RET
0080288f  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00802892  8b10  MOV EDX,dword ptr [EAX]
00802894  51  PUSH ECX
00802895  52  PUSH EDX
00802896  8bce  MOV ECX,ESI
00802898  e8f3fdffff  CALL 0x00802690
0080289d  8b4634  MOV EAX,dword ptr [ESI + 0x34]
008028a0  83c008  ADD EAX,0x8
008028a3  3b463c  CMP EAX,dword ptr [ESI + 0x3c]
008028a6  7529  JNZ 0x008028d1
008028a8  8b4638  MOV EAX,dword ptr [ESI + 0x38]
008028ab  85c0  TEST EAX,EAX
008028ad  7409  JZ 0x008028b8
008028af  50  PUSH EAX
008028b0  e82b1cceff  CALL 0x004e44e0
008028b5  83c404  ADD ESP,0x4
008028b8  8b4640  MOV EAX,dword ptr [ESI + 0x40]
008028bb  83c004  ADD EAX,0x4
008028be  894640  MOV dword ptr [ESI + 0x40],EAX
008028c1  8b00  MOV EAX,dword ptr [EAX]
008028c3  894638  MOV dword ptr [ESI + 0x38],EAX
008028c6  0500010000  ADD EAX,0x100
008028cb  89463c  MOV dword ptr [ESI + 0x3c],EAX
008028ce  8b4638  MOV EAX,dword ptr [ESI + 0x38]
008028d1  894634  MOV dword ptr [ESI + 0x34],EAX
008028d4  c6467200  MOV byte ptr [ESI + 0x72],0x0
008028d8  5e  POP ESI
008028d9  c3  RET
