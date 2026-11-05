# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983100 (ContentManager_GetInstalledPackagesCount)
Paired Ghidra pseudocode: 10983100_ContentManager_GetInstalledPackagesCount.c
Window: [0x10983100, 0x10983180) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983100: 83 ec 10 c7 04 24 00 00 00 00 c7 44 24 04 00 00
10983110: 00 00 c7 44 24 08 00 00 00 00 c7 44 24 0c 78 65
10983120: b9 10 e8 99 13 df ff 85 c0 74 0b 8d 0c 24 51 8b
10983130: c8 e8 8a bd df ff 53 8b 5c 24 04 56 57 8b 7c 24
10983140: 10 8b cf 2b cb b8 ab aa aa 2a f7 e9 c1 fa 03 8b
10983150: f2 57 c1 ee 1f 53 8d 4c 24 14 03 f2 e8 1f d1 ce
10983160: ff 8b 44 24 0c 85 c0 74 09 50 e8 21 5d f9 ff 83
10983170: c4 04 5f 8b c6 5e 5b 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10983100 <.text+0x982100>:
10983100:	83 ec 10                                        	sub    esp,0x10
10983103:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
1098310a:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
10983112:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1098311a:	c7 44 24 0c 78 65 b9 10                         	mov    DWORD PTR [esp+0xc],0x10b96578
10983122:	e8 99 13 df ff                                  	call   0x107744c0
10983127:	85 c0                                           	test   eax,eax
10983129:	74 0b                                           	je     0x10983136
1098312b:	8d 0c 24                                        	lea    ecx,[esp]
1098312e:	51                                              	push   ecx
1098312f:	8b c8                                           	mov    ecx,eax
10983131:	e8 8a bd df ff                                  	call   0x1077eec0
10983136:	53                                              	push   ebx
10983137:	8b 5c 24 04                                     	mov    ebx,DWORD PTR [esp+0x4]
1098313b:	56                                              	push   esi
1098313c:	57                                              	push   edi
1098313d:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
10983141:	8b cf                                           	mov    ecx,edi
10983143:	2b cb                                           	sub    ecx,ebx
10983145:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
1098314a:	f7 e9                                           	imul   ecx
1098314c:	c1 fa 03                                        	sar    edx,0x3
1098314f:	8b f2                                           	mov    esi,edx
10983151:	57                                              	push   edi
10983152:	c1 ee 1f                                        	shr    esi,0x1f
10983155:	53                                              	push   ebx
10983156:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098315a:	03 f2                                           	add    esi,edx
1098315c:	e8 1f d1 ce ff                                  	call   0x10670280
10983161:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10983165:	85 c0                                           	test   eax,eax
10983167:	74 09                                           	je     0x10983172
10983169:	50                                              	push   eax
1098316a:	e8 21 5d f9 ff                                  	call   0x10918e90
1098316f:	83 c4 04                                        	add    esp,0x4
10983172:	5f                                              	pop    edi
10983173:	8b c6                                           	mov    eax,esi
10983175:	5e                                              	pop    esi
10983176:	5b                                              	pop    ebx
10983177:	83 c4 10                                        	add    esp,0x10
1098317a:	c3                                              	ret
1098317b:	cc                                              	int3
1098317c:	cc                                              	int3
1098317d:	cc                                              	int3
1098317e:	cc                                              	int3
1098317f:	cc                                              	int3
