# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005363c0 WinScrollbar_OnMouseUp
# Complete Ghidra body [005363c0, 0053647d] inclusive; 62 instructions, 190 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005363C0_WinScrollbar_OnMouseUp.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005363c0 <.text+0x1353c0>:
  5363c0:	56                                              	push   esi
  5363c1:	8b f1                                           	mov    esi,ecx
  5363c3:	85 f6                                           	test   esi,esi
  5363c5:	57                                              	push   edi
  5363c6:	74 05                                           	je     0x5363cd
  5363c8:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5363cb:	eb 02                                           	jmp    0x5363cf
  5363cd:	33 ff                                           	xor    edi,edi
  5363cf:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  5363d2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5363d4:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  5363d7:	6a 01                                           	push   0x1
  5363d9:	ff d2                                           	call   edx
  5363db:	3b c7                                           	cmp    eax,edi
  5363dd:	75 12                                           	jne    0x5363f1
  5363df:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  5363e2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5363e4:	8b 40 68                                        	mov    eax,DWORD PTR [eax+0x68]
  5363e7:	6a 00                                           	push   0x0
  5363e9:	8d 56 04                                        	lea    edx,[esi+0x4]
  5363ec:	52                                              	push   edx
  5363ed:	6a 01                                           	push   0x1
  5363ef:	ff d0                                           	call   eax
  5363f1:	80 be 85 02 00 00 03                            	cmp    BYTE PTR [esi+0x285],0x3
  5363f8:	75 18                                           	jne    0x536412
  5363fa:	8b 96 50 02 00 00                               	mov    edx,DWORD PTR [esi+0x250]
  536400:	8b 86 54 02 00 00                               	mov    eax,DWORD PTR [esi+0x254]
  536406:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  536409:	8d 8e 50 02 00 00                               	lea    ecx,[esi+0x250]
  53640f:	50                                              	push   eax
  536410:	ff d2                                           	call   edx
  536412:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  536416:	8b 06                                           	mov    eax,DWORD PTR [esi]
  536418:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  53641e:	83 ec 08                                        	sub    esp,0x8
  536421:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  536425:	8b ce                                           	mov    ecx,esi
  536427:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  53642b:	c6 86 85 02 00 00 ff                            	mov    BYTE PTR [esi+0x285],0xff
  536432:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  536435:	ff d2                                           	call   edx
  536437:	f6 86 90 02 00 00 02                            	test   BYTE PTR [esi+0x290],0x2
  53643e:	88 86 84 02 00 00                               	mov    BYTE PTR [esi+0x284],al
  536444:	75 23                                           	jne    0x536469
  536446:	8d 8e 98 02 00 00                               	lea    ecx,[esi+0x298]
  53644c:	e8 cf d1 fb ff                                  	call   0x4f3620
  536451:	80 be 8c 02 00 00 00                            	cmp    BYTE PTR [esi+0x28c],0x0
  536458:	75 0f                                           	jne    0x536469
  53645a:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  53645d:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  536460:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536463:	6a 00                                           	push   0x0
  536465:	6a 08                                           	push   0x8
  536467:	ff d2                                           	call   edx
  536469:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  53646c:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  536472:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  536475:	ff d2                                           	call   edx
  536477:	5f                                              	pop    edi
  536478:	b0 01                                           	mov    al,0x1
  53647a:	5e                                              	pop    esi
  53647b:	c2 10 00                                        	ret    0x10
