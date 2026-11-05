# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939f90,0x0093a056); analyst name ParameterBuilder_AppendByteString.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939f90 <.text+0x538f90>:
  939f90:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  939f94:	83 ec 14             	sub    esp,0x14
  939f97:	53                   	push   ebx
  939f98:	56                   	push   esi
  939f99:	57                   	push   edi
  939f9a:	8d 70 01             	lea    esi,[eax+0x1]
  939f9d:	8d 49 00             	lea    ecx,[ecx+0x0]
  939fa0:	8a 10                	mov    dl,BYTE PTR [eax]
  939fa2:	83 c0 01             	add    eax,0x1
  939fa5:	84 d2                	test   dl,dl
  939fa7:	75 f7                	jne    0x939fa0
  939fa9:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  939fac:	2b c6                	sub    eax,esi
  939fae:	8b 71 1c             	mov    esi,DWORD PTR [ecx+0x1c]
  939fb1:	2b 71 18             	sub    esi,DWORD PTR [ecx+0x18]
  939fb4:	8d 79 18             	lea    edi,[ecx+0x18]
  939fb7:	8b d8                	mov    ebx,eax
  939fb9:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  939fbd:	c1 fe 02             	sar    esi,0x2
  939fc0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  939fc4:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
  939fcb:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  939fcf:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  939fd3:	8d 43 04             	lea    eax,[ebx+0x4]
  939fd6:	83 e0 fc             	and    eax,0xfffffffc
  939fd9:	3b 51 08             	cmp    edx,DWORD PTR [ecx+0x8]
  939fdc:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  939fe0:	c7 44 24 14 01 00 00 	mov    DWORD PTR [esp+0x14],0x1
  939fe7:	00 
  939fe8:	73 25                	jae    0x93a00f
  939fea:	85 d2                	test   edx,edx
  939fec:	55                   	push   ebp
  939fed:	8d 6a 10             	lea    ebp,[edx+0x10]
  939ff0:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
  939ff3:	5d                   	pop    ebp
  939ff4:	74 28                	je     0x93a01e
  939ff6:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  939ffa:	89 0a                	mov    DWORD PTR [edx],ecx
  939ffc:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  93a000:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  93a003:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  93a007:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  93a00a:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
  93a00d:	eb 0f                	jmp    0x93a01e
  93a00f:	8d 44 24 10          	lea    eax,[esp+0x10]
  93a013:	50                   	push   eax
  93a014:	52                   	push   edx
  93a015:	e8 06 f1 ba ff       	call   0x4e9120
  93a01a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  93a01e:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  93a022:	c1 e8 02             	shr    eax,0x2
  93a025:	51                   	push   ecx
  93a026:	03 c6                	add    eax,esi
  93a028:	50                   	push   eax
  93a029:	8b cf                	mov    ecx,edi
  93a02b:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  93a032:	00 
  93a033:	e8 28 a1 b9 ff       	call   0x4d4160
  93a038:	8b 07                	mov    eax,DWORD PTR [edi]
  93a03a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  93a03e:	03 44 24 0c          	add    eax,DWORD PTR [esp+0xc]
  93a042:	53                   	push   ebx
  93a043:	52                   	push   edx
  93a044:	50                   	push   eax
  93a045:	e8 3c 52 64 00       	call   0xf7f286
  93a04a:	83 c4 0c             	add    esp,0xc
  93a04d:	5f                   	pop    edi
  93a04e:	5e                   	pop    esi
  93a04f:	5b                   	pop    ebx
  93a050:	83 c4 14             	add    esp,0x14
  93a053:	c2 08 00             	ret    0x8
