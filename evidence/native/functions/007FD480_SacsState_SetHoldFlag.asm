# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_SetHoldFlag
Paired actual annotated Ghidra pseudocode: 007FD480_SacsState_SetHoldFlag.c
Owned ranges: [[007fd480, 007fd4b8]]
Envelope bytes=57

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd480  8a442404  MOV AL,byte ptr [ESP + 0x4]
007fd484  384154  CMP byte ptr [ECX + 0x54],AL
007fd487  742d  JZ 0x007fd4b6
007fd489  33d2  XOR EDX,EDX
007fd48b  3ac2  CMP AL,DL
007fd48d  884154  MOV byte ptr [ECX + 0x54],AL
007fd490  7424  JZ 0x007fd4b6
007fd492  b001  MOV AL,0x1
007fd494  38414f  CMP byte ptr [ECX + 0x4f],AL
007fd497  7409  JZ 0x007fd4a2
007fd499  88414f  MOV byte ptr [ECX + 0x4f],AL
007fd49c  88514d  MOV byte ptr [ECX + 0x4d],DL
007fd49f  88414e  MOV byte ptr [ECX + 0x4e],AL
007fd4a2  38414e  CMP byte ptr [ECX + 0x4e],AL
007fd4a5  7403  JZ 0x007fd4aa
007fd4a7  88414e  MOV byte ptr [ECX + 0x4e],AL
007fd4aa  885150  MOV byte ptr [ECX + 0x50],DL
007fd4ad  89542404  MOV dword ptr [ESP + 0x4],EDX
007fd4b1  e9fa000000  JMP 0x007fd5b0
007fd4b6  c20400  RET 0x4
Owned instructions=20 owned bytes=57 gap/nonowned bytes=0
