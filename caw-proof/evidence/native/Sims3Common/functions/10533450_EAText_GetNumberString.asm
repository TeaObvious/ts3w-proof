# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533450 (EAText_GetNumberString)
Paired Ghidra pseudocode: 10533450_EAText_GetNumberString.c
Window: [0x10533450, 0x10533530) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533450: 81 ec b4 00 00 00 dd 84 24 b8 00 00 00 56 6a 00
10533460: 6a 40 8d 44 24 40 50 83 ec 08 dd 1c 24 e8 7e d0
10533470: 34 00 83 c4 14 e8 a6 7c 02 00 8d 4c 24 38 51 8d
10533480: 4c 24 08 8b f0 c7 44 24 08 00 00 00 00 c7 44 24
10533490: 0c 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24
105334a0: 14 d0 a1 b1 10 e8 76 71 b3 ff 6a 01 6a 10 8d 54
105334b0: 24 0c 52 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c b4
105334c0: a5 ac 10 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
105334d0: 00 e8 ba 56 3f 00 8b 06 8b 40 50 8d 4c 24 14 51
105334e0: 8d 54 24 1c 52 8b ce ff d0 f6 44 24 20 04 8b 74
105334f0: 24 14 c7 44 24 18 b4 a5 ac 10 74 0b 6a 00 8d 4c
10533500: 24 1c e8 89 55 3f 00 8b 4c 24 0c 8b 44 24 04 2b
10533510: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 6d
10533520: 59 3e 00 83 c4 04 8b c6 5e 81 c4 b4 00 00 00 c3

LINEAR DISASSEMBLY
10533450 <.text+0x532450>:
10533450:	81 ec b4 00 00 00                               	sub    esp,0xb4
10533456:	dd 84 24 b8 00 00 00                            	fld    QWORD PTR [esp+0xb8]
1053345d:	56                                              	push   esi
1053345e:	6a 00                                           	push   0x0
10533460:	6a 40                                           	push   0x40
10533462:	8d 44 24 40                                     	lea    eax,[esp+0x40]
10533466:	50                                              	push   eax
10533467:	83 ec 08                                        	sub    esp,0x8
1053346a:	dd 1c 24                                        	fstp   QWORD PTR [esp]
1053346d:	e8 7e d0 34 00                                  	call   0x108804f0
10533472:	83 c4 14                                        	add    esp,0x14
10533475:	e8 a6 7c 02 00                                  	call   0x1055b120
1053347a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1053347e:	51                                              	push   ecx
1053347f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10533483:	8b f0                                           	mov    esi,eax
10533485:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1053348d:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10533495:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1053349d:	c7 44 24 14 d0 a1 b1 10                         	mov    DWORD PTR [esp+0x14],0x10b1a1d0
105334a5:	e8 76 71 b3 ff                                  	call   0x1006a620
105334aa:	6a 01                                           	push   0x1
105334ac:	6a 10                                           	push   0x10
105334ae:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
105334b2:	52                                              	push   edx
105334b3:	6a 09                                           	push   0x9
105334b5:	6a 13                                           	push   0x13
105334b7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
105334bb:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
105334c3:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
105334ca:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
105334d1:	e8 ba 56 3f 00                                  	call   0x10928b90
105334d6:	8b 06                                           	mov    eax,DWORD PTR [esi]
105334d8:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
105334db:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
105334df:	51                                              	push   ecx
105334e0:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
105334e4:	52                                              	push   edx
105334e5:	8b ce                                           	mov    ecx,esi
105334e7:	ff d0                                           	call   eax
105334e9:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
105334ee:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
105334f2:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
105334fa:	74 0b                                           	je     0x10533507
105334fc:	6a 00                                           	push   0x0
105334fe:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10533502:	e8 89 55 3f 00                                  	call   0x10928a90
10533507:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053350b:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053350f:	2b c8                                           	sub    ecx,eax
10533511:	83 e1 fe                                        	and    ecx,0xfffffffe
10533514:	83 f9 02                                        	cmp    ecx,0x2
10533517:	7e 0d                                           	jle    0x10533526
10533519:	85 c0                                           	test   eax,eax
1053351b:	74 09                                           	je     0x10533526
1053351d:	50                                              	push   eax
1053351e:	e8 6d 59 3e 00                                  	call   0x10918e90
10533523:	83 c4 04                                        	add    esp,0x4
10533526:	8b c6                                           	mov    eax,esi
10533528:	5e                                              	pop    esi
10533529:	81 c4 b4 00 00 00                               	add    esp,0xb4
1053352f:	c3                                              	ret
