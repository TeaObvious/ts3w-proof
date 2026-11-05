# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536360 (Objects_GetTransform)
Paired Ghidra pseudocode: 10536360_Objects_GetTransform.c
Window: [0x10536360, 0x10536470) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536360: 55 8b ec 83 e4 f0 83 ec 4c 56 e8 31 3e 1f 00 8b
10536370: 4d 10 8b 55 0c 51 52 8b c8 e8 32 48 1f 00 85 c0
10536380: 74 60 8b 0d 98 d9 c8 10 51 8b c8 e8 10 0a 1f 00
10536390: 85 c0 74 4e 8d 54 24 10 52 8b c8 e8 70 3f 21 00
105363a0: 8b 75 08 8d 44 24 10 50 56 e8 22 ff b6 ff 8d 4c
105363b0: 24 28 51 8d 56 10 52 e8 14 ff b6 ff 8d 44 24 40
105363c0: 50 8d 4e 20 51 e8 06 ff b6 ff 8d 54 24 58 52 8d
105363d0: 46 30 50 e8 f8 fe b6 ff 83 c4 20 8b c6 5e 8b e5
105363e0: 5d c3 d9 ee 8b 75 08 83 ec 10 d9 54 24 0c d9 54
105363f0: 24 08 8b ce d9 5c 24 04 d9 e8 d9 1c 24 e8 6e 76
10536400: 02 00 d9 ee 83 ec 10 d9 54 24 0c d9 54 24 08 8d
10536410: 4e 10 d9 e8 d9 5c 24 04 d9 1c 24 e8 50 76 02 00
10536420: d9 ee 83 ec 10 d9 54 24 0c 8d 4e 20 d9 e8 d9 5c
10536430: 24 08 d9 54 24 04 d9 1c 24 e8 32 76 02 00 d9 e8
10536440: 83 ec 10 d9 5c 24 0c 8d 4e 30 d9 ee d9 54 24 08
10536450: d9 54 24 04 d9 1c 24 e8 14 76 02 00 8b c6 5e 8b
10536460: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536360 <.text+0x535360>:
10536360:	55                                              	push   ebp
10536361:	8b ec                                           	mov    ebp,esp
10536363:	83 e4 f0                                        	and    esp,0xfffffff0
10536366:	83 ec 4c                                        	sub    esp,0x4c
10536369:	56                                              	push   esi
1053636a:	e8 31 3e 1f 00                                  	call   0x1072a1a0
1053636f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10536372:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10536375:	51                                              	push   ecx
10536376:	52                                              	push   edx
10536377:	8b c8                                           	mov    ecx,eax
10536379:	e8 32 48 1f 00                                  	call   0x1072abb0
1053637e:	85 c0                                           	test   eax,eax
10536380:	74 60                                           	je     0x105363e2
10536382:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
10536388:	51                                              	push   ecx
10536389:	8b c8                                           	mov    ecx,eax
1053638b:	e8 10 0a 1f 00                                  	call   0x10726da0
10536390:	85 c0                                           	test   eax,eax
10536392:	74 4e                                           	je     0x105363e2
10536394:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10536398:	52                                              	push   edx
10536399:	8b c8                                           	mov    ecx,eax
1053639b:	e8 70 3f 21 00                                  	call   0x1074a310
105363a0:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105363a3:	8d 44 24 10                                     	lea    eax,[esp+0x10]
105363a7:	50                                              	push   eax
105363a8:	56                                              	push   esi
105363a9:	e8 22 ff b6 ff                                  	call   0x100a62d0
105363ae:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
105363b2:	51                                              	push   ecx
105363b3:	8d 56 10                                        	lea    edx,[esi+0x10]
105363b6:	52                                              	push   edx
105363b7:	e8 14 ff b6 ff                                  	call   0x100a62d0
105363bc:	8d 44 24 40                                     	lea    eax,[esp+0x40]
105363c0:	50                                              	push   eax
105363c1:	8d 4e 20                                        	lea    ecx,[esi+0x20]
105363c4:	51                                              	push   ecx
105363c5:	e8 06 ff b6 ff                                  	call   0x100a62d0
105363ca:	8d 54 24 58                                     	lea    edx,[esp+0x58]
105363ce:	52                                              	push   edx
105363cf:	8d 46 30                                        	lea    eax,[esi+0x30]
105363d2:	50                                              	push   eax
105363d3:	e8 f8 fe b6 ff                                  	call   0x100a62d0
105363d8:	83 c4 20                                        	add    esp,0x20
105363db:	8b c6                                           	mov    eax,esi
105363dd:	5e                                              	pop    esi
105363de:	8b e5                                           	mov    esp,ebp
105363e0:	5d                                              	pop    ebp
105363e1:	c3                                              	ret
105363e2:	d9 ee                                           	fldz
105363e4:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105363e7:	83 ec 10                                        	sub    esp,0x10
105363ea:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
105363ee:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
105363f2:	8b ce                                           	mov    ecx,esi
105363f4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105363f8:	d9 e8                                           	fld1
105363fa:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105363fd:	e8 6e 76 02 00                                  	call   0x1055da70
10536402:	d9 ee                                           	fldz
10536404:	83 ec 10                                        	sub    esp,0x10
10536407:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
1053640b:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
1053640f:	8d 4e 10                                        	lea    ecx,[esi+0x10]
10536412:	d9 e8                                           	fld1
10536414:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10536418:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053641b:	e8 50 76 02 00                                  	call   0x1055da70
10536420:	d9 ee                                           	fldz
10536422:	83 ec 10                                        	sub    esp,0x10
10536425:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
10536429:	8d 4e 20                                        	lea    ecx,[esi+0x20]
1053642c:	d9 e8                                           	fld1
1053642e:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10536432:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10536436:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10536439:	e8 32 76 02 00                                  	call   0x1055da70
1053643e:	d9 e8                                           	fld1
10536440:	83 ec 10                                        	sub    esp,0x10
10536443:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10536447:	8d 4e 30                                        	lea    ecx,[esi+0x30]
1053644a:	d9 ee                                           	fldz
1053644c:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
10536450:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10536454:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10536457:	e8 14 76 02 00                                  	call   0x1055da70
1053645c:	8b c6                                           	mov    eax,esi
1053645e:	5e                                              	pop    esi
1053645f:	8b e5                                           	mov    esp,ebp
10536461:	5d                                              	pop    ebp
10536462:	c3                                              	ret
10536463:	cc                                              	int3
10536464:	cc                                              	int3
10536465:	cc                                              	int3
10536466:	cc                                              	int3
10536467:	cc                                              	int3
10536468:	cc                                              	int3
10536469:	cc                                              	int3
1053646a:	cc                                              	int3
1053646b:	cc                                              	int3
1053646c:	cc                                              	int3
1053646d:	cc                                              	int3
1053646e:	cc                                              	int3
1053646f:	cc                                              	int3
