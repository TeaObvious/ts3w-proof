# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_SetJoinFlag
Paired actual annotated Ghidra pseudocode: 007FD390_SacsState_SetJoinFlag.c
Owned ranges: [[007fd390, 007fd3c3]]
Envelope bytes=52

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd390  8a442404  MOV AL,byte ptr [ESP + 0x4]
007fd394  38414d  CMP byte ptr [ECX + 0x4d],AL
007fd397  7428  JZ 0x007fd3c1
007fd399  32d2  XOR DL,DL
007fd39b  3ac2  CMP AL,DL
007fd39d  88414d  MOV byte ptr [ECX + 0x4d],AL
007fd3a0  741f  JZ 0x007fd3c1
007fd3a2  38514c  CMP byte ptr [ECX + 0x4c],DL
007fd3a5  7403  JZ 0x007fd3aa
007fd3a7  88514c  MOV byte ptr [ECX + 0x4c],DL
007fd3aa  38514f  CMP byte ptr [ECX + 0x4f],DL
007fd3ad  7412  JZ 0x007fd3c1
007fd3af  88514f  MOV byte ptr [ECX + 0x4f],DL
007fd3b2  885150  MOV byte ptr [ECX + 0x50],DL
007fd3b5  885151  MOV byte ptr [ECX + 0x51],DL
007fd3b8  885152  MOV byte ptr [ECX + 0x52],DL
007fd3bb  885153  MOV byte ptr [ECX + 0x53],DL
007fd3be  885154  MOV byte ptr [ECX + 0x54],DL
007fd3c1  c20400  RET 0x4
Owned instructions=19 owned bytes=52 gap/nonowned bytes=0
