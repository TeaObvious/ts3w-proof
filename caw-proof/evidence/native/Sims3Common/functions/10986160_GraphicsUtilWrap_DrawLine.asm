# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986160 (GraphicsUtilWrap_DrawLine)
Paired Ghidra pseudocode: 10986160_GraphicsUtilWrap_DrawLine.c
Window: [0x10986160, 0x10986210) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986160: 55 8b ec 83 e4 f0 83 ec 60 8b 45 10 50 8d 4c 24
10986170: 24 51 e8 e9 9f ff ff 8b 45 0c f3 0f 10 48 08 f3
10986180: 0f 10 00 83 7d 18 00 f3 0f 11 4c 24 10 f3 0f 10
10986190: 48 04 8b 45 08 f3 0f 11 4c 24 0c f3 0f 10 48 08
109861a0: 0f 95 c2 f3 0f 11 44 24 14 f3 0f 11 44 24 08 0f
109861b0: 28 44 24 08 f3 0f 11 4c 24 10 f3 0f 10 48 04 0f
109861c0: 29 44 24 18 f3 0f 10 00 8b 45 14 52 50 8d 4c 24
109861d0: 30 51 8d 54 24 24 f3 0f 11 44 24 20 f3 0f 11 4c
109861e0: 24 18 f3 0f 11 44 24 14 0f 28 44 24 14 52 8d 44
109861f0: 24 18 50 0f 29 44 24 1c e8 83 c7 c3 ff 83 c4 1c
10986200: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986160 <.text+0x985160>:
10986160:	55                                              	push   ebp
10986161:	8b ec                                           	mov    ebp,esp
10986163:	83 e4 f0                                        	and    esp,0xfffffff0
10986166:	83 ec 60                                        	sub    esp,0x60
10986169:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098616c:	50                                              	push   eax
1098616d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10986171:	51                                              	push   ecx
10986172:	e8 e9 9f ff ff                                  	call   0x10980160
10986177:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098617a:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098617f:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10986183:	83 7d 18 00                                     	cmp    DWORD PTR [ebp+0x18],0x0
10986187:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1098618d:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10986192:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10986195:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1098619b:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
109861a0:	0f 95 c2                                        	setne  dl
109861a3:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
109861a9:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109861af:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
109861b4:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
109861ba:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
109861bf:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
109861c4:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
109861c8:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
109861cb:	52                                              	push   edx
109861cc:	50                                              	push   eax
109861cd:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109861d1:	51                                              	push   ecx
109861d2:	8d 54 24 24                                     	lea    edx,[esp+0x24]
109861d6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
109861dc:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
109861e2:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
109861e8:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
109861ed:	52                                              	push   edx
109861ee:	8d 44 24 18                                     	lea    eax,[esp+0x18]
109861f2:	50                                              	push   eax
109861f3:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
109861f8:	e8 83 c7 c3 ff                                  	call   0x105c2980
109861fd:	83 c4 1c                                        	add    esp,0x1c
10986200:	8b e5                                           	mov    esp,ebp
10986202:	5d                                              	pop    ebp
10986203:	c3                                              	ret
10986204:	cc                                              	int3
10986205:	cc                                              	int3
10986206:	cc                                              	int3
10986207:	cc                                              	int3
10986208:	cc                                              	int3
10986209:	cc                                              	int3
1098620a:	cc                                              	int3
1098620b:	cc                                              	int3
1098620c:	cc                                              	int3
1098620d:	cc                                              	int3
1098620e:	cc                                              	int3
1098620f:	cc                                              	int3
