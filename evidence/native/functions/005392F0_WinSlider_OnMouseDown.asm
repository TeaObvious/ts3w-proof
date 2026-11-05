# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005392f0 WinSlider_OnMouseDown
# Complete Ghidra body [005392f0, 00539392] inclusive; 60 instructions, 163 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005392F0_WinSlider_OnMouseDown.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005392f0 <.text+0x1382f0>:
  5392f0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  5392f4:	56                                              	push   esi
  5392f5:	83 ec 08                                        	sub    esp,0x8
  5392f8:	8b f1                                           	mov    esi,ecx
  5392fa:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5392fe:	8b 06                                           	mov    eax,DWORD PTR [esi]
  539300:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  539304:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  53930a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  53930d:	ff d2                                           	call   edx
  53930f:	3c ff                                           	cmp    al,0xff
  539311:	88 86 65 02 00 00                               	mov    BYTE PTR [esi+0x265],al
  539317:	74 74                                           	je     0x53938d
  539319:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  53931c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  53931e:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  539321:	57                                              	push   edi
  539322:	6a 01                                           	push   0x1
  539324:	8d 7e 04                                        	lea    edi,[esi+0x4]
  539327:	ff d2                                           	call   edx
  539329:	3b c7                                           	cmp    eax,edi
  53932b:	74 0f                                           	je     0x53933c
  53932d:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  539330:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  539332:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  539335:	6a 00                                           	push   0x0
  539337:	57                                              	push   edi
  539338:	6a 01                                           	push   0x1
  53933a:	ff d2                                           	call   edx
  53933c:	0f b6 86 65 02 00 00                            	movzx  eax,BYTE PTR [esi+0x265]
  539343:	83 e8 02                                        	sub    eax,0x2
  539346:	75 38                                           	jne    0x539380
  539348:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  53934c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  53934e:	8b 90 ac 00 00 00                               	mov    edx,DWORD PTR [eax+0xac]
  539354:	53                                              	push   ebx
  539355:	55                                              	push   ebp
  539356:	8b ae 50 02 00 00                               	mov    ebp,DWORD PTR [esi+0x250]
  53935c:	6a 01                                           	push   0x1
  53935e:	83 ec 08                                        	sub    esp,0x8
  539361:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  539365:	8d 9e 50 02 00 00                               	lea    ebx,[esi+0x250]
  53936b:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  53936f:	8b ce                                           	mov    ecx,esi
  539371:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  539374:	ff d2                                           	call   edx
  539376:	50                                              	push   eax
  539377:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  53937a:	8b cb                                           	mov    ecx,ebx
  53937c:	ff d0                                           	call   eax
  53937e:	5d                                              	pop    ebp
  53937f:	5b                                              	pop    ebx
  539380:	8b 17                                           	mov    edx,DWORD PTR [edi]
  539382:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  539388:	8b cf                                           	mov    ecx,edi
  53938a:	ff d0                                           	call   eax
  53938c:	5f                                              	pop    edi
  53938d:	b0 01                                           	mov    al,0x1
  53938f:	5e                                              	pop    esi
  539390:	c2 10 00                                        	ret    0x10
