# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

007f1b50  e83b94d1ff  CALL 0x0050af90
007f1b55  85c0  TEST EAX,EAX
007f1b57  741a  JZ 0x007f1b73
007f1b59  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007f1b5d  8b10  MOV EDX,dword ptr [EAX]
007f1b5f  890d4c9c1d01  MOV dword ptr [0x011d9c4c],ECX
007f1b65  6a00  PUSH 0x0
007f1b67  8bc8  MOV ECX,EAX
007f1b69  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
007f1b6c  6880187f00  PUSH 0x7f1880
007f1b71  ffd0  CALL EAX
007f1b73  c3  RET
