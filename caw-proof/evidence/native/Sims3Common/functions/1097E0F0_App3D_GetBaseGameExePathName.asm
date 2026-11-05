# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e0f0 (App3D_GetBaseGameExePathName)
Paired Ghidra pseudocode: 1097E0F0_App3D_GetBaseGameExePathName.c
Window: [0x1097e0f0, 0x1097e1b0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e1b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e0f0: 83 ec 10 b8 44 82 ca 10 89 04 24 89 44 24 04 8d
1097e100: 04 24 50 c7 44 24 10 b0 60 b9 10 c7 44 24 0c 46
1097e110: 82 ca 10 e8 28 63 c4 ff 83 c4 04 85 c0 7c 5f b8
1097e120: a0 60 b9 10 83 c0 02 66 83 38 00 75 f7 2d a0 60
1097e130: b9 10 d1 f8 56 8d 0c 45 a0 60 b9 10 51 68 a0 60
1097e140: b9 10 8d 4c 24 0c e8 65 12 6a ff 8b 54 24 04 52
1097e150: ff 15 c4 b6 aa 10 8b 4c 24 0c 8b f0 8b 44 24 04
1097e160: 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8
1097e170: 1c ad f9 ff 83 c4 04 8b c6 5e 83 c4 10 c3 8b 54
1097e180: 24 08 8b 04 24 2b d0 83 e2 fe 83 fa 02 7e 0d 85
1097e190: c0 74 09 50 e8 f7 ac f9 ff 83 c4 04 33 c0 83 c4
1097e1a0: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097e0f0 <.text+0x97d0f0>:
1097e0f0:	83 ec 10                                        	sub    esp,0x10
1097e0f3:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097e0f8:	89 04 24                                        	mov    DWORD PTR [esp],eax
1097e0fb:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1097e0ff:	8d 04 24                                        	lea    eax,[esp]
1097e102:	50                                              	push   eax
1097e103:	c7 44 24 10 b0 60 b9 10                         	mov    DWORD PTR [esp+0x10],0x10b960b0
1097e10b:	c7 44 24 0c 46 82 ca 10                         	mov    DWORD PTR [esp+0xc],0x10ca8246
1097e113:	e8 28 63 c4 ff                                  	call   0x105c4440
1097e118:	83 c4 04                                        	add    esp,0x4
1097e11b:	85 c0                                           	test   eax,eax
1097e11d:	7c 5f                                           	jl     0x1097e17e
1097e11f:	b8 a0 60 b9 10                                  	mov    eax,0x10b960a0
1097e124:	83 c0 02                                        	add    eax,0x2
1097e127:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1097e12b:	75 f7                                           	jne    0x1097e124
1097e12d:	2d a0 60 b9 10                                  	sub    eax,0x10b960a0
1097e132:	d1 f8                                           	sar    eax,1
1097e134:	56                                              	push   esi
1097e135:	8d 0c 45 a0 60 b9 10                            	lea    ecx,[eax*2+0x10b960a0]
1097e13c:	51                                              	push   ecx
1097e13d:	68 a0 60 b9 10                                  	push   0x10b960a0
1097e142:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1097e146:	e8 65 12 6a ff                                  	call   0x1001f3b0
1097e14b:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1097e14f:	52                                              	push   edx
1097e150:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097e156:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097e15a:	8b f0                                           	mov    esi,eax
1097e15c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097e160:	2b c8                                           	sub    ecx,eax
1097e162:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e165:	83 f9 02                                        	cmp    ecx,0x2
1097e168:	7e 0d                                           	jle    0x1097e177
1097e16a:	85 c0                                           	test   eax,eax
1097e16c:	74 09                                           	je     0x1097e177
1097e16e:	50                                              	push   eax
1097e16f:	e8 1c ad f9 ff                                  	call   0x10918e90
1097e174:	83 c4 04                                        	add    esp,0x4
1097e177:	8b c6                                           	mov    eax,esi
1097e179:	5e                                              	pop    esi
1097e17a:	83 c4 10                                        	add    esp,0x10
1097e17d:	c3                                              	ret
1097e17e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1097e182:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1097e185:	2b d0                                           	sub    edx,eax
1097e187:	83 e2 fe                                        	and    edx,0xfffffffe
1097e18a:	83 fa 02                                        	cmp    edx,0x2
1097e18d:	7e 0d                                           	jle    0x1097e19c
1097e18f:	85 c0                                           	test   eax,eax
1097e191:	74 09                                           	je     0x1097e19c
1097e193:	50                                              	push   eax
1097e194:	e8 f7 ac f9 ff                                  	call   0x10918e90
1097e199:	83 c4 04                                        	add    esp,0x4
1097e19c:	33 c0                                           	xor    eax,eax
1097e19e:	83 c4 10                                        	add    esp,0x10
1097e1a1:	c3                                              	ret
1097e1a2:	cc                                              	int3
1097e1a3:	cc                                              	int3
1097e1a4:	cc                                              	int3
1097e1a5:	cc                                              	int3
1097e1a6:	cc                                              	int3
1097e1a7:	cc                                              	int3
1097e1a8:	cc                                              	int3
1097e1a9:	cc                                              	int3
1097e1aa:	cc                                              	int3
1097e1ab:	cc                                              	int3
1097e1ac:	cc                                              	int3
1097e1ad:	cc                                              	int3
1097e1ae:	cc                                              	int3
1097e1af:	cc                                              	int3
