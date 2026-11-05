# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00786f70..00786f89; ScriptCore.World::World_SetActiveLotImpl
  786f70:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  786f76:	85 c9                	test   ecx,ecx
  786f78:	74 0f                	je     0x786f89
  786f7a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  786f7e:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  786f82:	50                   	push   eax
  786f83:	52                   	push   edx
  786f84:	e8 87 bb 4d 00       	call   0xc62b10
  786f89:	c3                   	ret
