# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_PackEffectiveFlags
Paired actual annotated Ghidra pseudocode: 007FD200_SacsState_PackEffectiveFlags.c
Owned ranges: [[007fd200, 007fd258]]
Envelope bytes=89

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd200  33c0  XOR EAX,EAX
007fd202  38414f  CMP byte ptr [ECX + 0x4f],AL
007fd205  7405  JZ 0x007fd20c
007fd207  b801000000  MOV EAX,0x1
007fd20c  80795100  CMP byte ptr [ECX + 0x51],0x0
007fd210  7403  JZ 0x007fd215
007fd212  83c802  OR EAX,0x2
007fd215  80795200  CMP byte ptr [ECX + 0x52],0x0
007fd219  7403  JZ 0x007fd21e
007fd21b  83c804  OR EAX,0x4
007fd21e  80795000  CMP byte ptr [ECX + 0x50],0x0
007fd222  7403  JZ 0x007fd227
007fd224  83c808  OR EAX,0x8
007fd227  80795300  CMP byte ptr [ECX + 0x53],0x0
007fd22b  7403  JZ 0x007fd230
007fd22d  83c810  OR EAX,0x10
007fd230  80795400  CMP byte ptr [ECX + 0x54],0x0
007fd234  7403  JZ 0x007fd239
007fd236  83c820  OR EAX,0x20
007fd239  80794c00  CMP byte ptr [ECX + 0x4c],0x0
007fd23d  7403  JZ 0x007fd242
007fd23f  83c840  OR EAX,0x40
007fd242  80794d00  CMP byte ptr [ECX + 0x4d],0x0
007fd246  7405  JZ 0x007fd24d
007fd248  0d80000000  OR EAX,0x80
007fd24d  80794e00  CMP byte ptr [ECX + 0x4e],0x0
007fd251  7405  JZ 0x007fd258
007fd253  0d00010000  OR EAX,0x100
007fd258  c3  RET
Owned instructions=29 owned bytes=89 gap/nonowned bytes=0
