# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983180 (ContentManager_GetInstalledPackages)
Paired Ghidra pseudocode: 10983180_ContentManager_GetInstalledPackages.c
Window: [0x10983180, 0x10983290) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983180: 83 ec 78 57 e8 37 13 df ff 33 ff 3b c7 0f 84 ed
10983190: 00 00 00 53 55 56 8d 4c 24 18 51 8b c8 89 7c 24
109831a0: 1c 89 7c 24 20 89 7c 24 24 c7 44 24 28 a4 65 b9
109831b0: 10 e8 0a bd df ff 8b ac 24 90 00 00 00 8b 4c 24
109831c0: 1c 8b 74 24 18 33 db 3b ef 89 4c 24 10 7e 52 8b
109831d0: bc 24 8c 00 00 00 3b 74 24 10 74 3b 6a 10 8d 54
109831e0: 24 18 52 8d 44 24 30 50 8b ce c7 44 24 20 00 00
109831f0: 00 00 e8 89 17 fb ff 8a 4e 10 8d 54 24 28 52 88
10983200: 4f 04 ff 15 c4 b6 aa 10 89 07 83 c3 01 83 c7 08
10983210: 83 c6 30 3b dd 7c bf 8b 4c 24 1c 8b 74 24 18 33
10983220: ff 3b f1 73 44 2b ce 83 e9 01 b8 ab aa aa aa f7
10983230: e1 8d 6e 20 8b f2 c1 ee 05 83 c6 01 8d 64 24 00
10983240: 8b 45 00 8b 4d 08 2b c8 83 e1 fe 83 f9 02 7e 0d
10983250: 3b c7 74 09 50 e8 36 5c f9 ff 83 c4 04 83 c5 30
10983260: 83 ee 01 75 db 8b 74 24 18 3b f7 74 09 56 e8 1d
10983270: 5c f9 ff 83 c4 04 5e 5d 8b c3 5b 5f 83 c4 78 c3
10983280: 33 c0 5f 83 c4 78 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10983180 <.text+0x982180>:
10983180:	83 ec 78                                        	sub    esp,0x78
10983183:	57                                              	push   edi
10983184:	e8 37 13 df ff                                  	call   0x107744c0
10983189:	33 ff                                           	xor    edi,edi
1098318b:	3b c7                                           	cmp    eax,edi
1098318d:	0f 84 ed 00 00 00                               	je     0x10983280
10983193:	53                                              	push   ebx
10983194:	55                                              	push   ebp
10983195:	56                                              	push   esi
10983196:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098319a:	51                                              	push   ecx
1098319b:	8b c8                                           	mov    ecx,eax
1098319d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
109831a1:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
109831a5:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
109831a9:	c7 44 24 28 a4 65 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b965a4
109831b1:	e8 0a bd df ff                                  	call   0x1077eec0
109831b6:	8b ac 24 90 00 00 00                            	mov    ebp,DWORD PTR [esp+0x90]
109831bd:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109831c1:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
109831c5:	33 db                                           	xor    ebx,ebx
109831c7:	3b ef                                           	cmp    ebp,edi
109831c9:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
109831cd:	7e 52                                           	jle    0x10983221
109831cf:	8b bc 24 8c 00 00 00                            	mov    edi,DWORD PTR [esp+0x8c]
109831d6:	3b 74 24 10                                     	cmp    esi,DWORD PTR [esp+0x10]
109831da:	74 3b                                           	je     0x10983217
109831dc:	6a 10                                           	push   0x10
109831de:	8d 54 24 18                                     	lea    edx,[esp+0x18]
109831e2:	52                                              	push   edx
109831e3:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109831e7:	50                                              	push   eax
109831e8:	8b ce                                           	mov    ecx,esi
109831ea:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
109831f2:	e8 89 17 fb ff                                  	call   0x10934980
109831f7:	8a 4e 10                                        	mov    cl,BYTE PTR [esi+0x10]
109831fa:	8d 54 24 28                                     	lea    edx,[esp+0x28]
109831fe:	52                                              	push   edx
109831ff:	88 4f 04                                        	mov    BYTE PTR [edi+0x4],cl
10983202:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10983208:	89 07                                           	mov    DWORD PTR [edi],eax
1098320a:	83 c3 01                                        	add    ebx,0x1
1098320d:	83 c7 08                                        	add    edi,0x8
10983210:	83 c6 30                                        	add    esi,0x30
10983213:	3b dd                                           	cmp    ebx,ebp
10983215:	7c bf                                           	jl     0x109831d6
10983217:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098321b:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098321f:	33 ff                                           	xor    edi,edi
10983221:	3b f1                                           	cmp    esi,ecx
10983223:	73 44                                           	jae    0x10983269
10983225:	2b ce                                           	sub    ecx,esi
10983227:	83 e9 01                                        	sub    ecx,0x1
1098322a:	b8 ab aa aa aa                                  	mov    eax,0xaaaaaaab
1098322f:	f7 e1                                           	mul    ecx
10983231:	8d 6e 20                                        	lea    ebp,[esi+0x20]
10983234:	8b f2                                           	mov    esi,edx
10983236:	c1 ee 05                                        	shr    esi,0x5
10983239:	83 c6 01                                        	add    esi,0x1
1098323c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10983240:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10983243:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10983246:	2b c8                                           	sub    ecx,eax
10983248:	83 e1 fe                                        	and    ecx,0xfffffffe
1098324b:	83 f9 02                                        	cmp    ecx,0x2
1098324e:	7e 0d                                           	jle    0x1098325d
10983250:	3b c7                                           	cmp    eax,edi
10983252:	74 09                                           	je     0x1098325d
10983254:	50                                              	push   eax
10983255:	e8 36 5c f9 ff                                  	call   0x10918e90
1098325a:	83 c4 04                                        	add    esp,0x4
1098325d:	83 c5 30                                        	add    ebp,0x30
10983260:	83 ee 01                                        	sub    esi,0x1
10983263:	75 db                                           	jne    0x10983240
10983265:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10983269:	3b f7                                           	cmp    esi,edi
1098326b:	74 09                                           	je     0x10983276
1098326d:	56                                              	push   esi
1098326e:	e8 1d 5c f9 ff                                  	call   0x10918e90
10983273:	83 c4 04                                        	add    esp,0x4
10983276:	5e                                              	pop    esi
10983277:	5d                                              	pop    ebp
10983278:	8b c3                                           	mov    eax,ebx
1098327a:	5b                                              	pop    ebx
1098327b:	5f                                              	pop    edi
1098327c:	83 c4 78                                        	add    esp,0x78
1098327f:	c3                                              	ret
10983280:	33 c0                                           	xor    eax,eax
10983282:	5f                                              	pop    edi
10983283:	83 c4 78                                        	add    esp,0x78
10983286:	c3                                              	ret
10983287:	cc                                              	int3
10983288:	cc                                              	int3
10983289:	cc                                              	int3
1098328a:	cc                                              	int3
1098328b:	cc                                              	int3
1098328c:	cc                                              	int3
1098328d:	cc                                              	int3
1098328e:	cc                                              	int3
1098328f:	cc                                              	int3
