# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108e4760..108e477e; CAW_ResourceGroupHash24
108e4760: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
108e4764: 8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
108e4768: 50  PUSH EAX
108e4769: 51  PUSH ECX
108e476a: e8a1ffffff  CALL 0x108e4710
108e476f: 8bc8  MOV ECX,EAX
108e4771: 25ffffff00  AND EAX,0xffffff
108e4776: c1e918  SHR ECX,0x18
108e4779: 83c408  ADD ESP,0x8
108e477c: 33c1  XOR EAX,ECX
108e477e: c3  RET
