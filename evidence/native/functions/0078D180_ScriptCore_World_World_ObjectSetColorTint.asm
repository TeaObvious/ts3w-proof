# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d180 (ScriptCore.World::World_ObjectSetColorTint)
Paired Ghidra pseudocode: 0078D180_ScriptCore_World_World_ObjectSetColorTint.c
Window: [0x0078d180, 0x0078d2b0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d2b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d180: 51 e8 ea a3 1a 00 85 c0 0f 84 20 01 00 00 8b 4c
0078d190: 24 0c 8b 54 24 08 51 52 8b c8 e8 e1 ad 1a 00 85
0078d1a0: c0 0f 84 07 01 00 00 8b 0d a8 a2 1e 01 56 51 8b
0078d1b0: c8 e8 aa 70 1a 00 8b f0 85 f6 0f 84 ed 00 00 00
0078d1c0: f3 0f 10 05 64 3f fb 00 d9 44 24 20 f3 0f 10 0d
0078d1d0: f0 17 01 01 f3 0f 10 54 24 14 f3 0f 59 d0 f3 0f
0078d1e0: 58 d1 f3 0f 11 54 24 04 8b 54 24 04 f3 0f 10 54
0078d1f0: 24 18 53 81 c2 00 00 c0 b8 57 f3 0f 59 d0 f3 0f
0078d200: 58 d1 f3 0f 11 54 24 0c f3 0f 10 54 24 24 8b 5c
0078d210: 24 0c 0f b6 fa f3 0f 59 d0 6a 00 f3 0f 58 d1 f3
0078d220: 0f 11 54 24 10 8b 44 24 10 05 00 00 c0 b8 89 44
0078d230: 24 10 6a 00 51 8b ca d9 1c 24 c1 f9 1f f6 d1 0f
0078d240: b6 c9 23 cf b8 ff 00 00 00 2b c2 c1 f8 1f 0f b6
0078d250: d0 0b ca 81 c3 00 00 c0 b8 8b d3 c1 fa 1f f6 d2
0078d260: 0f b6 d2 0f b6 fb 23 d7 b8 ff 00 00 00 2b c3 c1
0078d270: f8 1f 0f b6 f8 8b 44 24 18 0b d7 c1 e1 08 03 ca
0078d280: 8b d0 c1 fa 1f f6 d2 bb ff 00 00 00 2b d8 0f b6
0078d290: d2 0f b6 f8 c1 fb 1f 0f b6 c3 23 d7 c1 e1 08 0b
0078d2a0: d0 03 ca 51 8b ce e8 35 0c 1d 00 5f 5b 5e 59 c3

LINEAR DISASSEMBLY
0078d180 <.text+0x38c180>:
  78d180:	51                                              	push   ecx
  78d181:	e8 ea a3 1a 00                                  	call   0x937570
  78d186:	85 c0                                           	test   eax,eax
  78d188:	0f 84 20 01 00 00                               	je     0x78d2ae
  78d18e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78d192:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78d196:	51                                              	push   ecx
  78d197:	52                                              	push   edx
  78d198:	8b c8                                           	mov    ecx,eax
  78d19a:	e8 e1 ad 1a 00                                  	call   0x937f80
  78d19f:	85 c0                                           	test   eax,eax
  78d1a1:	0f 84 07 01 00 00                               	je     0x78d2ae
  78d1a7:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d1ad:	56                                              	push   esi
  78d1ae:	51                                              	push   ecx
  78d1af:	8b c8                                           	mov    ecx,eax
  78d1b1:	e8 aa 70 1a 00                                  	call   0x934260
  78d1b6:	8b f0                                           	mov    esi,eax
  78d1b8:	85 f6                                           	test   esi,esi
  78d1ba:	0f 84 ed 00 00 00                               	je     0x78d2ad
  78d1c0:	f3 0f 10 05 64 3f fb 00                         	movss  xmm0,DWORD PTR ds:0xfb3f64
  78d1c8:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78d1cc:	f3 0f 10 0d f0 17 01 01                         	movss  xmm1,DWORD PTR ds:0x10117f0
  78d1d4:	f3 0f 10 54 24 14                               	movss  xmm2,DWORD PTR [esp+0x14]
  78d1da:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  78d1de:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  78d1e2:	f3 0f 11 54 24 04                               	movss  DWORD PTR [esp+0x4],xmm2
  78d1e8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d1ec:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  78d1f2:	53                                              	push   ebx
  78d1f3:	81 c2 00 00 c0 b8                               	add    edx,0xb8c00000
  78d1f9:	57                                              	push   edi
  78d1fa:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  78d1fe:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  78d202:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
  78d208:	f3 0f 10 54 24 24                               	movss  xmm2,DWORD PTR [esp+0x24]
  78d20e:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  78d212:	0f b6 fa                                        	movzx  edi,dl
  78d215:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  78d219:	6a 00                                           	push   0x0
  78d21b:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  78d21f:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  78d225:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78d229:	05 00 00 c0 b8                                  	add    eax,0xb8c00000
  78d22e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  78d232:	6a 00                                           	push   0x0
  78d234:	51                                              	push   ecx
  78d235:	8b ca                                           	mov    ecx,edx
  78d237:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78d23a:	c1 f9 1f                                        	sar    ecx,0x1f
  78d23d:	f6 d1                                           	not    cl
  78d23f:	0f b6 c9                                        	movzx  ecx,cl
  78d242:	23 cf                                           	and    ecx,edi
  78d244:	b8 ff 00 00 00                                  	mov    eax,0xff
  78d249:	2b c2                                           	sub    eax,edx
  78d24b:	c1 f8 1f                                        	sar    eax,0x1f
  78d24e:	0f b6 d0                                        	movzx  edx,al
  78d251:	0b ca                                           	or     ecx,edx
  78d253:	81 c3 00 00 c0 b8                               	add    ebx,0xb8c00000
  78d259:	8b d3                                           	mov    edx,ebx
  78d25b:	c1 fa 1f                                        	sar    edx,0x1f
  78d25e:	f6 d2                                           	not    dl
  78d260:	0f b6 d2                                        	movzx  edx,dl
  78d263:	0f b6 fb                                        	movzx  edi,bl
  78d266:	23 d7                                           	and    edx,edi
  78d268:	b8 ff 00 00 00                                  	mov    eax,0xff
  78d26d:	2b c3                                           	sub    eax,ebx
  78d26f:	c1 f8 1f                                        	sar    eax,0x1f
  78d272:	0f b6 f8                                        	movzx  edi,al
  78d275:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  78d279:	0b d7                                           	or     edx,edi
  78d27b:	c1 e1 08                                        	shl    ecx,0x8
  78d27e:	03 ca                                           	add    ecx,edx
  78d280:	8b d0                                           	mov    edx,eax
  78d282:	c1 fa 1f                                        	sar    edx,0x1f
  78d285:	f6 d2                                           	not    dl
  78d287:	bb ff 00 00 00                                  	mov    ebx,0xff
  78d28c:	2b d8                                           	sub    ebx,eax
  78d28e:	0f b6 d2                                        	movzx  edx,dl
  78d291:	0f b6 f8                                        	movzx  edi,al
  78d294:	c1 fb 1f                                        	sar    ebx,0x1f
  78d297:	0f b6 c3                                        	movzx  eax,bl
  78d29a:	23 d7                                           	and    edx,edi
  78d29c:	c1 e1 08                                        	shl    ecx,0x8
  78d29f:	0b d0                                           	or     edx,eax
  78d2a1:	03 ca                                           	add    ecx,edx
  78d2a3:	51                                              	push   ecx
  78d2a4:	8b ce                                           	mov    ecx,esi
  78d2a6:	e8 35 0c 1d 00                                  	call   0x95dee0
  78d2ab:	5f                                              	pop    edi
  78d2ac:	5b                                              	pop    ebx
  78d2ad:	5e                                              	pop    esi
  78d2ae:	59                                              	pop    ecx
  78d2af:	c3                                              	ret
