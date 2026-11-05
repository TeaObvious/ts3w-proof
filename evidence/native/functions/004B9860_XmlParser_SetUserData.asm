# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlParser_SetUserData
Owned ranges: [[004b9860, 004b987b]]
Signature: void __cdecl XmlParser_SetUserData(void * parser, void * userData)
Physical ABI: cdecl stack+4 parser,+8 userData; void; plain RET.

004b9860  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004b9864  8b4804  MOV ECX,dword ptr [EAX + 0x4]
004b9867  3b08  CMP ECX,dword ptr [EAX] ; If handler-argument slot+4 still equals old userData+0, update both; otherwise replace only userData.
004b9869  750a  JNZ 0x004b9875
004b986b  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
004b986f  8908  MOV dword ptr [EAX],ECX
004b9871  894804  MOV dword ptr [EAX + 0x4],ECX
004b9874  c3  RET
004b9875  8b542408  MOV EDX,dword ptr [ESP + 0x8]
004b9879  8910  MOV dword ptr [EAX],EDX
004b987b  c3  RET
