# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008b5210 (AudioManager_SetVoicePropertyByHandle)
Paired Ghidra pseudocode: 008B5210_AudioManager_SetVoicePropertyByHandle.c
Window: [0x008b5210, 0x008b52b0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x008b52b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008b5210: 83 ec 08 56 8d b1 3c 03 00 00 8d 44 24 10 50 8d
008b5220: 4c 24 08 51 8b ce e8 85 67 1a 00 8b 56 08 8b 4e
008b5230: 04 8b 44 24 04 3b 04 91 5e 75 08 32 c0 83 c4 08
008b5240: c2 10 00 8b 48 04 d9 44 24 14 8b 44 24 18 8b 11
008b5250: 8b 52 0c 50 8b 44 24 14 51 d9 1c 24 50 ff d2 b0
008b5260: 01 83 c4 08 c2 10 00 cc cc cc cc cc cc cc cc cc
008b5270: 8b 81 44 03 00 00 8b 91 40 03 00 00 83 ec 08 81
008b5280: c1 3c 03 00 00 56 8b 34 82 8d 44 24 10 50 8d 54
008b5290: 24 08 52 e8 18 67 1a 00 33 c9 39 30 5e 0f 95 c1
008b52a0: 8a c1 83 c4 08 c2 04 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008b5210 <.text+0x4b4210>:
  8b5210:	83 ec 08                                        	sub    esp,0x8
  8b5213:	56                                              	push   esi
  8b5214:	8d b1 3c 03 00 00                               	lea    esi,[ecx+0x33c]
  8b521a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  8b521e:	50                                              	push   eax
  8b521f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  8b5223:	51                                              	push   ecx
  8b5224:	8b ce                                           	mov    ecx,esi
  8b5226:	e8 85 67 1a 00                                  	call   0xa5b9b0
  8b522b:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  8b522e:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  8b5231:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  8b5235:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  8b5238:	5e                                              	pop    esi
  8b5239:	75 08                                           	jne    0x8b5243
  8b523b:	32 c0                                           	xor    al,al
  8b523d:	83 c4 08                                        	add    esp,0x8
  8b5240:	c2 10 00                                        	ret    0x10
  8b5243:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  8b5246:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  8b524a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8b524e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  8b5250:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  8b5253:	50                                              	push   eax
  8b5254:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  8b5258:	51                                              	push   ecx
  8b5259:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8b525c:	50                                              	push   eax
  8b525d:	ff d2                                           	call   edx
  8b525f:	b0 01                                           	mov    al,0x1
  8b5261:	83 c4 08                                        	add    esp,0x8
  8b5264:	c2 10 00                                        	ret    0x10
  8b5267:	cc                                              	int3
  8b5268:	cc                                              	int3
  8b5269:	cc                                              	int3
  8b526a:	cc                                              	int3
  8b526b:	cc                                              	int3
  8b526c:	cc                                              	int3
  8b526d:	cc                                              	int3
  8b526e:	cc                                              	int3
  8b526f:	cc                                              	int3
  8b5270:	8b 81 44 03 00 00                               	mov    eax,DWORD PTR [ecx+0x344]
  8b5276:	8b 91 40 03 00 00                               	mov    edx,DWORD PTR [ecx+0x340]
  8b527c:	83 ec 08                                        	sub    esp,0x8
  8b527f:	81 c1 3c 03 00 00                               	add    ecx,0x33c
  8b5285:	56                                              	push   esi
  8b5286:	8b 34 82                                        	mov    esi,DWORD PTR [edx+eax*4]
  8b5289:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  8b528d:	50                                              	push   eax
  8b528e:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  8b5292:	52                                              	push   edx
  8b5293:	e8 18 67 1a 00                                  	call   0xa5b9b0
  8b5298:	33 c9                                           	xor    ecx,ecx
  8b529a:	39 30                                           	cmp    DWORD PTR [eax],esi
  8b529c:	5e                                              	pop    esi
  8b529d:	0f 95 c1                                        	setne  cl
  8b52a0:	8a c1                                           	mov    al,cl
  8b52a2:	83 c4 08                                        	add    esp,0x8
  8b52a5:	c2 04 00                                        	ret    0x4
  8b52a8:	cc                                              	int3
  8b52a9:	cc                                              	int3
  8b52aa:	cc                                              	int3
  8b52ab:	cc                                              	int3
  8b52ac:	cc                                              	int3
  8b52ad:	cc                                              	int3
  8b52ae:	cc                                              	int3
  8b52af:	cc                                              	int3
