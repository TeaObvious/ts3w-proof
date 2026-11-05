# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00860880 Audio_SubmitKeyedPlayCommand
# Body [[00860880, 008608d0]]; owned bytes=81
00860880  56  PUSH ESI
00860881  e87af50400  CALL 0x008afe00
00860886  8bf0  MOV ESI,EAX
00860888  85f6  TEST ESI,ESI
0086088a  7443  JZ 0x008608cf
0086088c  8b06  MOV EAX,dword ptr [ESI]
0086088e  8b5044  MOV EDX,dword ptr [EAX + 0x44]
00860891  6865534703  PUSH 0x3475365
00860896  8bce  MOV ECX,ESI
00860898  ffd2  CALL EDX
0086089a  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0086089e  8b542408  MOV EDX,dword ptr [ESP + 0x8]
008608a2  8b06  MOV EAX,dword ptr [ESI]
008608a4  8b4050  MOV EAX,dword ptr [EAX + 0x50]
008608a7  51  PUSH ECX
008608a8  52  PUSH EDX
008608a9  6881534703  PUSH 0x3475381
008608ae  8bce  MOV ECX,ESI
008608b0  ffd0  CALL EAX
008608b2  8b442410  MOV EAX,dword ptr [ESP + 0x10]
008608b6  8b16  MOV EDX,dword ptr [ESI]
008608b8  8b524c  MOV EDX,dword ptr [EDX + 0x4c]
008608bb  50  PUSH EAX
008608bc  6885534703  PUSH 0x3475385
008608c1  8bce  MOV ECX,ESI
008608c3  ffd2  CALL EDX
008608c5  8b06  MOV EAX,dword ptr [ESI]
008608c7  8b5068  MOV EDX,dword ptr [EAX + 0x68]
008608ca  8bce  MOV ECX,ESI
008608cc  5e  POP ESI
008608cd  ffe2  JMP EDX
008608cf  5e  POP ESI
008608d0  c3  RET
