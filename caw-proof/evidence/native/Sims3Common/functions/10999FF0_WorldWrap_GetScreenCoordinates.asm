# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

10999ff0 <.text+0x998ff0>:
10999ff0:	55                                              	push   ebp
10999ff1:	8b ec                                           	mov    ebp,esp
10999ff3:	83 e4 f0                                        	and    esp,0xfffffff0
10999ff6:	83 ec 20                                        	sub    esp,0x20
10999ff9:	e8 a2 43 b4 ff                                  	call   0x104de3a0
10999ffe:	85 c0                                           	test   eax,eax
1099a000:	75 06                                           	jne    0x1099a008
1099a002:	33 c0                                           	xor    eax,eax
1099a004:	8b e5                                           	mov    esp,ebp
1099a006:	5d                                              	pop    ebp
1099a007:	c3                                              	ret
1099a008:	8b c8                                           	mov    ecx,eax
1099a00a:	e8 41 bb 00 00                                  	call   0x109a5b50
1099a00f:	85 c0                                           	test   eax,eax
1099a011:	74 ef                                           	je     0x1099a002
1099a013:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1099a016:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [ecx+0x8]
1099a01b:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
1099a01f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1099a025:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [ecx+0x4]
1099a02a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1099a02e:	51                                              	push   ecx
1099a02f:	8d 54 24 04                                     	lea    edx,[esp+0x4]
1099a033:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1099a039:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1099a03f:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1099a045:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1099a04a:	52                                              	push   edx
1099a04b:	50                                              	push   eax
1099a04c:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
1099a051:	e8 aa 8c c2 ff                                  	call   0x105c2d00
1099a056:	0f 28 44 24 1c                                  	movaps xmm0,XMMWORD PTR [esp+0x1c]
1099a05b:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1099a05e:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
1099a063:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
1099a069:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
1099a06e:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
1099a074:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1099a07a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1099a07e:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1099a084:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1099a088:	89 08                                           	mov    DWORD PTR [eax],ecx
1099a08a:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099a08d:	83 c4 0c                                        	add    esp,0xc
1099a090:	b8 01 00 00 00                                  	mov    eax,0x1
1099a095:	8b e5                                           	mov    esp,ebp
1099a097:	5d                                              	pop    ebp
1099a098:	c3                                              	ret
