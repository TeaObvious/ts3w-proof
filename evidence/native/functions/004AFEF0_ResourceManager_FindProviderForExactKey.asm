# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * ResourceManager_FindProviderForExactKey(void * this, void * resourceKey)
Owned ranges: [[004afef0, 004aff03]]

004afef0  8b01  MOV EAX,dword ptr [ECX]
004afef2  8b4040  MOV EAX,dword ptr [EAX + 0x40]
004afef5  8d542404  LEA EDX,[ESP + 0x4]
004afef9  52  PUSH EDX
004afefa  8b542408  MOV EDX,dword ptr [ESP + 0x8]
004afefe  52  PUSH EDX
004afeff  ffd0  CALL EAX
004aff01  c20400  RET 0x4
