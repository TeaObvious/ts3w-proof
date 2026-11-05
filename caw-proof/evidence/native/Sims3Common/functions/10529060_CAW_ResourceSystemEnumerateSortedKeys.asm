# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10529060..10529089; CAW_ResourceSystemEnumerateSortedKeys
10529060: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
10529064: 8b542408  MOV EDX,dword ptr [ESP + 0x8]
10529068: 56  PUSH ESI
10529069: 8b742408  MOV ESI,dword ptr [ESP + 0x8]
1052906d: 50  PUSH EAX
1052906e: 52  PUSH EDX
1052906f: 56  PUSH ESI
10529070: e84be03b00  CALL 0x108e70c0
10529075: 85c0  TEST EAX,EAX
10529077: 740d  JZ 0x10529086
10529079: 85f6  TEST ESI,ESI
1052907b: 7409  JZ 0x10529086
1052907d: 56  PUSH ESI
1052907e: e8fdbf3b00  CALL 0x108e5080
10529083: 83c404  ADD ESP,0x4
10529086: 5e  POP ESI
10529087: c20c00  RET 0xc
