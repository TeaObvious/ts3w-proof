# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 109104c0..109104f6; CAW_FileStreamCloseOsHandle
109104c0: 56  PUSH ESI
109104c1: 8bf1  MOV ESI,ECX
109104c3: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
109104c6: 83f8ff  CMP EAX,-0x1
109104c9: 7428  JZ 0x109104f3
109104cb: 50  PUSH EAX
109104cc: ff15b8b2aa10  CALL dword ptr [0x10aab2b8]
109104d2: 33c0  XOR EAX,EAX
109104d4: c74604ffffffff  MOV dword ptr [ESI + 0x4],0xffffffff
109104db: 898614020000  MOV dword ptr [ESI + 0x214],EAX
109104e1: 898618020000  MOV dword ptr [ESI + 0x218],EAX
109104e7: 89861c020000  MOV dword ptr [ESI + 0x21c],EAX
109104ed: 898620020000  MOV dword ptr [ESI + 0x220],EAX
109104f3: b001  MOV AL,0x1
109104f5: 5e  POP ESI
109104f6: c3  RET
