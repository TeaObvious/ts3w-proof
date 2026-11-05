# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ScriptCore.World::World_ObjectDesigner_GetDesignPresetSubsortImpl(uint presetId)
Owned ranges: [[00787f50, 00787f61]]

00787f50  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00787f54  50  PUSH EAX
00787f55  e846833a00  CALL 0x00b302a0
00787f5a  8bc8  MOV ECX,EAX
00787f5c  e80f923a00  CALL 0x00b31170
00787f61  c3  RET
