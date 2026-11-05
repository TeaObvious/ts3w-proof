# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0051f7f0 WinDialog_OnMouseDown
# Complete Ghidra body [0051f7f0, 0051f934] inclusive; 88 instructions, 325 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 0051F7F0_WinDialog_OnMouseDown.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0051f7f0 <.text+0x11e7f0>:
  51f7f0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  51f7f4:	83 ec 08                                        	sub    esp,0x8
  51f7f7:	56                                              	push   esi
  51f7f8:	83 ec 08                                        	sub    esp,0x8
  51f7fb:	8b f1                                           	mov    esi,ecx
  51f7fd:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  51f801:	8b 06                                           	mov    eax,DWORD PTR [esi]
  51f803:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  51f807:	8b 90 a4 00 00 00                               	mov    edx,DWORD PTR [eax+0xa4]
  51f80d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  51f810:	ff d2                                           	call   edx
  51f812:	83 c9 ff                                        	or     ecx,0xffffffff
  51f815:	3b c1                                           	cmp    eax,ecx
  51f817:	89 86 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],eax
  51f81d:	0f 84 fb 00 00 00                               	je     0x51f91e
  51f823:	83 f8 09                                        	cmp    eax,0x9
  51f826:	77 26                                           	ja     0x51f84e
  51f828:	0f b6 80 40 f9 51 00                            	movzx  eax,BYTE PTR [eax+0x51f940]
  51f82f:	ff 24 85 38 f9 51 00                            	jmp    DWORD PTR [eax*4+0x51f938]
  51f836:	f6 86 58 02 00 00 01                            	test   BYTE PTR [esi+0x258],0x1
  51f83d:	eb 07                                           	jmp    0x51f846
  51f83f:	f6 86 58 02 00 00 02                            	test   BYTE PTR [esi+0x258],0x2
  51f846:	75 06                                           	jne    0x51f84e
  51f848:	89 8e 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],ecx
  51f84e:	39 8e 5c 02 00 00                               	cmp    DWORD PTR [esi+0x25c],ecx
  51f854:	0f 84 c4 00 00 00                               	je     0x51f91e
  51f85a:	8b 4e 2c                                        	mov    ecx,DWORD PTR [esi+0x2c]
  51f85d:	57                                              	push   edi
  51f85e:	8b 79 04                                        	mov    edi,DWORD PTR [ecx+0x4]
  51f861:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  51f864:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  51f866:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  51f869:	83 ec 08                                        	sub    esp,0x8
  51f86c:	54                                              	push   esp
  51f86d:	ff d0                                           	call   eax
  51f86f:	8b 97 c8 00 00 00                               	mov    edx,DWORD PTR [edi+0xc8]
  51f875:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  51f879:	51                                              	push   ecx
  51f87a:	8b 4e 2c                                        	mov    ecx,DWORD PTR [esi+0x2c]
  51f87d:	83 c1 04                                        	add    ecx,0x4
  51f880:	ff d2                                           	call   edx
  51f882:	8b 86 5c 02 00 00                               	mov    eax,DWORD PTR [esi+0x25c]
  51f888:	83 f8 09                                        	cmp    eax,0x9
  51f88b:	77 6e                                           	ja     0x51f8fb
  51f88d:	0f b6 80 5c f9 51 00                            	movzx  eax,BYTE PTR [eax+0x51f95c]
  51f894:	ff 24 85 4c f9 51 00                            	jmp    DWORD PTR [eax*4+0x51f94c]
  51f89b:	f3 0f 10 46 48                                  	movss  xmm0,DWORD PTR [esi+0x48]
  51f8a0:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  51f8a6:	f3 0f 11 86 60 02 00 00                         	movss  DWORD PTR [esi+0x260],xmm0
  51f8ae:	f3 0f 10 46 4c                                  	movss  xmm0,DWORD PTR [esi+0x4c]
  51f8b3:	f3 0f 5c 44 24 0c                               	subss  xmm0,DWORD PTR [esp+0xc]
  51f8b9:	eb 38                                           	jmp    0x51f8f3
  51f8bb:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  51f8c1:	f3 0f 5c 46 40                                  	subss  xmm0,DWORD PTR [esi+0x40]
  51f8c6:	eb 18                                           	jmp    0x51f8e0
  51f8c8:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  51f8ce:	f3 0f 5c 46 40                                  	subss  xmm0,DWORD PTR [esi+0x40]
  51f8d3:	eb d1                                           	jmp    0x51f8a6
  51f8d5:	f3 0f 10 46 48                                  	movss  xmm0,DWORD PTR [esi+0x48]
  51f8da:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  51f8e0:	f3 0f 11 86 60 02 00 00                         	movss  DWORD PTR [esi+0x260],xmm0
  51f8e8:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  51f8ee:	f3 0f 5c 46 44                                  	subss  xmm0,DWORD PTR [esi+0x44]
  51f8f3:	f3 0f 11 86 64 02 00 00                         	movss  DWORD PTR [esi+0x264],xmm0
  51f8fb:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  51f8fe:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  51f900:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  51f903:	6a 01                                           	push   0x1
  51f905:	8d 7e 04                                        	lea    edi,[esi+0x4]
  51f908:	ff d0                                           	call   eax
  51f90a:	3b c7                                           	cmp    eax,edi
  51f90c:	74 0f                                           	je     0x51f91d
  51f90e:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  51f911:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  51f913:	8b 42 64                                        	mov    eax,DWORD PTR [edx+0x64]
  51f916:	6a 00                                           	push   0x0
  51f918:	57                                              	push   edi
  51f919:	6a 01                                           	push   0x1
  51f91b:	ff d0                                           	call   eax
  51f91d:	5f                                              	pop    edi
  51f91e:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  51f921:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  51f927:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  51f92a:	ff d0                                           	call   eax
  51f92c:	b0 01                                           	mov    al,0x1
  51f92e:	5e                                              	pop    esi
  51f92f:	83 c4 08                                        	add    esp,0x8
  51f932:	c2 10 00                                        	ret    0x10
