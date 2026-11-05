# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ec59d0 (IntroMovie_OpenEALogo)
Complete function body: 0x00ec59d0..0x00ec5a1d (exclusive end)
Ghidra body ranges: [[00ec59d0, 00ec5a1c]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec59d0 <.text+0xac49d0>:
  ec59d0:	56                                              	push   esi
  ec59d1:	8b f1                                           	mov    esi,ecx
  ec59d3:	e8 18 6b 58 ff                                  	call   0x44c4f0
  ec59d8:	85 c0                                           	test   eax,eax
  ec59da:	74 16                                           	je     0xec59f2
  ec59dc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec59de:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  ec59e1:	6a 00                                           	push   0x0
  ec59e3:	6a 00                                           	push   0x0
  ec59e5:	68 e5 8b 16 06                                  	push   0x6168be5
  ec59ea:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  ec59ed:	51                                              	push   ecx
  ec59ee:	8b c8                                           	mov    ecx,eax
  ec59f0:	ff d2                                           	call   edx
  ec59f2:	68 94 4e 0f 01                                  	push   0x10f4e94
  ec59f7:	e8 b4 fb ff ff                                  	call   0xec55b0
  ec59fc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ec59ff:	68 80 02 00 00                                  	push   0x280
  ec5a04:	68 00 04 00 00                                  	push   0x400
  ec5a09:	68 84 4e 0f 01                                  	push   0x10f4e84
  ec5a0e:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  ec5a11:	e8 6a fd ff ff                                  	call   0xec5780
  ec5a16:	84 c0                                           	test   al,al
  ec5a18:	0f 95 c0                                        	setne  al
  ec5a1b:	5e                                              	pop    esi
  ec5a1c:	c3                                              	ret
