# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf3150 (RoofHip_MaskAtPosition)
Complete Ghidra function body: 0x00bf3150..0x00bf31f5 (exclusive end)
Ghidra body ranges: [[00bf3150, 00bf31f4]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf3150 <.text+0x7f2150>:
  bf3150:	83 ec 08                                        	sub    esp,0x8
  bf3153:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  bf3159:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  bf3161:	53                                              	push   ebx
  bf3162:	56                                              	push   esi
  bf3163:	8b f1                                           	mov    esi,ecx
  bf3165:	f3 0f 5c 4e 5c                                  	subss  xmm1,DWORD PTR [esi+0x5c]
  bf316a:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  bf316e:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  bf3174:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  bf317a:	f3 0f 5c 4e 60                                  	subss  xmm1,DWORD PTR [esi+0x60]
  bf317f:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  bf3183:	57                                              	push   edi
  bf3184:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  bf318a:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  bf318e:	db 54 24 1c                                     	fist   DWORD PTR [esp+0x1c]
  bf3192:	db 44 24 1c                                     	fild   DWORD PTR [esp+0x1c]
  bf3196:	de e9                                           	fsubp  st(1),st
  bf3198:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  bf319c:	81 7c 24 18 01 00 00 80                         	cmp    DWORD PTR [esp+0x18],0x80000001
  bf31a4:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  bf31a8:	83 d0 ff                                        	adc    eax,0xffffffff
  bf31ab:	8b f8                                           	mov    edi,eax
  bf31ad:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  bf31b1:	db 54 24 1c                                     	fist   DWORD PTR [esp+0x1c]
  bf31b5:	db 44 24 1c                                     	fild   DWORD PTR [esp+0x1c]
  bf31b9:	de e9                                           	fsubp  st(1),st
  bf31bb:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  bf31bf:	81 7c 24 18 01 00 00 80                         	cmp    DWORD PTR [esp+0x18],0x80000001
  bf31c7:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  bf31cb:	83 d0 ff                                        	adc    eax,0xffffffff
  bf31ce:	8b d8                                           	mov    ebx,eax
  bf31d0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf31d2:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  bf31d5:	ff d2                                           	call   edx
  bf31d7:	50                                              	push   eax
  bf31d8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf31da:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  bf31dd:	8b ce                                           	mov    ecx,esi
  bf31df:	ff d2                                           	call   edx
  bf31e1:	50                                              	push   eax
  bf31e2:	53                                              	push   ebx
  bf31e3:	57                                              	push   edi
  bf31e4:	e8 f7 fa 00 00                                  	call   0xc02ce0
  bf31e9:	83 c4 10                                        	add    esp,0x10
  bf31ec:	5f                                              	pop    edi
  bf31ed:	5e                                              	pop    esi
  bf31ee:	5b                                              	pop    ebx
  bf31ef:	83 c4 08                                        	add    esp,0x8
  bf31f2:	c2 08 00                                        	ret    0x8
