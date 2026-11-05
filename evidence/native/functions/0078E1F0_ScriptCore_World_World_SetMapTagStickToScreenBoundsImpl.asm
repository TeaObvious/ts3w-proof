# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e1f0 (ScriptCore.World::World_SetMapTagStickToScreenBoundsImpl)
Paired Ghidra pseudocode: 0078E1F0_ScriptCore_World_World_SetMapTagStickToScreenBoundsImpl.c
Window: [0x0078e1f0, 0x0078e2a0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e2a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e1f0: e8 9b b1 fd ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0078e200: 00 51 8b c8 ff d2 85 c0 0f 84 84 00 00 00 8b 10
0078e210: 57 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 85
0078e220: ff 74 6e 8b 17 8b 82 10 01 00 00 53 56 6a 00 8b
0078e230: cf ff d0 8b 5c 24 14 8b f0 85 f6 74 30 8b 16 8b
0078e240: 42 0c 68 6a 52 86 04 8b ce ff d0 85 c0 75 15 8b
0078e250: 17 8b 82 10 01 00 00 56 8b cf ff d0 8b f0 85 f6
0078e260: 75 db eb 09 57 53 8b c8 e8 73 de 04 00 8b 17 8b
0078e270: 42 4c 8b cf ff d0 85 c0 74 15 8b 10 8b c8 8b 42
0078e280: 0c 68 88 4a d1 05 ff d0 85 c0 74 03 88 58 33 5e
0078e290: 5b 5f c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e1f0 <.text+0x38d1f0>:
  78e1f0:	e8 9b b1 fd ff                                  	call   0x769390
  78e1f5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78e1f9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e1fb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  78e201:	51                                              	push   ecx
  78e202:	8b c8                                           	mov    ecx,eax
  78e204:	ff d2                                           	call   edx
  78e206:	85 c0                                           	test   eax,eax
  78e208:	0f 84 84 00 00 00                               	je     0x78e292
  78e20e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e210:	57                                              	push   edi
  78e211:	8b c8                                           	mov    ecx,eax
  78e213:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e216:	68 18 82 ee ee                                  	push   0xeeee8218
  78e21b:	ff d0                                           	call   eax
  78e21d:	8b f8                                           	mov    edi,eax
  78e21f:	85 ff                                           	test   edi,edi
  78e221:	74 6e                                           	je     0x78e291
  78e223:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e225:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e22b:	53                                              	push   ebx
  78e22c:	56                                              	push   esi
  78e22d:	6a 00                                           	push   0x0
  78e22f:	8b cf                                           	mov    ecx,edi
  78e231:	ff d0                                           	call   eax
  78e233:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  78e237:	8b f0                                           	mov    esi,eax
  78e239:	85 f6                                           	test   esi,esi
  78e23b:	74 30                                           	je     0x78e26d
  78e23d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e23f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e242:	68 6a 52 86 04                                  	push   0x486526a
  78e247:	8b ce                                           	mov    ecx,esi
  78e249:	ff d0                                           	call   eax
  78e24b:	85 c0                                           	test   eax,eax
  78e24d:	75 15                                           	jne    0x78e264
  78e24f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e251:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78e257:	56                                              	push   esi
  78e258:	8b cf                                           	mov    ecx,edi
  78e25a:	ff d0                                           	call   eax
  78e25c:	8b f0                                           	mov    esi,eax
  78e25e:	85 f6                                           	test   esi,esi
  78e260:	75 db                                           	jne    0x78e23d
  78e262:	eb 09                                           	jmp    0x78e26d
  78e264:	57                                              	push   edi
  78e265:	53                                              	push   ebx
  78e266:	8b c8                                           	mov    ecx,eax
  78e268:	e8 73 de 04 00                                  	call   0x7dc0e0
  78e26d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78e26f:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  78e272:	8b cf                                           	mov    ecx,edi
  78e274:	ff d0                                           	call   eax
  78e276:	85 c0                                           	test   eax,eax
  78e278:	74 15                                           	je     0x78e28f
  78e27a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e27c:	8b c8                                           	mov    ecx,eax
  78e27e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78e281:	68 88 4a d1 05                                  	push   0x5d14a88
  78e286:	ff d0                                           	call   eax
  78e288:	85 c0                                           	test   eax,eax
  78e28a:	74 03                                           	je     0x78e28f
  78e28c:	88 58 33                                        	mov    BYTE PTR [eax+0x33],bl
  78e28f:	5e                                              	pop    esi
  78e290:	5b                                              	pop    ebx
  78e291:	5f                                              	pop    edi
  78e292:	c3                                              	ret
  78e293:	cc                                              	int3
  78e294:	cc                                              	int3
  78e295:	cc                                              	int3
  78e296:	cc                                              	int3
  78e297:	cc                                              	int3
  78e298:	cc                                              	int3
  78e299:	cc                                              	int3
  78e29a:	cc                                              	int3
  78e29b:	cc                                              	int3
  78e29c:	cc                                              	int3
  78e29d:	cc                                              	int3
  78e29e:	cc                                              	int3
  78e29f:	cc                                              	int3
