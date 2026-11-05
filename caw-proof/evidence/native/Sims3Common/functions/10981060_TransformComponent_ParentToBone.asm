# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981060 (TransformComponent_ParentToBone)
Paired Ghidra pseudocode: 10981060_TransformComponent_ParentToBone.c
Window: [0x10981060, 0x10981100) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981060: 55 8b ec 83 e4 f0 83 ec 48 56 57 e8 30 91 da ff
10981070: 85 c0 74 76 8b 4d 10 8b 55 0c 51 52 8b c8 e8 2d
10981080: 9b da ff 8b f0 85 f6 74 0c 8d 46 04 b9 01 00 00
10981090: 00 f0 0f c1 08 8b 55 18 52 8d 44 24 14 50 e8 bd
109810a0: f0 ff ff 8b 4d 1c 8b 45 14 83 c4 08 51 8b 4d 08
109810b0: 8d 54 24 14 52 50 56 e8 d4 b6 dc ff 85 f6 8b f8
109810c0: 74 20 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75
109810d0: 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce
109810e0: ff d0 8b c7 5f 5e 8b e5 5d c3 5f 33 c0 5e 8b e5
109810f0: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10981060 <.text+0x980060>:
10981060:	55                                              	push   ebp
10981061:	8b ec                                           	mov    ebp,esp
10981063:	83 e4 f0                                        	and    esp,0xfffffff0
10981066:	83 ec 48                                        	sub    esp,0x48
10981069:	56                                              	push   esi
1098106a:	57                                              	push   edi
1098106b:	e8 30 91 da ff                                  	call   0x1072a1a0
10981070:	85 c0                                           	test   eax,eax
10981072:	74 76                                           	je     0x109810ea
10981074:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10981077:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1098107a:	51                                              	push   ecx
1098107b:	52                                              	push   edx
1098107c:	8b c8                                           	mov    ecx,eax
1098107e:	e8 2d 9b da ff                                  	call   0x1072abb0
10981083:	8b f0                                           	mov    esi,eax
10981085:	85 f6                                           	test   esi,esi
10981087:	74 0c                                           	je     0x10981095
10981089:	8d 46 04                                        	lea    eax,[esi+0x4]
1098108c:	b9 01 00 00 00                                  	mov    ecx,0x1
10981091:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10981095:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
10981098:	52                                              	push   edx
10981099:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1098109d:	50                                              	push   eax
1098109e:	e8 bd f0 ff ff                                  	call   0x10980160
109810a3:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
109810a6:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
109810a9:	83 c4 08                                        	add    esp,0x8
109810ac:	51                                              	push   ecx
109810ad:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109810b0:	8d 54 24 14                                     	lea    edx,[esp+0x14]
109810b4:	52                                              	push   edx
109810b5:	50                                              	push   eax
109810b6:	56                                              	push   esi
109810b7:	e8 d4 b6 dc ff                                  	call   0x1074c790
109810bc:	85 f6                                           	test   esi,esi
109810be:	8b f8                                           	mov    edi,eax
109810c0:	74 20                                           	je     0x109810e2
109810c2:	8d 46 04                                        	lea    eax,[esi+0x4]
109810c5:	8b c8                                           	mov    ecx,eax
109810c7:	83 ca ff                                        	or     edx,0xffffffff
109810ca:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
109810ce:	4a                                              	dec    edx
109810cf:	75 11                                           	jne    0x109810e2
109810d1:	b9 01 00 00 00                                  	mov    ecx,0x1
109810d6:	87 08                                           	xchg   DWORD PTR [eax],ecx
109810d8:	8b 16                                           	mov    edx,DWORD PTR [esi]
109810da:	8b 02                                           	mov    eax,DWORD PTR [edx]
109810dc:	6a 01                                           	push   0x1
109810de:	8b ce                                           	mov    ecx,esi
109810e0:	ff d0                                           	call   eax
109810e2:	8b c7                                           	mov    eax,edi
109810e4:	5f                                              	pop    edi
109810e5:	5e                                              	pop    esi
109810e6:	8b e5                                           	mov    esp,ebp
109810e8:	5d                                              	pop    ebp
109810e9:	c3                                              	ret
109810ea:	5f                                              	pop    edi
109810eb:	33 c0                                           	xor    eax,eax
109810ed:	5e                                              	pop    esi
109810ee:	8b e5                                           	mov    esp,ebp
109810f0:	5d                                              	pop    ebp
109810f1:	c3                                              	ret
109810f2:	cc                                              	int3
109810f3:	cc                                              	int3
109810f4:	cc                                              	int3
109810f5:	cc                                              	int3
109810f6:	cc                                              	int3
109810f7:	cc                                              	int3
109810f8:	cc                                              	int3
109810f9:	cc                                              	int3
109810fa:	cc                                              	int3
109810fb:	cc                                              	int3
109810fc:	cc                                              	int3
109810fd:	cc                                              	int3
109810fe:	cc                                              	int3
109810ff:	cc                                              	int3
