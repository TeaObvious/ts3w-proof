# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00536b30 WinScrollbar_SetInteractiveValue
# Complete Ghidra body [00536b30, 00536bba] inclusive; 40 instructions, 139 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00536B30_WinScrollbar_SetInteractiveValue.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00536b30 <.text+0x135b30>:
  536b30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  536b34:	83 ec 1c                                        	sub    esp,0x1c
  536b37:	56                                              	push   esi
  536b38:	8b f1                                           	mov    esi,ecx
  536b3a:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  536b3d:	2b 4e 1c                                        	sub    ecx,DWORD PTR [esi+0x1c]
  536b40:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  536b43:	3b c1                                           	cmp    eax,ecx
  536b45:	0f 4f c1                                        	cmovg  eax,ecx
  536b48:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  536b4b:	3b c1                                           	cmp    eax,ecx
  536b4d:	0f 4c c1                                        	cmovl  eax,ecx
  536b50:	3b c2                                           	cmp    eax,edx
  536b52:	74 60                                           	je     0x536bb4
  536b54:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
  536b59:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  536b5c:	74 3f                                           	je     0x536b9d
  536b5e:	8b 8e ec fd ff ff                               	mov    ecx,DWORD PTR [esi-0x214]
  536b64:	85 c9                                           	test   ecx,ecx
  536b66:	c7 44 24 0c dd c8 f0 8e                         	mov    DWORD PTR [esp+0xc],0x8ef0c8dd
  536b6e:	75 06                                           	jne    0x536b76
  536b70:	8b 8e e8 fd ff ff                               	mov    ecx,DWORD PTR [esi-0x218]
  536b76:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  536b7a:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  536b7e:	8b 96 b4 fd ff ff                               	mov    edx,DWORD PTR [esi-0x24c]
  536b84:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
  536b8a:	8d 8e b4 fd ff ff                               	lea    ecx,[esi-0x24c]
  536b90:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  536b94:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  536b98:	50                                              	push   eax
  536b99:	ff d2                                           	call   edx
  536b9b:	eb 03                                           	jmp    0x536ba0
  536b9d:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  536ba0:	8b 86 b0 fd ff ff                               	mov    eax,DWORD PTR [esi-0x250]
  536ba6:	8b 90 9c 00 00 00                               	mov    edx,DWORD PTR [eax+0x9c]
  536bac:	8d 8e b0 fd ff ff                               	lea    ecx,[esi-0x250]
  536bb2:	ff d2                                           	call   edx
  536bb4:	5e                                              	pop    esi
  536bb5:	83 c4 1c                                        	add    esp,0x1c
  536bb8:	c2 08 00                                        	ret    0x8
