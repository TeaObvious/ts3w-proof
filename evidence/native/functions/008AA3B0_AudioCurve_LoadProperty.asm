# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008aa3b0 (AudioCurve_LoadProperty)
Paired Ghidra pseudocode: 008AA3B0_AudioCurve_LoadProperty.c
Window: [0x008aa3b0, 0x008aa430) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x008aa430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008aa3b0: 83 ec 18 0f 57 c0 56 6a 02 8d 44 24 10 f3 0f 11
008aa3c0: 44 24 10 f3 0f 11 44 24 14 f3 0f 10 05 f8 98 f9
008aa3d0: 00 50 8b f1 f3 0f 11 44 24 1c f3 0f 11 44 24 20
008aa3e0: e8 ab fb ff ff 8b 4c 24 20 85 c9 75 09 32 c0 5e
008aa3f0: 83 c4 18 c2 08 00 8b 11 8b 52 48 8d 44 24 08 50
008aa400: 8d 44 24 08 50 8b 44 24 2c 50 ff d2 84 c0 74 dd
008aa410: 8b 44 24 04 8b 4c 24 08 d1 f8 50 51 8b ce e8 6d
008aa420: fb ff ff b0 01 5e 83 c4 18 c2 08 00 cc cc cc cc

LINEAR DISASSEMBLY
008aa3b0 <.text+0x4a93b0>:
  8aa3b0:	83 ec 18                                        	sub    esp,0x18
  8aa3b3:	0f 57 c0                                        	xorps  xmm0,xmm0
  8aa3b6:	56                                              	push   esi
  8aa3b7:	6a 02                                           	push   0x2
  8aa3b9:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  8aa3bd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  8aa3c3:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  8aa3c9:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8aa3d1:	50                                              	push   eax
  8aa3d2:	8b f1                                           	mov    esi,ecx
  8aa3d4:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  8aa3da:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  8aa3e0:	e8 ab fb ff ff                                  	call   0x8a9f90
  8aa3e5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  8aa3e9:	85 c9                                           	test   ecx,ecx
  8aa3eb:	75 09                                           	jne    0x8aa3f6
  8aa3ed:	32 c0                                           	xor    al,al
  8aa3ef:	5e                                              	pop    esi
  8aa3f0:	83 c4 18                                        	add    esp,0x18
  8aa3f3:	c2 08 00                                        	ret    0x8
  8aa3f6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  8aa3f8:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
  8aa3fb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  8aa3ff:	50                                              	push   eax
  8aa400:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  8aa404:	50                                              	push   eax
  8aa405:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  8aa409:	50                                              	push   eax
  8aa40a:	ff d2                                           	call   edx
  8aa40c:	84 c0                                           	test   al,al
  8aa40e:	74 dd                                           	je     0x8aa3ed
  8aa410:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  8aa414:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  8aa418:	d1 f8                                           	sar    eax,1
  8aa41a:	50                                              	push   eax
  8aa41b:	51                                              	push   ecx
  8aa41c:	8b ce                                           	mov    ecx,esi
  8aa41e:	e8 6d fb ff ff                                  	call   0x8a9f90
  8aa423:	b0 01                                           	mov    al,0x1
  8aa425:	5e                                              	pop    esi
  8aa426:	83 c4 18                                        	add    esp,0x18
  8aa429:	c2 08 00                                        	ret    0x8
  8aa42c:	cc                                              	int3
  8aa42d:	cc                                              	int3
  8aa42e:	cc                                              	int3
  8aa42f:	cc                                              	int3
