# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073aab0, 0x0073ab1c); analyst name Animation_ForceAnimation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073aab0 <.text+0x339ab0>:
  73aab0:	51                   	push   ecx
  73aab1:	56                   	push   esi
  73aab2:	e8 b9 ca 1f 00       	call   0x937570
  73aab7:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  73aabb:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  73aabf:	51                   	push   ecx
  73aac0:	52                   	push   edx
  73aac1:	8b c8                	mov    ecx,eax
  73aac3:	e8 b8 d4 1f 00       	call   0x937f80
  73aac8:	8b f0                	mov    esi,eax
  73aaca:	85 f6                	test   esi,esi
  73aacc:	74 4b                	je     0x73ab19
  73aace:	57                   	push   edi
  73aacf:	8d 7e 04             	lea    edi,[esi+0x4]
  73aad2:	8b c7                	mov    eax,edi
  73aad4:	b9 01 00 00 00       	mov    ecx,0x1
  73aad9:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73aadd:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73aae3:	52                   	push   edx
  73aae4:	8b ce                	mov    ecx,esi
  73aae6:	e8 75 97 1f 00       	call   0x934260
  73aaeb:	85 c0                	test   eax,eax
  73aaed:	74 0c                	je     0x73aafb
  73aaef:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  73aaf3:	51                   	push   ecx
  73aaf4:	8b c8                	mov    ecx,eax
  73aaf6:	e8 d5 1f 20 00       	call   0x93cad0
  73aafb:	8b d7                	mov    edx,edi
  73aafd:	83 c8 ff             	or     eax,0xffffffff
  73ab00:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  73ab04:	48                   	dec    eax
  73ab05:	75 11                	jne    0x73ab18
  73ab07:	b9 01 00 00 00       	mov    ecx,0x1
  73ab0c:	87 0f                	xchg   DWORD PTR [edi],ecx
  73ab0e:	8b 16                	mov    edx,DWORD PTR [esi]
  73ab10:	8b 02                	mov    eax,DWORD PTR [edx]
  73ab12:	6a 01                	push   0x1
  73ab14:	8b ce                	mov    ecx,esi
  73ab16:	ff d0                	call   eax
  73ab18:	5f                   	pop    edi
  73ab19:	5e                   	pop    esi
  73ab1a:	59                   	pop    ecx
  73ab1b:	c3                   	ret
