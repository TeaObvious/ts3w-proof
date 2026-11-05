# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 00517FB0_UiButton_UpdateStateFlags.c
Owned ranges: [[00517fb0, 00517fde]]

00517fb0  807c240800  CMP byte ptr [ESP + 0x8],0x0
00517fb5  8b8128feffff  MOV EAX,dword ptr [ECX + 0xfffffe28]
00517fbb  740f  JZ 0x00517fcc
00517fbd  0b442404  OR EAX,dword ptr [ESP + 0x4]
00517fc1  8b11  MOV EDX,dword ptr [ECX]
00517fc3  50  PUSH EAX
00517fc4  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00517fc7  ffd0  CALL EAX
00517fc9  c20800  RET 0x8
00517fcc  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00517fd0  f7d2  NOT EDX
00517fd2  23c2  AND EAX,EDX
00517fd4  8b11  MOV EDX,dword ptr [ECX]
00517fd6  50  PUSH EAX
00517fd7  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00517fda  ffd0  CALL EAX
00517fdc  c20800  RET 0x8
