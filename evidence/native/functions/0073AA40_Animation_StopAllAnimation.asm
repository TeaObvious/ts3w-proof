# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073aa40, 0x0073aaaa); analyst name Animation_StopAllAnimation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073aa40 <.text+0x339a40>:
  73aa40:	51                   	push   ecx
  73aa41:	56                   	push   esi
  73aa42:	e8 29 cb 1f 00       	call   0x937570
  73aa47:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  73aa4b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  73aa4f:	51                   	push   ecx
  73aa50:	52                   	push   edx
  73aa51:	8b c8                	mov    ecx,eax
  73aa53:	e8 28 d5 1f 00       	call   0x937f80
  73aa58:	8b f0                	mov    esi,eax
  73aa5a:	85 f6                	test   esi,esi
  73aa5c:	74 49                	je     0x73aaa7
  73aa5e:	57                   	push   edi
  73aa5f:	8d 7e 04             	lea    edi,[esi+0x4]
  73aa62:	8b c7                	mov    eax,edi
  73aa64:	b9 01 00 00 00       	mov    ecx,0x1
  73aa69:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73aa6d:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73aa73:	52                   	push   edx
  73aa74:	8b ce                	mov    ecx,esi
  73aa76:	e8 e5 97 1f 00       	call   0x934260
  73aa7b:	85 c0                	test   eax,eax
  73aa7d:	74 0a                	je     0x73aa89
  73aa7f:	8d 48 08             	lea    ecx,[eax+0x8]
  73aa82:	8b 01                	mov    eax,DWORD PTR [ecx]
  73aa84:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  73aa87:	ff d2                	call   edx
  73aa89:	8b c7                	mov    eax,edi
  73aa8b:	83 c9 ff             	or     ecx,0xffffffff
  73aa8e:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73aa92:	49                   	dec    ecx
  73aa93:	75 11                	jne    0x73aaa6
  73aa95:	ba 01 00 00 00       	mov    edx,0x1
  73aa9a:	87 17                	xchg   DWORD PTR [edi],edx
  73aa9c:	8b 06                	mov    eax,DWORD PTR [esi]
  73aa9e:	8b 10                	mov    edx,DWORD PTR [eax]
  73aaa0:	6a 01                	push   0x1
  73aaa2:	8b ce                	mov    ecx,esi
  73aaa4:	ff d2                	call   edx
  73aaa6:	5f                   	pop    edi
  73aaa7:	5e                   	pop    esi
  73aaa8:	59                   	pop    ecx
  73aaa9:	c3                   	ret
