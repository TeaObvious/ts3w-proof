# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1025ead0..1025eafa; CAW_QueryCachedProductWorldExtensionFlag
1025ead0: 803def03c71000  CMP byte ptr [0x10c703ef],0x0
1025ead7: 751c  JNZ 0x1025eaf5
1025ead9: 6800000400  PUSH 0x40000
1025eade: b9c026c710  MOV ECX,0x10c726c0
1025eae3: e8f8fb1200  CALL 0x1038e6e0
1025eae8: a2ee03c710  MOV [0x10c703ee],AL
1025eaed: c605ef03c71001  MOV byte ptr [0x10c703ef],0x1
1025eaf4: c3  RET
1025eaf5: a0ee03c710  MOV AL,[0x10c703ee]
1025eafa: c3  RET
