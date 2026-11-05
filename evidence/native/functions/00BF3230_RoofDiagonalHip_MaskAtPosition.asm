# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf3230 (RoofDiagonalHip_MaskAtPosition)
Complete Ghidra function body: 0x00bf3230..0x00bf32f0 (exclusive end)
Ghidra body ranges: [[00bf3230, 00bf32ef]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf3230 <.text+0x7f2230>:
  bf3230:	83 ec 10                                        	sub    esp,0x10
  bf3233:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  bf3237:	53                                              	push   ebx
  bf3238:	56                                              	push   esi
  bf3239:	57                                              	push   edi
  bf323a:	8b f1                                           	mov    esi,ecx
  bf323c:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  bf3240:	50                                              	push   eax
  bf3241:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  bf3245:	51                                              	push   ecx
  bf3246:	83 ec 08                                        	sub    esp,0x8
  bf3249:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  bf324d:	8b ce                                           	mov    ecx,esi
  bf324f:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  bf3253:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  bf3256:	e8 05 22 e5 ff                                  	call   0xa45460
  bf325b:	f3 0f 10 05 7c 3f fb 00                         	movss  xmm0,DWORD PTR ds:0xfb3f7c
  bf3263:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  bf3269:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  bf326d:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  bf3273:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  bf3279:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  bf327d:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  bf3283:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  bf3287:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
  bf328b:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
  bf328f:	de e9                                           	fsubp  st(1),st
  bf3291:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  bf3295:	81 7c 24 0c 01 00 00 80                         	cmp    DWORD PTR [esp+0xc],0x80000001
  bf329d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  bf32a1:	83 d0 ff                                        	adc    eax,0xffffffff
  bf32a4:	8b f8                                           	mov    edi,eax
  bf32a6:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  bf32aa:	db 54 24 0c                                     	fist   DWORD PTR [esp+0xc]
  bf32ae:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  bf32b2:	de e9                                           	fsubp  st(1),st
  bf32b4:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  bf32b8:	81 7c 24 10 01 00 00 80                         	cmp    DWORD PTR [esp+0x10],0x80000001
  bf32c0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  bf32c4:	83 d0 ff                                        	adc    eax,0xffffffff
  bf32c7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  bf32c9:	8b d8                                           	mov    ebx,eax
  bf32cb:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  bf32ce:	8b ce                                           	mov    ecx,esi
  bf32d0:	ff d0                                           	call   eax
  bf32d2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  bf32d4:	50                                              	push   eax
  bf32d5:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  bf32d8:	8b ce                                           	mov    ecx,esi
  bf32da:	ff d0                                           	call   eax
  bf32dc:	50                                              	push   eax
  bf32dd:	53                                              	push   ebx
  bf32de:	57                                              	push   edi
  bf32df:	e8 fc f9 00 00                                  	call   0xc02ce0
  bf32e4:	83 c4 10                                        	add    esp,0x10
  bf32e7:	5f                                              	pop    edi
  bf32e8:	5e                                              	pop    esi
  bf32e9:	5b                                              	pop    ebx
  bf32ea:	83 c4 10                                        	add    esp,0x10
  bf32ed:	c2 08 00                                        	ret    0x8
