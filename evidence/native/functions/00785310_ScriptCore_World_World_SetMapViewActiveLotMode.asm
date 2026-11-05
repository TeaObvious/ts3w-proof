# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00785310..00785324; ScriptCore.World::World_SetMapViewActiveLotMode
  785310:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  785316:	85 c9                	test   ecx,ecx
  785318:	74 0a                	je     0x785324
  78531a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  78531e:	50                   	push   eax
  78531f:	e8 6c a2 4d 00       	call   0xc5f590
  785324:	c3                   	ret
