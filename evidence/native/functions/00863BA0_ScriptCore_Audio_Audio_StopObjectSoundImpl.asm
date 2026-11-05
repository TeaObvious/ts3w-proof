# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00863ba0 <.text+0x462ba0>:
  863ba0:	51                                              	push   ecx
  863ba1:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  863ba8:	e8 c3 39 0d 00                                  	call   0x937570
  863bad:	85 c0                                           	test   eax,eax
  863baf:	74 64                                           	je     0x863c15
  863bb1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  863bb5:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  863bb9:	56                                              	push   esi
  863bba:	51                                              	push   ecx
  863bbb:	52                                              	push   edx
  863bbc:	8b c8                                           	mov    ecx,eax
  863bbe:	e8 bd 43 0d 00                                  	call   0x937f80
  863bc3:	50                                              	push   eax
  863bc4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  863bc8:	e8 e3 13 01 00                                  	call   0x874fb0
  863bcd:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  863bd1:	85 f6                                           	test   esi,esi
  863bd3:	74 3f                                           	je     0x863c14
  863bd5:	a1 70 9e 1e 01                                  	mov    eax,ds:0x11e9e70
  863bda:	50                                              	push   eax
  863bdb:	8b ce                                           	mov    ecx,esi
  863bdd:	e8 7e 06 0d 00                                  	call   0x934260
  863be2:	85 c0                                           	test   eax,eax
  863be4:	74 0e                                           	je     0x863bf4
  863be6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  863bea:	6a 00                                           	push   0x0
  863bec:	51                                              	push   ecx
  863bed:	8b c8                                           	mov    ecx,eax
  863bef:	e8 bc ef 0d 00                                  	call   0x942bb0
  863bf4:	8d 46 04                                        	lea    eax,[esi+0x4]
  863bf7:	8b d0                                           	mov    edx,eax
  863bf9:	83 c9 ff                                        	or     ecx,0xffffffff
  863bfc:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  863c00:	49                                              	dec    ecx
  863c01:	75 11                                           	jne    0x863c14
  863c03:	ba 01 00 00 00                                  	mov    edx,0x1
  863c08:	87 10                                           	xchg   DWORD PTR [eax],edx
  863c0a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863c0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863c0e:	6a 01                                           	push   0x1
  863c10:	8b ce                                           	mov    ecx,esi
  863c12:	ff d2                                           	call   edx
  863c14:	5e                                              	pop    esi
  863c15:	59                                              	pop    ecx
  863c16:	c3                                              	ret
