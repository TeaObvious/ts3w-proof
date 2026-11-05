# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00539850 WinSlider_SetInteractiveValue
# Complete Ghidra body [00539850, 005398e3] inclusive; 46 instructions, 148 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00539850_WinSlider_SetInteractiveValue.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00539850 <.text+0x138850>:
  539850:	83 ec 1c                                        	sub    esp,0x1c
  539853:	56                                              	push   esi
  539854:	8b f1                                           	mov    esi,ecx
  539856:	8b 86 b4 fd ff ff                               	mov    eax,DWORD PTR [esi-0x24c]
  53985c:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  53985f:	57                                              	push   edi
  539860:	8d be b4 fd ff ff                               	lea    edi,[esi-0x24c]
  539866:	8b cf                                           	mov    ecx,edi
  539868:	ff d2                                           	call   edx
  53986a:	a8 02                                           	test   al,0x2
  53986c:	74 6e                                           	je     0x5398dc
  53986e:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  539871:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  539875:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  539878:	3b c1                                           	cmp    eax,ecx
  53987a:	0f 4f c1                                        	cmovg  eax,ecx
  53987d:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  539880:	3b c1                                           	cmp    eax,ecx
  539882:	0f 4c c1                                        	cmovl  eax,ecx
  539885:	3b c2                                           	cmp    eax,edx
  539887:	74 53                                           	je     0x5398dc
  539889:	80 7c 24 2c 00                                  	cmp    BYTE PTR [esp+0x2c],0x0
  53988e:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  539891:	74 35                                           	je     0x5398c8
  539893:	8b 8e ec fd ff ff                               	mov    ecx,DWORD PTR [esi-0x214]
  539899:	85 c9                                           	test   ecx,ecx
  53989b:	c7 44 24 10 84 a8 00 ef                         	mov    DWORD PTR [esp+0x10],0xef00a884
  5398a3:	75 06                                           	jne    0x5398ab
  5398a5:	8b 8e e8 fd ff ff                               	mov    ecx,DWORD PTR [esi-0x218]
  5398ab:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5398af:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5398b1:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
  5398b7:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  5398bb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  5398bf:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5398c3:	50                                              	push   eax
  5398c4:	8b cf                                           	mov    ecx,edi
  5398c6:	ff d2                                           	call   edx
  5398c8:	8b 86 b0 fd ff ff                               	mov    eax,DWORD PTR [esi-0x250]
  5398ce:	8b 90 9c 00 00 00                               	mov    edx,DWORD PTR [eax+0x9c]
  5398d4:	8d 8e b0 fd ff ff                               	lea    ecx,[esi-0x250]
  5398da:	ff d2                                           	call   edx
  5398dc:	5f                                              	pop    edi
  5398dd:	5e                                              	pop    esi
  5398de:	83 c4 1c                                        	add    esp,0x1c
  5398e1:	c2 08 00                                        	ret    0x8
