# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059a330..0059a37e; JobService_ConstructWithEmbeddedManager
  59a330:	56                   	push   esi
  59a331:	6a 00                	push   0x0
  59a333:	68 8b d1 a8 02       	push   0x2a8d18b
  59a338:	8b f1                	mov    esi,ecx
  59a33a:	e8 81 51 00 00       	call   0x59f4c0
  59a33f:	c7 46 10 e4 2a fe 00 	mov    DWORD PTR [esi+0x10],0xfe2ae4
  59a346:	8d 4e 18             	lea    ecx,[esi+0x18]
  59a349:	c7 06 78 a8 fd 00    	mov    DWORD PTR [esi],0xfda878
  59a34f:	c7 46 10 74 a8 fd 00 	mov    DWORD PTR [esi+0x10],0xfda874
  59a356:	e8 55 fb ff ff       	call   0x599eb0
  59a35b:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
  59a35f:	88 86 d0 00 00 00    	mov    BYTE PTR [esi+0xd0],al
  59a365:	c7 86 c8 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xc8],0x0
  59a36f:	c7 86 cc 00 00 00 05 00 00 00 	mov    DWORD PTR [esi+0xcc],0x5
  59a379:	8b c6                	mov    eax,esi
  59a37b:	5e                   	pop    esi
  59a37c:	c2 04 00             	ret    0x4
