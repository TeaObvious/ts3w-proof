# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00944fe0, 0x00945077); analyst name FootprintComponent_IsNamedEnabled.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00944fe0 <.text+0x543fe0>:
  944fe0:	57                   	push   edi
  944fe1:	8b f9                	mov    edi,ecx
  944fe3:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  944fe6:	85 c9                	test   ecx,ecx
  944fe8:	75 0b                	jne    0x944ff5
  944fea:	39 4f 30             	cmp    DWORD PTR [edi+0x30],ecx
  944fed:	75 06                	jne    0x944ff5
  944fef:	32 c0                	xor    al,al
  944ff1:	5f                   	pop    edi
  944ff2:	c2 04 00             	ret    0x4
  944ff5:	85 c9                	test   ecx,ecx
  944ff7:	53                   	push   ebx
  944ff8:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  944ffc:	56                   	push   esi
  944ffd:	74 2a                	je     0x945029
  944fff:	e8 4c dd fe ff       	call   0x932d50
  945004:	8b 10                	mov    edx,DWORD PTR [eax]
  945006:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  945009:	2b c2                	sub    eax,edx
  94500b:	c1 f8 06             	sar    eax,0x6
  94500e:	b9 00 00 00 00       	mov    ecx,0x0
  945013:	74 14                	je     0x945029
  945015:	8b 77 58             	mov    esi,DWORD PTR [edi+0x58]
  945018:	3b 1a                	cmp    ebx,DWORD PTR [edx]
  94501a:	74 4d                	je     0x945069
  94501c:	83 c1 01             	add    ecx,0x1
  94501f:	83 c6 04             	add    esi,0x4
  945022:	83 c2 40             	add    edx,0x40
  945025:	3b c8                	cmp    ecx,eax
  945027:	72 ef                	jb     0x945018
  945029:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  94502c:	85 c9                	test   ecx,ecx
  94502e:	74 31                	je     0x945061
  945030:	e8 2b dd fe ff       	call   0x932d60
  945035:	8b 10                	mov    edx,DWORD PTR [eax]
  945037:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  94503a:	2b c2                	sub    eax,edx
  94503c:	c1 f8 06             	sar    eax,0x6
  94503f:	b9 00 00 00 00       	mov    ecx,0x0
  945044:	74 1b                	je     0x945061
  945046:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
  945049:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  945050:	3b 1a                	cmp    ebx,DWORD PTR [edx]
  945052:	74 15                	je     0x945069
  945054:	83 c1 01             	add    ecx,0x1
  945057:	83 c6 04             	add    esi,0x4
  94505a:	83 c2 40             	add    edx,0x40
  94505d:	3b c8                	cmp    ecx,eax
  94505f:	72 ef                	jb     0x945050
  945061:	5e                   	pop    esi
  945062:	5b                   	pop    ebx
  945063:	32 c0                	xor    al,al
  945065:	5f                   	pop    edi
  945066:	c2 04 00             	ret    0x4
  945069:	8b 06                	mov    eax,DWORD PTR [esi]
  94506b:	5e                   	pop    esi
  94506c:	c1 e8 02             	shr    eax,0x2
  94506f:	5b                   	pop    ebx
  945070:	83 e0 01             	and    eax,0x1
  945073:	5f                   	pop    edi
  945074:	c2 04 00             	ret    0x4
