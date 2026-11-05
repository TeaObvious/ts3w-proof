# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005361e0 WinScrollbar_OnMouseDown
# Complete Ghidra body [005361e0, 005363a3] inclusive; 127 instructions, 452 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005361E0_WinScrollbar_OnMouseDown.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005361e0 <.text+0x1351e0>:
  5361e0:	56                                              	push   esi
  5361e1:	8b f1                                           	mov    esi,ecx
  5361e3:	57                                              	push   edi
  5361e4:	8d be 98 02 00 00                               	lea    edi,[esi+0x298]
  5361ea:	8b cf                                           	mov    ecx,edi
  5361ec:	e8 2f d4 fb ff                                  	call   0x4f3620
  5361f1:	80 be 8c 02 00 00 00                            	cmp    BYTE PTR [esi+0x28c],0x0
  5361f8:	75 0f                                           	jne    0x536209
  5361fa:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  5361fd:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  536200:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536203:	6a 00                                           	push   0x0
  536205:	6a 08                                           	push   0x8
  536207:	ff d2                                           	call   edx
  536209:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  53620d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  53620f:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  536215:	83 ec 08                                        	sub    esp,0x8
  536218:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  53621c:	8b ce                                           	mov    ecx,esi
  53621e:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  536222:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  536225:	ff d2                                           	call   edx
  536227:	3c ff                                           	cmp    al,0xff
  536229:	88 86 85 02 00 00                               	mov    BYTE PTR [esi+0x285],al
  53622f:	0f 84 68 01 00 00                               	je     0x53639d
  536235:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  536238:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  53623a:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  53623d:	53                                              	push   ebx
  53623e:	6a 01                                           	push   0x1
  536240:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  536243:	ff d2                                           	call   edx
  536245:	3b c3                                           	cmp    eax,ebx
  536247:	74 0f                                           	je     0x536258
  536249:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  53624c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  53624e:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  536251:	6a 00                                           	push   0x0
  536253:	53                                              	push   ebx
  536254:	6a 01                                           	push   0x1
  536256:	ff d2                                           	call   edx
  536258:	0f b6 86 85 02 00 00                            	movzx  eax,BYTE PTR [esi+0x285]
  53625f:	83 c0 ff                                        	add    eax,0xffffffff
  536262:	83 f8 05                                        	cmp    eax,0x5
  536265:	0f 87 25 01 00 00                               	ja     0x536390
  53626b:	ff 24 85 a4 63 53 00                            	jmp    DWORD PTR [eax*4+0x5363a4]
  536272:	8b 8e 54 02 00 00                               	mov    ecx,DWORD PTR [esi+0x254]
  536278:	2b 8e 74 02 00 00                               	sub    ecx,DWORD PTR [esi+0x274]
  53627e:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  536284:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  536287:	8d be 50 02 00 00                               	lea    edi,[esi+0x250]
  53628d:	51                                              	push   ecx
  53628e:	8b cf                                           	mov    ecx,edi
  536290:	ff d2                                           	call   edx
  536292:	f6 86 90 02 00 00 03                            	test   BYTE PTR [esi+0x290],0x3
  536299:	0f 85 f1 00 00 00                               	jne    0x536390
  53629f:	8b 8e 5c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x25c]
  5362a5:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5362a7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  5362aa:	6a 01                                           	push   0x1
  5362ac:	51                                              	push   ecx
  5362ad:	8b cf                                           	mov    ecx,edi
  5362af:	ff d2                                           	call   edx
  5362b1:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5362b3:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  5362b9:	8b cb                                           	mov    ecx,ebx
  5362bb:	ff d0                                           	call   eax
  5362bd:	5b                                              	pop    ebx
  5362be:	5f                                              	pop    edi
  5362bf:	b0 01                                           	mov    al,0x1
  5362c1:	5e                                              	pop    esi
  5362c2:	c2 10 00                                        	ret    0x10
  5362c5:	8b 8e 54 02 00 00                               	mov    ecx,DWORD PTR [esi+0x254]
  5362cb:	2b 8e 78 02 00 00                               	sub    ecx,DWORD PTR [esi+0x278]
  5362d1:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  5362d7:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  5362da:	8d be 50 02 00 00                               	lea    edi,[esi+0x250]
  5362e0:	51                                              	push   ecx
  5362e1:	8b cf                                           	mov    ecx,edi
  5362e3:	ff d2                                           	call   edx
  5362e5:	f6 86 90 02 00 00 02                            	test   BYTE PTR [esi+0x290],0x2
  5362ec:	eb ab                                           	jmp    0x536299
  5362ee:	8b 8e 74 02 00 00                               	mov    ecx,DWORD PTR [esi+0x274]
  5362f4:	03 8e 54 02 00 00                               	add    ecx,DWORD PTR [esi+0x254]
  5362fa:	eb 82                                           	jmp    0x53627e
  5362fc:	8b 8e 78 02 00 00                               	mov    ecx,DWORD PTR [esi+0x278]
  536302:	03 8e 54 02 00 00                               	add    ecx,DWORD PTR [esi+0x254]
  536308:	8b 86 50 02 00 00                               	mov    eax,DWORD PTR [esi+0x250]
  53630e:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  536311:	8d be 50 02 00 00                               	lea    edi,[esi+0x250]
  536317:	51                                              	push   ecx
  536318:	8b cf                                           	mov    ecx,edi
  53631a:	ff d2                                           	call   edx
  53631c:	f6 86 90 02 00 00 02                            	test   BYTE PTR [esi+0x290],0x2
  536323:	e9 71 ff ff ff                                  	jmp    0x536299
  536328:	8b cf                                           	mov    ecx,edi
  53632a:	e8 f1 d2 fb ff                                  	call   0x4f3620
  53632f:	80 be 8c 02 00 00 00                            	cmp    BYTE PTR [esi+0x28c],0x0
  536336:	75 0d                                           	jne    0x536345
  536338:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  53633a:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  53633d:	6a 00                                           	push   0x0
  53633f:	6a 08                                           	push   0x8
  536341:	8b cb                                           	mov    ecx,ebx
  536343:	ff d2                                           	call   edx
  536345:	83 be 80 02 00 00 01                            	cmp    DWORD PTR [esi+0x280],0x1
  53634c:	8b 86 54 02 00 00                               	mov    eax,DWORD PTR [esi+0x254]
  536352:	89 86 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],eax
  536358:	75 18                                           	jne    0x536372
  53635a:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  536360:	f3 0f 5c 86 e0 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x2e0]
  536368:	f3 0f 58 86 f0 02 00 00                         	addss  xmm0,DWORD PTR [esi+0x2f0]
  536370:	eb 16                                           	jmp    0x536388
  536372:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  536378:	f3 0f 5c 86 e4 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x2e4]
  536380:	f3 0f 58 86 f4 02 00 00                         	addss  xmm0,DWORD PTR [esi+0x2f4]
  536388:	f3 0f 11 86 88 02 00 00                         	movss  DWORD PTR [esi+0x288],xmm0
  536390:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  536392:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  536398:	8b cb                                           	mov    ecx,ebx
  53639a:	ff d0                                           	call   eax
  53639c:	5b                                              	pop    ebx
  53639d:	5f                                              	pop    edi
  53639e:	b0 01                                           	mov    al,0x1
  5363a0:	5e                                              	pop    esi
  5363a1:	c2 10 00                                        	ret    0x10
