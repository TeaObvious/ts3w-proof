# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983290 (ContentManager_GetResKeyTypeDebugName)
Paired Ghidra pseudocode: 10983290_ContentManager_GetResKeyTypeDebugName.c
Window: [0x10983290, 0x10983380) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983290: 83 ec 30 53 8b 5c 24 38 56 57 8d 44 24 1c bf 44
109832a0: 82 ca 10 53 be 46 82 ca 10 50 c7 44 24 20 5c 65
109832b0: b9 10 89 7c 24 14 89 7c 24 18 89 74 24 1c e8 ad
109832c0: 91 c4 ff 8b 4c 24 28 83 c4 08 2b 4c 24 1c 74 4f
109832d0: 8d 54 24 1c 52 8d 44 24 30 50 e8 11 3c fa ff 8d
109832e0: 4c 24 14 83 c4 08 3b c1 74 14 8b 50 04 8b 00 52
109832f0: 50 e8 ca c5 69 ff 8b 74 24 14 8b 7c 24 0c 8b 4c
10983300: 24 34 8b 44 24 2c 2b c8 83 e1 fe 83 f9 02 7e 2a
10983310: 85 c0 74 26 50 e8 76 5b f9 ff 83 c4 04 eb 1b 53
10983320: 8d 54 24 10 68 7c b5 b2 10 52 e8 c1 7c 6e ff 8b
10983330: 74 24 20 8b 7c 24 18 83 c4 0c 57 ff 15 c4 b6 aa
10983340: 10 8b 4c 24 24 8b d8 8b 44 24 1c 2b c8 83 f9 01
10983350: 7e 0d 85 c0 74 09 50 e8 34 5b f9 ff 83 c4 04 2b
10983360: f7 83 e6 fe 83 fe 02 7e 0d 85 ff 74 09 57 e8 1d
10983370: 5b f9 ff 83 c4 04 5f 5e 8b c3 5b 83 c4 30 c3 cc

LINEAR DISASSEMBLY
10983290 <.text+0x982290>:
10983290:	83 ec 30                                        	sub    esp,0x30
10983293:	53                                              	push   ebx
10983294:	8b 5c 24 38                                     	mov    ebx,DWORD PTR [esp+0x38]
10983298:	56                                              	push   esi
10983299:	57                                              	push   edi
1098329a:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1098329e:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
109832a3:	53                                              	push   ebx
109832a4:	be 46 82 ca 10                                  	mov    esi,0x10ca8246
109832a9:	50                                              	push   eax
109832aa:	c7 44 24 20 5c 65 b9 10                         	mov    DWORD PTR [esp+0x20],0x10b9655c
109832b2:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
109832b6:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
109832ba:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
109832be:	e8 ad 91 c4 ff                                  	call   0x105cc470
109832c3:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109832c7:	83 c4 08                                        	add    esp,0x8
109832ca:	2b 4c 24 1c                                     	sub    ecx,DWORD PTR [esp+0x1c]
109832ce:	74 4f                                           	je     0x1098331f
109832d0:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
109832d4:	52                                              	push   edx
109832d5:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109832d9:	50                                              	push   eax
109832da:	e8 11 3c fa ff                                  	call   0x10926ef0
109832df:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109832e3:	83 c4 08                                        	add    esp,0x8
109832e6:	3b c1                                           	cmp    eax,ecx
109832e8:	74 14                                           	je     0x109832fe
109832ea:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109832ed:	8b 00                                           	mov    eax,DWORD PTR [eax]
109832ef:	52                                              	push   edx
109832f0:	50                                              	push   eax
109832f1:	e8 ca c5 69 ff                                  	call   0x1001f8c0
109832f6:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
109832fa:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
109832fe:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10983302:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10983306:	2b c8                                           	sub    ecx,eax
10983308:	83 e1 fe                                        	and    ecx,0xfffffffe
1098330b:	83 f9 02                                        	cmp    ecx,0x2
1098330e:	7e 2a                                           	jle    0x1098333a
10983310:	85 c0                                           	test   eax,eax
10983312:	74 26                                           	je     0x1098333a
10983314:	50                                              	push   eax
10983315:	e8 76 5b f9 ff                                  	call   0x10918e90
1098331a:	83 c4 04                                        	add    esp,0x4
1098331d:	eb 1b                                           	jmp    0x1098333a
1098331f:	53                                              	push   ebx
10983320:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10983324:	68 7c b5 b2 10                                  	push   0x10b2b57c
10983329:	52                                              	push   edx
1098332a:	e8 c1 7c 6e ff                                  	call   0x1006aff0
1098332f:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10983333:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
10983337:	83 c4 0c                                        	add    esp,0xc
1098333a:	57                                              	push   edi
1098333b:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10983341:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10983345:	8b d8                                           	mov    ebx,eax
10983347:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098334b:	2b c8                                           	sub    ecx,eax
1098334d:	83 f9 01                                        	cmp    ecx,0x1
10983350:	7e 0d                                           	jle    0x1098335f
10983352:	85 c0                                           	test   eax,eax
10983354:	74 09                                           	je     0x1098335f
10983356:	50                                              	push   eax
10983357:	e8 34 5b f9 ff                                  	call   0x10918e90
1098335c:	83 c4 04                                        	add    esp,0x4
1098335f:	2b f7                                           	sub    esi,edi
10983361:	83 e6 fe                                        	and    esi,0xfffffffe
10983364:	83 fe 02                                        	cmp    esi,0x2
10983367:	7e 0d                                           	jle    0x10983376
10983369:	85 ff                                           	test   edi,edi
1098336b:	74 09                                           	je     0x10983376
1098336d:	57                                              	push   edi
1098336e:	e8 1d 5b f9 ff                                  	call   0x10918e90
10983373:	83 c4 04                                        	add    esp,0x4
10983376:	5f                                              	pop    edi
10983377:	5e                                              	pop    esi
10983378:	8b c3                                           	mov    eax,ebx
1098337a:	5b                                              	pop    ebx
1098337b:	83 c4 30                                        	add    esp,0x30
1098337e:	c3                                              	ret
1098337f:	cc                                              	int3
