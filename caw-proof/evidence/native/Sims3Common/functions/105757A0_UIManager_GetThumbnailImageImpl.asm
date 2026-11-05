# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105757a0 (UIManager_GetThumbnailImageImpl)
Paired Ghidra pseudocode: 105757A0_UIManager_GetThumbnailImageImpl.c
Window: [0x105757a0, 0x10575810) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105757a0: 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 50 8b 44 24
105757b0: 3c 51 8b 4c 24 3c 52 0f b6 54 24 3c 50 8b 44 24
105757c0: 3c 51 8b 4c 24 3c 52 8b 54 24 3c 50 8b 44 24 3c
105757d0: 51 8b 4c 24 3c 52 8b 54 24 3c 50 8b 44 24 3c 51
105757e0: 8b 4c 24 30 52 8b 54 24 38 50 83 ec 10 8b c4 89
105757f0: 08 8b 4c 24 50 89 50 04 8b 54 24 54 89 48 08 89
10575800: 50 0c e8 f9 f5 ff ff 83 c4 44 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105757a0 <.text+0x5747a0>:
105757a0:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
105757a4:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
105757a8:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
105757ac:	50                                              	push   eax
105757ad:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
105757b1:	51                                              	push   ecx
105757b2:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
105757b6:	52                                              	push   edx
105757b7:	0f b6 54 24 3c                                  	movzx  edx,BYTE PTR [esp+0x3c]
105757bc:	50                                              	push   eax
105757bd:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
105757c1:	51                                              	push   ecx
105757c2:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
105757c6:	52                                              	push   edx
105757c7:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
105757cb:	50                                              	push   eax
105757cc:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
105757d0:	51                                              	push   ecx
105757d1:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
105757d5:	52                                              	push   edx
105757d6:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
105757da:	50                                              	push   eax
105757db:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
105757df:	51                                              	push   ecx
105757e0:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
105757e4:	52                                              	push   edx
105757e5:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
105757e9:	50                                              	push   eax
105757ea:	83 ec 10                                        	sub    esp,0x10
105757ed:	8b c4                                           	mov    eax,esp
105757ef:	89 08                                           	mov    DWORD PTR [eax],ecx
105757f1:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
105757f5:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105757f8:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
105757fc:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105757ff:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10575802:	e8 f9 f5 ff ff                                  	call   0x10574e00
10575807:	83 c4 44                                        	add    esp,0x44
1057580a:	c3                                              	ret
1057580b:	cc                                              	int3
1057580c:	cc                                              	int3
1057580d:	cc                                              	int3
1057580e:	cc                                              	int3
1057580f:	cc                                              	int3
