# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10910890..109108d0; CAW_FileStreamDestroy
10910890: 56  PUSH ESI
10910891: 8bf1  MOV ESI,ECX
10910893: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
10910896: 83f8ff  CMP EAX,-0x1
10910899: c70618d3b810  MOV dword ptr [ESI],0x10b8d318
1091089f: 7428  JZ 0x109108c9
109108a1: 50  PUSH EAX
109108a2: ff15b8b2aa10  CALL dword ptr [0x10aab2b8]
109108a8: 33c0  XOR EAX,EAX
109108aa: c74604ffffffff  MOV dword ptr [ESI + 0x4],0xffffffff
109108b1: 898614020000  MOV dword ptr [ESI + 0x214],EAX
109108b7: 898618020000  MOV dword ptr [ESI + 0x218],EAX
109108bd: 89861c020000  MOV dword ptr [ESI + 0x21c],EAX
109108c3: 898620020000  MOV dword ptr [ESI + 0x220],EAX
109108c9: c706e4feaa10  MOV dword ptr [ESI],0x10aafee4
109108cf: 5e  POP ESI
109108d0: c3  RET
