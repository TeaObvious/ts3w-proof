# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00863c20 <.text+0x462c20>:
  863c20:	51                                              	push   ecx
  863c21:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  863c28:	e8 43 39 0d 00                                  	call   0x937570
  863c2d:	85 c0                                           	test   eax,eax
  863c2f:	74 61                                           	je     0x863c92
  863c31:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  863c35:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  863c39:	56                                              	push   esi
  863c3a:	51                                              	push   ecx
  863c3b:	52                                              	push   edx
  863c3c:	8b c8                                           	mov    ecx,eax
  863c3e:	e8 3d 43 0d 00                                  	call   0x937f80
  863c43:	50                                              	push   eax
  863c44:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  863c48:	e8 63 13 01 00                                  	call   0x874fb0
  863c4d:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  863c51:	85 f6                                           	test   esi,esi
  863c53:	74 3c                                           	je     0x863c91
  863c55:	a1 70 9e 1e 01                                  	mov    eax,ds:0x11e9e70
  863c5a:	50                                              	push   eax
  863c5b:	8b ce                                           	mov    ecx,esi
  863c5d:	e8 fe 05 0d 00                                  	call   0x934260
  863c62:	85 c0                                           	test   eax,eax
  863c64:	74 0b                                           	je     0x863c71
  863c66:	6a ff                                           	push   0xffffffff
  863c68:	6a 00                                           	push   0x0
  863c6a:	8b c8                                           	mov    ecx,eax
  863c6c:	e8 cf ef 0d 00                                  	call   0x942c40
  863c71:	8d 46 04                                        	lea    eax,[esi+0x4]
  863c74:	8b c8                                           	mov    ecx,eax
  863c76:	83 ca ff                                        	or     edx,0xffffffff
  863c79:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  863c7d:	4a                                              	dec    edx
  863c7e:	75 11                                           	jne    0x863c91
  863c80:	b9 01 00 00 00                                  	mov    ecx,0x1
  863c85:	87 08                                           	xchg   DWORD PTR [eax],ecx
  863c87:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863c89:	8b 02                                           	mov    eax,DWORD PTR [edx]
  863c8b:	6a 01                                           	push   0x1
  863c8d:	8b ce                                           	mov    ecx,esi
  863c8f:	ff d0                                           	call   eax
  863c91:	5e                                              	pop    esi
  863c92:	59                                              	pop    ecx
  863c93:	c3                                              	ret
