# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00785330..00785363; ScriptCore.World::World_RegenImposter
  785330:	56                   	push   esi
  785331:	8b 35 c4 db 1e 01    	mov    esi,DWORD PTR ds:0x11edbc4
  785337:	85 f6                	test   esi,esi
  785339:	74 27                	je     0x785362
  78533b:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  78533f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  785343:	6a 00                	push   0x0
  785345:	50                   	push   eax
  785346:	51                   	push   ecx
  785347:	8b ce                	mov    ecx,esi
  785349:	e8 c2 d4 4d 00       	call   0xc62810
  78534e:	85 c0                	test   eax,eax
  785350:	74 07                	je     0x785359
  785352:	8b c8                	mov    ecx,eax
  785354:	e8 97 d4 33 00       	call   0xac27f0
  785359:	6a 01                	push   0x1
  78535b:	8b ce                	mov    ecx,esi
  78535d:	e8 0e a2 4d 00       	call   0xc5f570
  785362:	5e                   	pop    esi
  785363:	c3                   	ret
