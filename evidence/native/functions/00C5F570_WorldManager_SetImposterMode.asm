# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c5f570..00c5f57c; WorldManager_SetImposterMode
  c5f570:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
  c5f574:	88 81 d8 00 00 00    	mov    BYTE PTR [ecx+0xd8],al
  c5f57a:	c2 04 00             	ret    0x4
