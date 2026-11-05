# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlParser_SetElementHandlers
Owned ranges: [[004b9880, 004b9892]]
Signature: void __cdecl XmlParser_SetElementHandlers(void * parser, void * startHandler, void * endHandler)
Physical ABI: cdecl stack+4 parser,+8 start callback,+C end callback; void; plain RET.

004b9880  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004b9884  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
004b9888  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
004b988c  894834  MOV dword ptr [EAX + 0x34],ECX ; Install start callback at parser+34 and end callback at+38; no callback is executed here.
004b988f  895038  MOV dword ptr [EAX + 0x38],EDX
004b9892  c3  RET
