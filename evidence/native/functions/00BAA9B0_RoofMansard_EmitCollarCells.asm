# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00baa9b0 (RoofMansard_EmitCollarCells)
Complete Ghidra function body: 0x00baa9b0..0x00baac3b (exclusive end)
Ghidra body ranges: [[00baa9b0, 00baac3a]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00baa9b0 <.text+0x7a99b0>:
  baa9b0:	55                                              	push   ebp
  baa9b1:	8b ec                                           	mov    ebp,esp
  baa9b3:	83 e4 f8                                        	and    esp,0xfffffff8
  baa9b6:	81 ec 04 01 00 00                               	sub    esp,0x104
  baa9bc:	53                                              	push   ebx
  baa9bd:	8b d9                                           	mov    ebx,ecx
  baa9bf:	56                                              	push   esi
  baa9c0:	8b 73 18                                        	mov    esi,DWORD PTR [ebx+0x18]
  baa9c3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  baa9c5:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  baa9c8:	57                                              	push   edi
  baa9c9:	8b ce                                           	mov    ecx,esi
  baa9cb:	ff d2                                           	call   edx
  baa9cd:	8b f8                                           	mov    edi,eax
  baa9cf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  baa9d1:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  baa9d4:	8b ce                                           	mov    ecx,esi
  baa9d6:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  baa9da:	ff d2                                           	call   edx
  baa9dc:	f3 0f 10 46 5c                                  	movss  xmm0,DWORD PTR [esi+0x5c]
  baa9e1:	3b f8                                           	cmp    edi,eax
  baa9e3:	0f 93 c2                                        	setae  dl
  baa9e6:	83 7b 1c 00                                     	cmp    DWORD PTR [ebx+0x1c],0x0
  baa9ea:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  baa9ee:	0f 94 c0                                        	sete   al
  baa9f1:	8d 4e 48                                        	lea    ecx,[esi+0x48]
  baa9f4:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  baa9f8:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  baa9fb:	88 54 24 34                                     	mov    BYTE PTR [esp+0x34],dl
  baa9ff:	8b 53 10                                        	mov    edx,DWORD PTR [ebx+0x10]
  baaa02:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  baaa08:	f3 0f 10 46 60                                  	movss  xmm0,DWORD PTR [esi+0x60]
  baaa0d:	50                                              	push   eax
  baaa0e:	51                                              	push   ecx
  baaa0f:	52                                              	push   edx
  baaa10:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  baaa14:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  baaa1a:	e8 21 86 ff ff                                  	call   0xba3040
  baaa1f:	8b 76 2c                                        	mov    esi,DWORD PTR [esi+0x2c]
  baaa22:	33 c0                                           	xor    eax,eax
  baaa24:	39 45 14                                        	cmp    DWORD PTR [ebp+0x14],eax
  baaa27:	56                                              	push   esi
  baaa28:	0f 95 c0                                        	setne  al
  baaa2b:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  baaa2f:	e8 5c 80 05 00                                  	call   0xc02a90
  baaa34:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  baaa3a:	f3 0f 58 44 24 30                               	addss  xmm0,DWORD PTR [esp+0x30]
  baaa40:	f3 0f 59 05 88 fd 03 01                         	mulss  xmm0,DWORD PTR ds:0x103fd88
  baaa48:	83 c4 04                                        	add    esp,0x4
  baaa4b:	f6 d8                                           	neg    al
  baaa4d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  baaa53:	1b c0                                           	sbb    eax,eax
  baaa55:	83 e0 02                                        	and    eax,0x2
  baaa58:	83 c0 07                                        	add    eax,0x7
  baaa5b:	8b c8                                           	mov    ecx,eax
  baaa5d:	8b c7                                           	mov    eax,edi
  baaa5f:	2b c1                                           	sub    eax,ecx
  baaa61:	83 e8 01                                        	sub    eax,0x1
  baaa64:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  baaa68:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  baaa6c:	2b c1                                           	sub    eax,ecx
  baaa6e:	83 e8 01                                        	sub    eax,0x1
  baaa71:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  baaa75:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  baaa79:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  baaa7d:	df 7c 24 20                                     	fistp  QWORD PTR [esp+0x20]
  baaa81:	8a 4c 24 20                                     	mov    cl,BYTE PTR [esp+0x20]
  baaa85:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  baaa89:	f6 d1                                           	not    cl
  baaa8b:	80 e1 01                                        	and    cl,0x1
  baaa8e:	33 ff                                           	xor    edi,edi
  baaa90:	83 c0 ff                                        	add    eax,0xffffffff
  baaa93:	88 4c 24 0f                                     	mov    BYTE PTR [esp+0xf],cl
  baaa97:	0f 84 8c 01 00 00                               	je     0xbaac29
  baaa9d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  baaaa1:	d9 05 b4 b5 f9 00                               	fld    DWORD PTR ds:0xf9b5b4
  baaaa7:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  baaaaf:	83 c0 ff                                        	add    eax,0xffffffff
  baaab2:	eb 04                                           	jmp    0xbaaab8
  baaab4:	8a 4c 24 0f                                     	mov    cl,BYTE PTR [esp+0xf]
  baaab8:	8b d7                                           	mov    edx,edi
  baaaba:	85 d2                                           	test   edx,edx
  baaabc:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  baaac0:	db 44 24 20                                     	fild   DWORD PTR [esp+0x20]
  baaac4:	7d 06                                           	jge    0xbaaacc
  baaac6:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  baaacc:	d8 c9                                           	fmul   st,st(1)
  baaace:	33 f6                                           	xor    esi,esi
  baaad0:	85 c0                                           	test   eax,eax
  baaad2:	88 4c 24 10                                     	mov    BYTE PTR [esp+0x10],cl
  baaad6:	d8 44 24 28                                     	fadd   DWORD PTR [esp+0x28]
  baaada:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  baaade:	0f 86 28 01 00 00                               	jbe    0xbaac0c
  baaae4:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  baaaea:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  baaaee:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  baaaf2:	3b f8                                           	cmp    edi,eax
  baaaf4:	72 14                                           	jb     0xbaab0a
  baaaf6:	3b f0                                           	cmp    esi,eax
  baaaf8:	72 10                                           	jb     0xbaab0a
  baaafa:	3b 7c 24 40                                     	cmp    edi,DWORD PTR [esp+0x40]
  baaafe:	73 0a                                           	jae    0xbaab0a
  baab00:	3b 74 24 30                                     	cmp    esi,DWORD PTR [esp+0x30]
  baab04:	0f 82 e8 00 00 00                               	jb     0xbaabf2
  baab0a:	8b c6                                           	mov    eax,esi
  baab0c:	85 c0                                           	test   eax,eax
  baab0e:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  baab12:	db 44 24 20                                     	fild   DWORD PTR [esp+0x20]
  baab16:	7d 06                                           	jge    0xbaab1e
  baab18:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  baab1e:	6a 00                                           	push   0x0
  baab20:	de c9                                           	fmulp  st(1),st
  baab22:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  baab26:	51                                              	push   ecx
  baab27:	d8 44 24 34                                     	fadd   DWORD PTR [esp+0x34]
  baab2b:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  baab2f:	50                                              	push   eax
  baab30:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  baab34:	51                                              	push   ecx
  baab35:	d9 54 24 30                                     	fst    DWORD PTR [esp+0x30]
  baab39:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  baab3d:	d9 54 24 68                                     	fst    DWORD PTR [esp+0x68]
  baab41:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  baab47:	d9 54 24 58                                     	fst    DWORD PTR [esp+0x58]
  baab4b:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  baab4f:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  baab53:	50                                              	push   eax
  baab54:	83 ec 08                                        	sub    esp,0x8
  baab57:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  baab5b:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
  baab62:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  baab66:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  baab69:	57                                              	push   edi
  baab6a:	56                                              	push   esi
  baab6b:	51                                              	push   ecx
  baab6c:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  baab70:	50                                              	push   eax
  baab71:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  baab75:	51                                              	push   ecx
  baab76:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  baab7a:	50                                              	push   eax
  baab7b:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  baab7e:	51                                              	push   ecx
  baab7f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  baab82:	52                                              	push   edx
  baab83:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  baab87:	52                                              	push   edx
  baab88:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  baab8b:	50                                              	push   eax
  baab8c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  baab8f:	51                                              	push   ecx
  baab90:	f3 0f 11 84 24 98 00 00 00                      	movss  DWORD PTR [esp+0x98],xmm0
  baab99:	f3 0f 11 84 24 a8 00 00 00                      	movss  DWORD PTR [esp+0xa8],xmm0
  baaba2:	52                                              	push   edx
  baaba3:	0f 28 c1                                        	movaps xmm0,xmm1
  baaba6:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  baabaa:	50                                              	push   eax
  baabab:	8b cb                                           	mov    ecx,ebx
  baabad:	f3 0f 11 8c 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm1
  baabb6:	f3 0f 11 8c 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm1
  baabbf:	f3 0f 11 84 24 b4 00 00 00                      	movss  DWORD PTR [esp+0xb4],xmm0
  baabc8:	f3 0f 11 84 24 9c 00 00 00                      	movss  DWORD PTR [esp+0x9c],xmm0
  baabd1:	e8 ba f7 ff ff                                  	call   0xbaa390
  baabd6:	d9 05 b4 b5 f9 00                               	fld    DWORD PTR ds:0xf9b5b4
  baabdc:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  baabe4:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  baabea:	8a 4c 24 0f                                     	mov    cl,BYTE PTR [esp+0xf]
  baabee:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  baabf2:	83 c6 01                                        	add    esi,0x1
  baabf5:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  baabfa:	0f 94 c0                                        	sete   al
  baabfd:	88 44 24 10                                     	mov    BYTE PTR [esp+0x10],al
  baac01:	8d 42 ff                                        	lea    eax,[edx-0x1]
  baac04:	3b f0                                           	cmp    esi,eax
  baac06:	0f 82 e2 fe ff ff                               	jb     0xbaaaee
  baac0c:	83 c7 01                                        	add    edi,0x1
  baac0f:	84 c9                                           	test   cl,cl
  baac11:	0f 94 c1                                        	sete   cl
  baac14:	88 4c 24 0f                                     	mov    BYTE PTR [esp+0xf],cl
  baac18:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  baac1c:	83 c1 ff                                        	add    ecx,0xffffffff
  baac1f:	3b f9                                           	cmp    edi,ecx
  baac21:	0f 82 8d fe ff ff                               	jb     0xbaaab4
  baac27:	dd d8                                           	fstp   st(0)
  baac29:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  baac2d:	e8 fe 2f ff ff                                  	call   0xb9dc30
  baac32:	5f                                              	pop    edi
  baac33:	5e                                              	pop    esi
  baac34:	5b                                              	pop    ebx
  baac35:	8b e5                                           	mov    esp,ebp
  baac37:	5d                                              	pop    ebp
  baac38:	c2 10 00                                        	ret    0x10
