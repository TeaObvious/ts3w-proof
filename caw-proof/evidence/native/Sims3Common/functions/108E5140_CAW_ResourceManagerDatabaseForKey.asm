# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108e5140..108e5153; CAW_ResourceManagerDatabaseForKey
108e5140: 8b01  MOV EAX,dword ptr [ECX]
108e5142: 8b4040  MOV EAX,dword ptr [EAX + 0x40]
108e5145: 8d542404  LEA EDX,[ESP + 0x4]
108e5149: 52  PUSH EDX
108e514a: 8b542408  MOV EDX,dword ptr [ESP + 0x8]
108e514e: 52  PUSH EDX
108e514f: ffd0  CALL EAX
108e5151: c20400  RET 0x4
