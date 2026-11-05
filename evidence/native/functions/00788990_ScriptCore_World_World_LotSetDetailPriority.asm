# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00788990..007889bb; ScriptCore.World::World_LotSetDetailPriority
  788990:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  788996:	85 c9                	test   ecx,ecx
  788998:	74 21                	je     0x7889bb
  78899a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  78899e:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  7889a2:	6a 00                	push   0x0
  7889a4:	50                   	push   eax
  7889a5:	52                   	push   edx
  7889a6:	e8 65 9e 4d 00       	call   0xc62810
  7889ab:	85 c0                	test   eax,eax
  7889ad:	74 0c                	je     0x7889bb
  7889af:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  7889b3:	51                   	push   ecx
  7889b4:	8b c8                	mov    ecx,eax
  7889b6:	e8 55 75 32 00       	call   0xaaff10
  7889bb:	c3                   	ret
