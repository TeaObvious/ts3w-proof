# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074faa0, 0x0074fc09); analyst name RadialRangeDestination_EvaluateScore.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074faa0 <.text+0x34eaa0>:
  74faa0:	51                   	push   ecx
  74faa1:	0f 57 d2             	xorps  xmm2,xmm2
  74faa4:	53                   	push   ebx
  74faa5:	56                   	push   esi
  74faa6:	57                   	push   edi
  74faa7:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  74faab:	0f 28 da             	movaps xmm3,xmm2
  74faae:	8b f1                	mov    esi,ecx
  74fab0:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  74fab6:	33 db                	xor    ebx,ebx
  74fab8:	eb 0f                	jmp    0x74fac9
  74faba:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  74fac0:	f3 0f 10 5c 24 0c    	movss  xmm3,DWORD PTR [esp+0xc]
  74fac6:	0f 57 d2             	xorps  xmm2,xmm2
  74fac9:	f3 0f 10 44 9e 0c    	movss  xmm0,DWORD PTR [esi+ebx*4+0xc]
  74facf:	0f 2f c2             	comiss xmm0,xmm2
  74fad2:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  74fad8:	0f 86 f5 00 00 00    	jbe    0x74fbd3
  74fade:	83 fb 06             	cmp    ebx,0x6
  74fae1:	0f 87 ec 00 00 00    	ja     0x74fbd3
  74fae7:	ff 24 9d 0c fc 74 00 	jmp    DWORD PTR [ebx*4+0x74fc0c]
  74faee:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  74faf3:	0f 2f d1             	comiss xmm2,xmm1
  74faf6:	77 1e                	ja     0x74fb16
  74faf8:	0f 2e 4e 60          	ucomiss xmm1,DWORD PTR [esi+0x60]
  74fafc:	9f                   	lahf
  74fafd:	f6 c4 44             	test   ah,0x44
  74fb00:	7b 14                	jnp    0x74fb16
  74fb02:	a1 d0 17 16 01       	mov    eax,ds:0x11617d0
  74fb07:	8b 10                	mov    edx,DWORD PTR [eax]
  74fb09:	57                   	push   edi
  74fb0a:	b9 d0 17 16 01       	mov    ecx,0x11617d0
  74fb0f:	ff d2                	call   edx
  74fb11:	e9 b1 00 00 00       	jmp    0x74fbc7
  74fb16:	f3 0f 58 c3          	addss  xmm0,xmm3
  74fb1a:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74fb20:	e9 ae 00 00 00       	jmp    0x74fbd3
  74fb25:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  74fb2a:	0f 2f d1             	comiss xmm2,xmm1
  74fb2d:	77 e7                	ja     0x74fb16
  74fb2f:	0f 2e 4e 60          	ucomiss xmm1,DWORD PTR [esi+0x60]
  74fb33:	9f                   	lahf
  74fb34:	f6 c4 44             	test   ah,0x44
  74fb37:	7b dd                	jnp    0x74fb16
  74fb39:	a1 00 18 16 01       	mov    eax,ds:0x1161800
  74fb3e:	8b 10                	mov    edx,DWORD PTR [eax]
  74fb40:	57                   	push   edi
  74fb41:	b9 00 18 16 01       	mov    ecx,0x1161800
  74fb46:	ff d2                	call   edx
  74fb48:	eb 7d                	jmp    0x74fbc7
  74fb4a:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  74fb4f:	0f 2f d1             	comiss xmm2,xmm1
  74fb52:	77 c2                	ja     0x74fb16
  74fb54:	0f 2e 4e 60          	ucomiss xmm1,DWORD PTR [esi+0x60]
  74fb58:	9f                   	lahf
  74fb59:	f6 c4 44             	test   ah,0x44
  74fb5c:	7b b8                	jnp    0x74fb16
  74fb5e:	a1 30 18 16 01       	mov    eax,ds:0x1161830
  74fb63:	8b 10                	mov    edx,DWORD PTR [eax]
  74fb65:	57                   	push   edi
  74fb66:	b9 30 18 16 01       	mov    ecx,0x1161830
  74fb6b:	ff d2                	call   edx
  74fb6d:	eb 58                	jmp    0x74fbc7
  74fb6f:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  74fb74:	0f 2f d1             	comiss xmm2,xmm1
  74fb77:	77 9d                	ja     0x74fb16
  74fb79:	0f 2e 4e 60          	ucomiss xmm1,DWORD PTR [esi+0x60]
  74fb7d:	9f                   	lahf
  74fb7e:	f6 c4 44             	test   ah,0x44
  74fb81:	7b 93                	jnp    0x74fb16
  74fb83:	a1 60 18 16 01       	mov    eax,ds:0x1161860
  74fb88:	8b 10                	mov    edx,DWORD PTR [eax]
  74fb8a:	57                   	push   edi
  74fb8b:	b9 60 18 16 01       	mov    ecx,0x1161860
  74fb90:	ff d2                	call   edx
  74fb92:	eb 33                	jmp    0x74fbc7
  74fb94:	57                   	push   edi
  74fb95:	b9 30 51 1d 01       	mov    ecx,0x11d5130
  74fb9a:	e8 71 fc ff ff       	call   0x74f810
  74fb9f:	eb 26                	jmp    0x74fbc7
  74fba1:	f6 05 80 5b 1d 01 01 	test   BYTE PTR ds:0x11d5b80,0x1
  74fba8:	75 13                	jne    0x74fbbd
  74fbaa:	83 0d 80 5b 1d 01 01 	or     DWORD PTR ds:0x11d5b80,0x1
  74fbb1:	6a ff                	push   0xffffffff
  74fbb3:	b9 b8 51 1d 01       	mov    ecx,0x11d51b8
  74fbb8:	e8 d3 b0 da ff       	call   0x4fac90
  74fbbd:	b9 b8 51 1d 01       	mov    ecx,0x11d51b8
  74fbc2:	e8 99 b0 da ff       	call   0x4fac60
  74fbc7:	d8 4c 24 14          	fmul   DWORD PTR [esp+0x14]
  74fbcb:	d8 44 24 0c          	fadd   DWORD PTR [esp+0xc]
  74fbcf:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  74fbd3:	83 c3 01             	add    ebx,0x1
  74fbd6:	83 fb 07             	cmp    ebx,0x7
  74fbd9:	0f 82 e1 fe ff ff    	jb     0x74fac0
  74fbdf:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  74fbe5:	0f 2e 05 18 b2 fa 00 	ucomiss xmm0,DWORD PTR ds:0xfab218
  74fbec:	5f                   	pop    edi
  74fbed:	9f                   	lahf
  74fbee:	f6 c4 44             	test   ah,0x44
  74fbf1:	5e                   	pop    esi
  74fbf2:	5b                   	pop    ebx
  74fbf3:	7a 0d                	jp     0x74fc02
  74fbf5:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  74fbfd:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  74fc02:	d9 04 24             	fld    DWORD PTR [esp]
  74fc05:	59                   	pop    ecx
  74fc06:	c2 04 00             	ret    0x4
