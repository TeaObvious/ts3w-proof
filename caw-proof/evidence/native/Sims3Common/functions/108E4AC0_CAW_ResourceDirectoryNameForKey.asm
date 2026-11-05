# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108e4ac0..108e4b20; CAW_ResourceDirectoryNameForKey
108e4ac0: 81ec08020000  SUB ESP,0x208
108e4ac6: 56  PUSH ESI
108e4ac7: 8bb42418020000  MOV ESI,dword ptr [ESP + 0x218]
108e4ace: 85f6  TEST ESI,ESI
108e4ad0: 7445  JZ 0x108e4b17
108e4ad2: 8b06  MOV EAX,dword ptr [ESI]
108e4ad4: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
108e4ad7: 8bce  MOV ECX,ESI
108e4ad9: ffd2  CALL EDX
108e4adb: 3d92847234  CMP EAX,0x34728492
108e4ae0: 7535  JNZ 0x108e4b17
108e4ae2: 8b06  MOV EAX,dword ptr [ESI]
108e4ae4: 8b942410020000  MOV EDX,dword ptr [ESP + 0x210]
108e4aeb: 8b4068  MOV EAX,dword ptr [EAX + 0x68]
108e4aee: 8d4c2404  LEA ECX,[ESP + 0x4]
108e4af2: 51  PUSH ECX
108e4af3: 52  PUSH EDX
108e4af4: 8bce  MOV ECX,ESI
108e4af6: ffd0  CALL EAX
108e4af8: 84c0  TEST AL,AL
108e4afa: 741b  JZ 0x108e4b17
108e4afc: 8d4c2404  LEA ECX,[ESP + 0x4]
108e4b00: 51  PUSH ECX
108e4b01: 8b8c2418020000  MOV ECX,dword ptr [ESP + 0x218]
108e4b08: e843b078ff  CALL 0x1006fb50
108e4b0d: b001  MOV AL,0x1
108e4b0f: 5e  POP ESI
108e4b10: 81c408020000  ADD ESP,0x208
108e4b16: c3  RET
108e4b17: 32c0  XOR AL,AL
108e4b19: 5e  POP ESI
108e4b1a: 81c408020000  ADD ESP,0x208
108e4b20: c3  RET
