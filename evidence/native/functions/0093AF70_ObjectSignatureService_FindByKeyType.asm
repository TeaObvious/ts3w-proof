# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; paired actual annotated Ghidra C: 0093AF70_ObjectSignatureService_FindByKeyType.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093af70 <.text+0x539f70>:
  93af70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  93af74:	3d 3f 34 dc 02                                  	cmp    eax,0x2dc343f
  93af79:	74 22                                           	je     0x93af9d
  93af7b:	3d f1 84 68 73                                  	cmp    eax,0x736884f1
  93af80:	74 05                                           	je     0x93af87
  93af82:	33 c0                                           	xor    eax,eax
  93af84:	c2 0c 00                                        	ret    0xc
  93af87:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  93af8b:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  93af8f:	50                                              	push   eax
  93af90:	52                                              	push   edx
  93af91:	8d 41 24                                        	lea    eax,[ecx+0x24]
  93af94:	50                                              	push   eax
  93af95:	e8 86 ff ff ff                                  	call   0x93af20
  93af9a:	c2 0c 00                                        	ret    0xc
  93af9d:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  93afa1:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  93afa5:	52                                              	push   edx
  93afa6:	50                                              	push   eax
  93afa7:	8d 51 14                                        	lea    edx,[ecx+0x14]
  93afaa:	52                                              	push   edx
  93afab:	e8 70 ff ff ff                                  	call   0x93af20
  93afb0:	c2 0c 00                                        	ret    0xc
