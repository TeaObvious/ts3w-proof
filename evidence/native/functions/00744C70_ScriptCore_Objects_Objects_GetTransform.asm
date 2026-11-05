# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00744c70, 0x00744d73); analyst name Objects_GetTransform.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00744c70 <.text+0x343c70>:
  744c70:	55                   	push   ebp
  744c71:	8b ec                	mov    ebp,esp
  744c73:	83 e4 f0             	and    esp,0xfffffff0
  744c76:	83 ec 4c             	sub    esp,0x4c
  744c79:	56                   	push   esi
  744c7a:	e8 f1 28 1f 00       	call   0x937570
  744c7f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  744c82:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  744c85:	51                   	push   ecx
  744c86:	52                   	push   edx
  744c87:	8b c8                	mov    ecx,eax
  744c89:	e8 f2 32 1f 00       	call   0x937f80
  744c8e:	85 c0                	test   eax,eax
  744c90:	74 60                	je     0x744cf2
  744c92:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  744c98:	51                   	push   ecx
  744c99:	8b c8                	mov    ecx,eax
  744c9b:	e8 c0 f5 1e 00       	call   0x934260
  744ca0:	85 c0                	test   eax,eax
  744ca2:	74 4e                	je     0x744cf2
  744ca4:	8d 54 24 10          	lea    edx,[esp+0x10]
  744ca8:	52                   	push   edx
  744ca9:	8b c8                	mov    ecx,eax
  744cab:	e8 e0 2d 21 00       	call   0x957a90
  744cb0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  744cb3:	8d 44 24 10          	lea    eax,[esp+0x10]
  744cb7:	50                   	push   eax
  744cb8:	56                   	push   esi
  744cb9:	e8 22 ad 39 00       	call   0xadf9e0
  744cbe:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  744cc2:	51                   	push   ecx
  744cc3:	8d 56 10             	lea    edx,[esi+0x10]
  744cc6:	52                   	push   edx
  744cc7:	e8 14 ad 39 00       	call   0xadf9e0
  744ccc:	8d 44 24 40          	lea    eax,[esp+0x40]
  744cd0:	50                   	push   eax
  744cd1:	8d 4e 20             	lea    ecx,[esi+0x20]
  744cd4:	51                   	push   ecx
  744cd5:	e8 06 ad 39 00       	call   0xadf9e0
  744cda:	8d 54 24 58          	lea    edx,[esp+0x58]
  744cde:	52                   	push   edx
  744cdf:	8d 46 30             	lea    eax,[esi+0x30]
  744ce2:	50                   	push   eax
  744ce3:	e8 f8 ac 39 00       	call   0xadf9e0
  744ce8:	83 c4 20             	add    esp,0x20
  744ceb:	8b c6                	mov    eax,esi
  744ced:	5e                   	pop    esi
  744cee:	8b e5                	mov    esp,ebp
  744cf0:	5d                   	pop    ebp
  744cf1:	c3                   	ret
  744cf2:	d9 ee                	fldz
  744cf4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  744cf7:	83 ec 10             	sub    esp,0x10
  744cfa:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  744cfe:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  744d02:	8b ce                	mov    ecx,esi
  744d04:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  744d08:	d9 e8                	fld1
  744d0a:	d9 1c 24             	fstp   DWORD PTR [esp]
  744d0d:	e8 8e 72 02 00       	call   0x76bfa0
  744d12:	d9 ee                	fldz
  744d14:	83 ec 10             	sub    esp,0x10
  744d17:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  744d1b:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  744d1f:	8d 4e 10             	lea    ecx,[esi+0x10]
  744d22:	d9 e8                	fld1
  744d24:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  744d28:	d9 1c 24             	fstp   DWORD PTR [esp]
  744d2b:	e8 70 72 02 00       	call   0x76bfa0
  744d30:	d9 ee                	fldz
  744d32:	83 ec 10             	sub    esp,0x10
  744d35:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  744d39:	8d 4e 20             	lea    ecx,[esi+0x20]
  744d3c:	d9 e8                	fld1
  744d3e:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  744d42:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  744d46:	d9 1c 24             	fstp   DWORD PTR [esp]
  744d49:	e8 52 72 02 00       	call   0x76bfa0
  744d4e:	d9 e8                	fld1
  744d50:	83 ec 10             	sub    esp,0x10
  744d53:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  744d57:	8d 4e 30             	lea    ecx,[esi+0x30]
  744d5a:	d9 ee                	fldz
  744d5c:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  744d60:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  744d64:	d9 1c 24             	fstp   DWORD PTR [esp]
  744d67:	e8 34 72 02 00       	call   0x76bfa0
  744d6c:	8b c6                	mov    eax,esi
  744d6e:	5e                   	pop    esi
  744d6f:	8b e5                	mov    esp,ebp
  744d71:	5d                   	pop    ebp
  744d72:	c3                   	ret
