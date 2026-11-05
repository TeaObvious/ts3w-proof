# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00539420 WinSlider_OnMouseMove
# Complete Ghidra body [00539420, 005394c8] inclusive; 60 instructions, 169 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00539420_WinSlider_OnMouseMove.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00539420 <.text+0x138420>:
  539420:	56                                              	push   esi
  539421:	8b f1                                           	mov    esi,ecx
  539423:	85 f6                                           	test   esi,esi
  539425:	57                                              	push   edi
  539426:	74 05                                           	je     0x53942d
  539428:	8d 7e 04                                        	lea    edi,[esi+0x4]
  53942b:	eb 02                                           	jmp    0x53942f
  53942d:	33 ff                                           	xor    edi,edi
  53942f:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  539432:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  539434:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  539437:	6a 01                                           	push   0x1
  539439:	ff d2                                           	call   edx
  53943b:	3b c7                                           	cmp    eax,edi
  53943d:	75 49                                           	jne    0x539488
  53943f:	0f b6 86 65 02 00 00                            	movzx  eax,BYTE PTR [esi+0x265]
  539446:	83 e8 01                                        	sub    eax,0x1
  539449:	75 77                                           	jne    0x5394c2
  53944b:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  53944f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  539451:	8b 90 ac 00 00 00                               	mov    edx,DWORD PTR [eax+0xac]
  539457:	53                                              	push   ebx
  539458:	8b 9e 50 02 00 00                               	mov    ebx,DWORD PTR [esi+0x250]
  53945e:	6a 01                                           	push   0x1
  539460:	83 ec 08                                        	sub    esp,0x8
  539463:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  539467:	8d be 50 02 00 00                               	lea    edi,[esi+0x250]
  53946d:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  539471:	8b ce                                           	mov    ecx,esi
  539473:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  539476:	ff d2                                           	call   edx
  539478:	50                                              	push   eax
  539479:	8b 43 1c                                        	mov    eax,DWORD PTR [ebx+0x1c]
  53947c:	8b cf                                           	mov    ecx,edi
  53947e:	ff d0                                           	call   eax
  539480:	5b                                              	pop    ebx
  539481:	5f                                              	pop    edi
  539482:	b0 01                                           	mov    al,0x1
  539484:	5e                                              	pop    esi
  539485:	c2 0c 00                                        	ret    0xc
  539488:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  53948c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  53948e:	8b 82 a8 00 00 00                               	mov    eax,DWORD PTR [edx+0xa8]
  539494:	83 ec 08                                        	sub    esp,0x8
  539497:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  53949b:	8b ce                                           	mov    ecx,esi
  53949d:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5394a1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5394a4:	ff d0                                           	call   eax
  5394a6:	38 86 64 02 00 00                               	cmp    BYTE PTR [esi+0x264],al
  5394ac:	74 14                                           	je     0x5394c2
  5394ae:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  5394b1:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  5394b4:	88 86 64 02 00 00                               	mov    BYTE PTR [esi+0x264],al
  5394ba:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  5394c0:	ff d0                                           	call   eax
  5394c2:	5f                                              	pop    edi
  5394c3:	b0 01                                           	mov    al,0x1
  5394c5:	5e                                              	pop    esi
  5394c6:	c2 0c 00                                        	ret    0xc
