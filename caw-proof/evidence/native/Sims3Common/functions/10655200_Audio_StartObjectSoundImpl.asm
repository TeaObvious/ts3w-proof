# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655200 (Audio_StartObjectSoundImpl)
Paired Ghidra pseudocode: 10655200_Audio_StartObjectSoundImpl.c
Window: [0x10655200, 0x106552d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x106552d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655200: 51 56 57 c7 44 24 08 00 00 00 00 e8 90 4f 0d 00
10655210: 85 c0 0f 84 a9 00 00 00 8b 4c 24 14 8b 54 24 10
10655220: 51 52 8b c8 e8 87 59 0d 00 50 8d 4c 24 0c e8 3d
10655230: e5 01 00 8b 74 24 08 85 f6 0f 84 82 00 00 00 a1
10655240: b0 d6 c8 10 50 8b ce e8 54 1b 0d 00 8b f8 85 ff
10655250: 74 4f e8 c9 5e f0 ff 8b 4c 24 18 8b 10 8b 52 58
10655260: 51 8b c8 ff d2 33 c9 38 4c 24 1c 6a 00 0f 95 c1
10655270: 51 50 8b cf e8 e7 06 0e 00 8b f8 8d 46 04 8b d0
10655280: 83 c9 ff f0 0f c1 0a 49 75 11 ba 01 00 00 00 87
10655290: 10 8b 06 8b 10 6a 01 8b ce ff d2 8b c7 5f 5e 59
106552a0: c3 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11
106552b0: b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff
106552c0: d0 5f 33 c0 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655200 <.text+0x654200>:
10655200:	51                                              	push   ecx
10655201:	56                                              	push   esi
10655202:	57                                              	push   edi
10655203:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
1065520b:	e8 90 4f 0d 00                                  	call   0x1072a1a0
10655210:	85 c0                                           	test   eax,eax
10655212:	0f 84 a9 00 00 00                               	je     0x106552c1
10655218:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1065521c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10655220:	51                                              	push   ecx
10655221:	52                                              	push   edx
10655222:	8b c8                                           	mov    ecx,eax
10655224:	e8 87 59 0d 00                                  	call   0x1072abb0
10655229:	50                                              	push   eax
1065522a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1065522e:	e8 3d e5 01 00                                  	call   0x10673770
10655233:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10655237:	85 f6                                           	test   esi,esi
10655239:	0f 84 82 00 00 00                               	je     0x106552c1
1065523f:	a1 b0 d6 c8 10                                  	mov    eax,ds:0x10c8d6b0
10655244:	50                                              	push   eax
10655245:	8b ce                                           	mov    ecx,esi
10655247:	e8 54 1b 0d 00                                  	call   0x10726da0
1065524c:	8b f8                                           	mov    edi,eax
1065524e:	85 ff                                           	test   edi,edi
10655250:	74 4f                                           	je     0x106552a1
10655252:	e8 c9 5e f0 ff                                  	call   0x1055b120
10655257:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1065525b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1065525d:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10655260:	51                                              	push   ecx
10655261:	8b c8                                           	mov    ecx,eax
10655263:	ff d2                                           	call   edx
10655265:	33 c9                                           	xor    ecx,ecx
10655267:	38 4c 24 1c                                     	cmp    BYTE PTR [esp+0x1c],cl
1065526b:	6a 00                                           	push   0x0
1065526d:	0f 95 c1                                        	setne  cl
10655270:	51                                              	push   ecx
10655271:	50                                              	push   eax
10655272:	8b cf                                           	mov    ecx,edi
10655274:	e8 e7 06 0e 00                                  	call   0x10735960
10655279:	8b f8                                           	mov    edi,eax
1065527b:	8d 46 04                                        	lea    eax,[esi+0x4]
1065527e:	8b d0                                           	mov    edx,eax
10655280:	83 c9 ff                                        	or     ecx,0xffffffff
10655283:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
10655287:	49                                              	dec    ecx
10655288:	75 11                                           	jne    0x1065529b
1065528a:	ba 01 00 00 00                                  	mov    edx,0x1
1065528f:	87 10                                           	xchg   DWORD PTR [eax],edx
10655291:	8b 06                                           	mov    eax,DWORD PTR [esi]
10655293:	8b 10                                           	mov    edx,DWORD PTR [eax]
10655295:	6a 01                                           	push   0x1
10655297:	8b ce                                           	mov    ecx,esi
10655299:	ff d2                                           	call   edx
1065529b:	8b c7                                           	mov    eax,edi
1065529d:	5f                                              	pop    edi
1065529e:	5e                                              	pop    esi
1065529f:	59                                              	pop    ecx
106552a0:	c3                                              	ret
106552a1:	8d 46 04                                        	lea    eax,[esi+0x4]
106552a4:	8b c8                                           	mov    ecx,eax
106552a6:	83 ca ff                                        	or     edx,0xffffffff
106552a9:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
106552ad:	4a                                              	dec    edx
106552ae:	75 11                                           	jne    0x106552c1
106552b0:	b9 01 00 00 00                                  	mov    ecx,0x1
106552b5:	87 08                                           	xchg   DWORD PTR [eax],ecx
106552b7:	8b 16                                           	mov    edx,DWORD PTR [esi]
106552b9:	8b 02                                           	mov    eax,DWORD PTR [edx]
106552bb:	6a 01                                           	push   0x1
106552bd:	8b ce                                           	mov    ecx,esi
106552bf:	ff d0                                           	call   eax
106552c1:	5f                                              	pop    edi
106552c2:	33 c0                                           	xor    eax,eax
106552c4:	5e                                              	pop    esi
106552c5:	59                                              	pop    ecx
106552c6:	c3                                              	ret
106552c7:	cc                                              	int3
106552c8:	cc                                              	int3
106552c9:	cc                                              	int3
106552ca:	cc                                              	int3
106552cb:	cc                                              	int3
106552cc:	cc                                              	int3
106552cd:	cc                                              	int3
106552ce:	cc                                              	int3
106552cf:	cc                                              	int3
