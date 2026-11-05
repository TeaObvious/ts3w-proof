# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 105cbf00..105cbf3c; CAW_ResourceAssociatedFilenameLookup
105cbf00: e8bb5af5ff  CALL 0x105219c0
105cbf05: 85c0  TEST EAX,EAX
105cbf07: 7501  JNZ 0x105cbf0a
105cbf09: c3  RET
105cbf0a: 8b10  MOV EDX,dword ptr [EAX]
105cbf0c: 56  PUSH ESI
105cbf0d: 8bc8  MOV ECX,EAX
105cbf0f: 8b423c  MOV EAX,dword ptr [EDX + 0x3c]
105cbf12: 57  PUSH EDI
105cbf13: ffd0  CALL EAX
105cbf15: 8bf8  MOV EDI,EAX
105cbf17: 85ff  TEST EDI,EDI
105cbf19: 741d  JZ 0x105cbf38
105cbf1b: 8b37  MOV ESI,dword ptr [EDI]
105cbf1d: 3bf7  CMP ESI,EDI
105cbf1f: 7417  JZ 0x105cbf38
105cbf21: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
105cbf24: 8d54240c  LEA EDX,[ESP + 0xc]
105cbf28: 52  PUSH EDX
105cbf29: e8625df5ff  CALL 0x10521c90
105cbf2e: 85c0  TEST EAX,EAX
105cbf30: 7508  JNZ 0x105cbf3a
105cbf32: 8b36  MOV ESI,dword ptr [ESI]
105cbf34: 3bf7  CMP ESI,EDI
105cbf36: 75e9  JNZ 0x105cbf21
105cbf38: 33c0  XOR EAX,EAX
105cbf3a: 5f  POP EDI
105cbf3b: 5e  POP ESI
105cbf3c: c3  RET
