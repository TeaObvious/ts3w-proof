# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533360 (EAText_GetMoneyString)
Paired Ghidra pseudocode: 10533360_EAText_GetMoneyString.c
Window: [0x10533360, 0x10533450) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533360: 81 ec b4 00 00 00 df ac 24 b8 00 00 00 56 68 20
10533370: f5 ac 10 68 10 f5 ac 10 6a 40 8d 44 24 44 50 83
10533380: ec 08 dd 1c 24 e8 06 d6 34 00 83 c4 18 e8 8e 7d
10533390: 02 00 8d 4c 24 38 51 8d 4c 24 08 8b f0 c7 44 24
105333a0: 08 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24
105333b0: 10 00 00 00 00 c7 44 24 14 b4 a1 b1 10 e8 5e 72
105333c0: b3 ff 6a 01 6a 10 8d 54 24 0c 52 6a 09 6a 13 8d
105333d0: 4c 24 2c c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36
105333e0: 13 00 66 c7 44 24 34 0b 00 e8 a2 57 3f 00 8b 06
105333f0: 8b 40 50 8d 4c 24 14 51 8d 54 24 1c 52 8b ce ff
10533400: d0 f6 44 24 20 04 8b 74 24 14 c7 44 24 18 b4 a5
10533410: ac 10 74 0b 6a 00 8d 4c 24 1c e8 71 56 3f 00 8b
10533420: 4c 24 0c 8b 44 24 04 2b c8 83 e1 fe 83 f9 02 7e
10533430: 0d 85 c0 74 09 50 e8 55 5a 3e 00 83 c4 04 8b c6
10533440: 5e 81 c4 b4 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10533360 <.text+0x532360>:
10533360:	81 ec b4 00 00 00                               	sub    esp,0xb4
10533366:	df ac 24 b8 00 00 00                            	fild   QWORD PTR [esp+0xb8]
1053336d:	56                                              	push   esi
1053336e:	68 20 f5 ac 10                                  	push   0x10acf520
10533373:	68 10 f5 ac 10                                  	push   0x10acf510
10533378:	6a 40                                           	push   0x40
1053337a:	8d 44 24 44                                     	lea    eax,[esp+0x44]
1053337e:	50                                              	push   eax
1053337f:	83 ec 08                                        	sub    esp,0x8
10533382:	dd 1c 24                                        	fstp   QWORD PTR [esp]
10533385:	e8 06 d6 34 00                                  	call   0x10880990
1053338a:	83 c4 18                                        	add    esp,0x18
1053338d:	e8 8e 7d 02 00                                  	call   0x1055b120
10533392:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10533396:	51                                              	push   ecx
10533397:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1053339b:	8b f0                                           	mov    esi,eax
1053339d:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
105333a5:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
105333ad:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
105333b5:	c7 44 24 14 b4 a1 b1 10                         	mov    DWORD PTR [esp+0x14],0x10b1a1b4
105333bd:	e8 5e 72 b3 ff                                  	call   0x1006a620
105333c2:	6a 01                                           	push   0x1
105333c4:	6a 10                                           	push   0x10
105333c6:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
105333ca:	52                                              	push   edx
105333cb:	6a 09                                           	push   0x9
105333cd:	6a 13                                           	push   0x13
105333cf:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
105333d3:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
105333db:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
105333e2:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
105333e9:	e8 a2 57 3f 00                                  	call   0x10928b90
105333ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
105333f0:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
105333f3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
105333f7:	51                                              	push   ecx
105333f8:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
105333fc:	52                                              	push   edx
105333fd:	8b ce                                           	mov    ecx,esi
105333ff:	ff d0                                           	call   eax
10533401:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
10533406:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1053340a:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
10533412:	74 0b                                           	je     0x1053341f
10533414:	6a 00                                           	push   0x0
10533416:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1053341a:	e8 71 56 3f 00                                  	call   0x10928a90
1053341f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10533423:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10533427:	2b c8                                           	sub    ecx,eax
10533429:	83 e1 fe                                        	and    ecx,0xfffffffe
1053342c:	83 f9 02                                        	cmp    ecx,0x2
1053342f:	7e 0d                                           	jle    0x1053343e
10533431:	85 c0                                           	test   eax,eax
10533433:	74 09                                           	je     0x1053343e
10533435:	50                                              	push   eax
10533436:	e8 55 5a 3e 00                                  	call   0x10918e90
1053343b:	83 c4 04                                        	add    esp,0x4
1053343e:	8b c6                                           	mov    eax,esi
10533440:	5e                                              	pop    esi
10533441:	81 c4 b4 00 00 00                               	add    esp,0xb4
10533447:	c3                                              	ret
10533448:	cc                                              	int3
10533449:	cc                                              	int3
1053344a:	cc                                              	int3
1053344b:	cc                                              	int3
1053344c:	cc                                              	int3
1053344d:	cc                                              	int3
1053344e:	cc                                              	int3
1053344f:	cc                                              	int3
