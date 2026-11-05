# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_SetOneShotFlag
Paired actual annotated Ghidra pseudocode: 007FD5B0_SacsState_SetOneShotFlag.c
Owned ranges: [[007fd5b0, 007fd5ef]]
Envelope bytes=64

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd5b0  8a442404  MOV AL,byte ptr [ESP + 0x4]
007fd5b4  384153  CMP byte ptr [ECX + 0x53],AL
007fd5b7  7434  JZ 0x007fd5ed
007fd5b9  32d2  XOR DL,DL
007fd5bb  3ac2  CMP AL,DL
007fd5bd  884153  MOV byte ptr [ECX + 0x53],AL
007fd5c0  742b  JZ 0x007fd5ed
007fd5c2  b001  MOV AL,0x1
007fd5c4  38414f  CMP byte ptr [ECX + 0x4f],AL
007fd5c7  7409  JZ 0x007fd5d2
007fd5c9  88414f  MOV byte ptr [ECX + 0x4f],AL
007fd5cc  88514d  MOV byte ptr [ECX + 0x4d],DL
007fd5cf  88414e  MOV byte ptr [ECX + 0x4e],AL
007fd5d2  38414e  CMP byte ptr [ECX + 0x4e],AL
007fd5d5  7403  JZ 0x007fd5da
007fd5d7  88414e  MOV byte ptr [ECX + 0x4e],AL
007fd5da  385154  CMP byte ptr [ECX + 0x54],DL
007fd5dd  885150  MOV byte ptr [ECX + 0x50],DL
007fd5e0  7403  JZ 0x007fd5e5
007fd5e2  885154  MOV byte ptr [ECX + 0x54],DL
007fd5e5  38514d  CMP byte ptr [ECX + 0x4d],DL
007fd5e8  7403  JZ 0x007fd5ed
007fd5ea  88514d  MOV byte ptr [ECX + 0x4d],DL
007fd5ed  c20400  RET 0x4
Owned instructions=24 owned bytes=64 gap/nonowned bytes=0
