# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00787420..00787434; ScriptCore.World::World_LoadHeightMapRelatedDataImpl
  787420:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  787426:	85 c9                	test   ecx,ecx
  787428:	74 0a                	je     0x787434
  78742a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  78742e:	50                   	push   eax
  78742f:	e8 3c bf 4d 00       	call   0xc63370
  787434:	c3                   	ret
