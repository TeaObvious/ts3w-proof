# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00799be0, 0x00799c36); analyst name ShaderBytecode_CreatePixelObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00799be0 <.text+0x398be0>:
  799be0:	53                   	push   ebx
  799be1:	55                   	push   ebp
  799be2:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  799be6:	85 ed                	test   ebp,ebp
  799be8:	56                   	push   esi
  799be9:	57                   	push   edi
  799bea:	8b f1                	mov    esi,ecx
  799bec:	b3 01                	mov    bl,0x1
  799bee:	75 03                	jne    0x799bf3
  799bf0:	8b 6e 08             	mov    ebp,DWORD PTR [esi+0x8]
  799bf3:	e8 98 61 e7 ff       	call   0x60fd90
  799bf8:	8b 08                	mov    ecx,DWORD PTR [eax]
  799bfa:	8b 91 a8 01 00 00    	mov    edx,DWORD PTR [ecx+0x1a8]
  799c00:	8d 7e 10             	lea    edi,[esi+0x10]
  799c03:	57                   	push   edi
  799c04:	55                   	push   ebp
  799c05:	50                   	push   eax
  799c06:	ff d2                	call   edx
  799c08:	85 c0                	test   eax,eax
  799c0a:	75 04                	jne    0x799c10
  799c0c:	39 07                	cmp    DWORD PTR [edi],eax
  799c0e:	75 02                	jne    0x799c12
  799c10:	32 db                	xor    bl,bl
  799c12:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  799c15:	33 ff                	xor    edi,edi
  799c17:	3b c7                	cmp    eax,edi
  799c19:	74 12                	je     0x799c2d
  799c1b:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  799c21:	50                   	push   eax
  799c22:	e8 49 c2 d4 ff       	call   0x4e5e70
  799c27:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
  799c2a:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
  799c2d:	5f                   	pop    edi
  799c2e:	5e                   	pop    esi
  799c2f:	5d                   	pop    ebp
  799c30:	8a c3                	mov    al,bl
  799c32:	5b                   	pop    ebx
  799c33:	c2 04 00             	ret    0x4
