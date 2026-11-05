# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00787440..00787454; ScriptCore.World::World_UnloadHeightMapRelatedDataImpl
  787440:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  787446:	85 c9                	test   ecx,ecx
  787448:	74 0a                	je     0x787454
  78744a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  78744e:	50                   	push   eax
  78744f:	e8 bc bf 4d 00       	call   0xc63410
  787454:	c3                   	ret
