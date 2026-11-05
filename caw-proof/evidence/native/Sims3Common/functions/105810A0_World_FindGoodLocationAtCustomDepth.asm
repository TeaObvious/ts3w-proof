# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105810a0 (World_FindGoodLocationAtCustomDepth)
Paired Ghidra pseudocode: 105810A0_World_FindGoodLocationAtCustomDepth.c
Window: [0x105810a0, 0x10581130) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105810a0: d9 44 24 50 8b 44 24 4c 8b 54 24 44 51 8b 4c 24
105810b0: 4c d9 1c 24 d9 44 24 40 50 8b 44 24 48 51 8b 4c
105810c0: 24 40 52 8b 54 24 40 50 8b 44 24 40 83 ec 08 d9
105810d0: 5c 24 04 d9 44 24 54 d9 1c 24 51 8b 4c 24 48 52
105810e0: 8b 54 24 48 50 8b 44 24 48 51 8b 4c 24 48 52 8b
105810f0: 54 24 48 50 51 8b 4c 24 44 52 8b 54 24 4c 83 ec
10581100: 0c 8b c4 89 08 8b 4c 24 5c 89 50 04 8b 54 24 50
10581110: 89 48 08 8b 44 24 4c 52 50 e8 42 c3 ff ff 83 c4
10581120: 50 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105810a0 <.text+0x5800a0>:
105810a0:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
105810a4:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
105810a8:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
105810ac:	51                                              	push   ecx
105810ad:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
105810b1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105810b4:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
105810b8:	50                                              	push   eax
105810b9:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
105810bd:	51                                              	push   ecx
105810be:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
105810c2:	52                                              	push   edx
105810c3:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
105810c7:	50                                              	push   eax
105810c8:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
105810cc:	83 ec 08                                        	sub    esp,0x8
105810cf:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105810d3:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
105810d7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105810da:	51                                              	push   ecx
105810db:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
105810df:	52                                              	push   edx
105810e0:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
105810e4:	50                                              	push   eax
105810e5:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
105810e9:	51                                              	push   ecx
105810ea:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
105810ee:	52                                              	push   edx
105810ef:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
105810f3:	50                                              	push   eax
105810f4:	51                                              	push   ecx
105810f5:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
105810f9:	52                                              	push   edx
105810fa:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
105810fe:	83 ec 0c                                        	sub    esp,0xc
10581101:	8b c4                                           	mov    eax,esp
10581103:	89 08                                           	mov    DWORD PTR [eax],ecx
10581105:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10581109:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1058110c:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
10581110:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10581113:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10581117:	52                                              	push   edx
10581118:	50                                              	push   eax
10581119:	e8 42 c3 ff ff                                  	call   0x1057d460
1058111e:	83 c4 50                                        	add    esp,0x50
10581121:	c3                                              	ret
10581122:	cc                                              	int3
10581123:	cc                                              	int3
10581124:	cc                                              	int3
10581125:	cc                                              	int3
10581126:	cc                                              	int3
10581127:	cc                                              	int3
10581128:	cc                                              	int3
10581129:	cc                                              	int3
1058112a:	cc                                              	int3
1058112b:	cc                                              	int3
1058112c:	cc                                              	int3
1058112d:	cc                                              	int3
1058112e:	cc                                              	int3
1058112f:	cc                                              	int3
