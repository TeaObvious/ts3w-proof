# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Hash_Fnv1CaseFoldSignedByteSpan
Paired actual annotated Ghidra pseudocode: 007CFF10_Hash_Fnv1CaseFoldSignedByteSpan.c
Owned ranges: [[007cff10, 007cff2c] [007cff30, 007cff7d]]
Envelope bytes=110

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007cff10  51  PUSH ECX
007cff11  53  PUSH EBX
007cff12  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
007cff16  85db  TEST EBX,EBX
007cff18  56  PUSH ESI
007cff19  57  PUSH EDI
007cff1a  be25232284  MOV ESI,0x84222325
007cff1f  bfe49cf2cb  MOV EDI,0xcbf29ce4
007cff24  744f  JZ 0x007cff75
007cff26  55  PUSH EBP
007cff27  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
007cff2b  eb03  JMP 0x007cff30
007cff2d  8d  .byte (gap/alignment)
007cff2e  49  .byte (gap/alignment)
007cff2f  00  .byte (gap/alignment)
007cff30  0fbe4500  MOVSX EAX,byte ptr [EBP]
007cff34  50  PUSH EAX
007cff35  83eb01  SUB EBX,0x1
007cff38  ff15c066f900  CALL dword ptr [0x00f966c0]
007cff3e  83c404  ADD ESP,0x4
007cff41  6800010000  PUSH 0x100
007cff46  99  CDQ
007cff47  68b3010000  PUSH 0x1b3
007cff4c  57  PUSH EDI
007cff4d  8bca  MOV ECX,EDX
007cff4f  56  PUSH ESI
007cff50  8944242c  MOV dword ptr [ESP + 0x2c],EAX
007cff54  894c2420  MOV dword ptr [ESP + 0x20],ECX
007cff58  e8c3f57a00  CALL 0x00f7f520
007cff5d  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
007cff61  33c8  XOR ECX,EAX
007cff63  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007cff67  33c2  XOR EAX,EDX
007cff69  83c501  ADD EBP,0x1
007cff6c  85db  TEST EBX,EBX
007cff6e  8bf1  MOV ESI,ECX
007cff70  8bf8  MOV EDI,EAX
007cff72  75bc  JNZ 0x007cff30
007cff74  5d  POP EBP
007cff75  8bd7  MOV EDX,EDI
007cff77  5f  POP EDI
007cff78  8bc6  MOV EAX,ESI
007cff7a  5e  POP ESI
007cff7b  5b  POP EBX
007cff7c  59  POP ECX
007cff7d  c3  RET
Owned instructions=43 owned bytes=107 gap/nonowned bytes=3
