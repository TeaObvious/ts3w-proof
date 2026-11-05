# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c5f580..00c5f58c; WorldManager_SetLotLODFrozen
  c5f580:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
  c5f584:	88 81 d9 00 00 00    	mov    BYTE PTR [ecx+0xd9],al
  c5f58a:	c2 04 00             	ret    0x4
