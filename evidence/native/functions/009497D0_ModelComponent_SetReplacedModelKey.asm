# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete owned Ghidra Listing.
Signature: void __thiscall ModelComponent_SetReplacedModelKey(void * this, void * resourceKey)
Owned ranges: [[009497d0, 009497e7]]

009497d0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
009497d4  56  PUSH ESI
009497d5  50  PUSH EAX
009497d6  8bf1  MOV ESI,ECX
009497d8  e8d3faffff  CALL 0x009492b0
009497dd  808e8100000001  OR byte ptr [ESI + 0x81],0x1
009497e4  5e  POP ESI
009497e5  c20400  RET 0x4
