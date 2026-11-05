# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 007852f0..00785304; ScriptCore.World::World_SetImposterMode
  7852f0:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  7852f6:	85 c9                	test   ecx,ecx
  7852f8:	74 0a                	je     0x785304
  7852fa:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7852fe:	50                   	push   eax
  7852ff:	e8 6c a2 4d 00       	call   0xc5f570
  785304:	c3                   	ret
