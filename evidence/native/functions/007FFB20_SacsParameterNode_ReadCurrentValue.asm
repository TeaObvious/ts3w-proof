# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsParameterNode_ReadCurrentValue
Paired actual annotated Ghidra pseudocode: 007FFB20_SacsParameterNode_ReadCurrentValue.c
Owned ranges: [[007ffb20, 007ffb39]]
Envelope bytes=26

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007ffb20  8b4950  MOV ECX,dword ptr [ECX + 0x50]
007ffb23  33c0  XOR EAX,EAX
007ffb25  85c9  TEST ECX,ECX
007ffb27  740e  JZ 0x007ffb37
007ffb29  8b492c  MOV ECX,dword ptr [ECX + 0x2c]
007ffb2c  50  PUSH EAX
007ffb2d  51  PUSH ECX
007ffb2e  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
007ffb32  e84940ffff  CALL 0x007f3b80
007ffb37  c21000  RET 0x10
Owned instructions=10 owned bytes=26 gap/nonowned bytes=0
