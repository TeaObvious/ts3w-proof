# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108e5080..108e50c9; CAW_ResourceKeySortAndUnique
108e5080: 53  PUSH EBX
108e5081: 56  PUSH ESI
108e5082: 8b74240c  MOV ESI,dword ptr [ESP + 0xc]
108e5086: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
108e5089: 8b0e  MOV ECX,dword ptr [ESI]
108e508b: 57  PUSH EDI
108e508c: 50  PUSH EAX
108e508d: 51  PUSH ECX
108e508e: e87d2badff  CALL 0x103b7c10
108e5093: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
108e5096: 8b0e  MOV ECX,dword ptr [ESI]
108e5098: 50  PUSH EAX
108e5099: 51  PUSH ECX
108e509a: e871ffffff  CALL 0x108e5010
108e509f: 8b7e04  MOV EDI,dword ptr [ESI + 0x4]
108e50a2: 8bd8  MOV EBX,EAX
108e50a4: 53  PUSH EBX
108e50a5: 8bd7  MOV EDX,EDI
108e50a7: 52  PUSH EDX
108e50a8: 57  PUSH EDI
108e50a9: e812aeffff  CALL 0x108dfec0
108e50ae: 2bfb  SUB EDI,EBX
108e50b0: c1ff04  SAR EDI,0x4
108e50b3: f7df  NEG EDI
108e50b5: c1e704  SHL EDI,0x4
108e50b8: 017e04  ADD dword ptr [ESI + 0x4],EDI
108e50bb: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
108e50be: 2b06  SUB EAX,dword ptr [ESI]
108e50c0: 83c41c  ADD ESP,0x1c
108e50c3: 5f  POP EDI
108e50c4: 5e  POP ESI
108e50c5: c1f804  SAR EAX,0x4
108e50c8: 5b  POP EBX
108e50c9: c3  RET
