# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10910250..1091026f; CAW_FileStreamReferenceRelease
10910250: 8b8110020000  MOV EAX,dword ptr [ECX + 0x210]
10910256: 83f801  CMP EAX,0x1
10910259: 7e0a  JLE 0x10910265
1091025b: 83c0ff  ADD EAX,-0x1
1091025e: 898110020000  MOV dword ptr [ECX + 0x210],EAX
10910264: c3  RET
10910265: 8b01  MOV EAX,dword ptr [ECX]
10910267: 8b10  MOV EDX,dword ptr [EAX]
10910269: 6a01  PUSH 0x1
1091026b: ffd2  CALL EDX
1091026d: 33c0  XOR EAX,EAX
1091026f: c3  RET
