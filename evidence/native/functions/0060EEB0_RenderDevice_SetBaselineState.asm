# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060eeb0,0x0060ef43); analyst name RenderDevice_SetBaselineState.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060eeb0 <.text+0x20deb0>:
  60eeb0:	53                   	push   ebx
  60eeb1:	56                   	push   esi
  60eeb2:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  60eeb6:	83 c6 f9             	add    esi,0xfffffff9
  60eeb9:	8b c1                	mov    eax,ecx
  60eebb:	8b 9c b0 60 01 00 00 	mov    ebx,DWORD PTR [eax+esi*4+0x160]
  60eec2:	57                   	push   edi
  60eec3:	8b ce                	mov    ecx,esi
  60eec5:	83 e1 1f             	and    ecx,0x1f
  60eec8:	bf 01 00 00 00       	mov    edi,0x1
  60eecd:	d3 e7                	shl    edi,cl
  60eecf:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  60eed3:	8b d6                	mov    edx,esi
  60eed5:	c1 ea 05             	shr    edx,0x5
  60eed8:	3b d9                	cmp    ebx,ecx
  60eeda:	74 61                	je     0x60ef3d
  60eedc:	89 8c b0 60 01 00 00 	mov    DWORD PTR [eax+esi*4+0x160],ecx
  60eee3:	8b 8c 90 f0 07 00 00 	mov    ecx,DWORD PTR [eax+edx*4+0x7f0]
  60eeea:	09 bc 90 b8 07 00 00 	or     DWORD PTR [eax+edx*4+0x7b8],edi
  60eef1:	85 cf                	test   edi,ecx
  60eef3:	75 48                	jne    0x60ef3d
  60eef5:	0b cf                	or     ecx,edi
  60eef7:	89 8c 90 f0 07 00 00 	mov    DWORD PTR [eax+edx*4+0x7f0],ecx
  60eefe:	8b 88 f8 00 00 00    	mov    ecx,DWORD PTR [eax+0xf8]
  60ef04:	8b 90 fc 00 00 00    	mov    edx,DWORD PTR [eax+0xfc]
  60ef0a:	2b d1                	sub    edx,ecx
  60ef0c:	83 fa 02             	cmp    edx,0x2
  60ef0f:	72 2c                	jb     0x60ef3d
  60ef11:	8b 90 f4 00 00 00    	mov    edx,DWORD PTR [eax+0xf4]
  60ef17:	89 1c 8a             	mov    DWORD PTR [edx+ecx*4],ebx
  60ef1a:	83 80 f8 00 00 00 01 	add    DWORD PTR [eax+0xf8],0x1
  60ef21:	8b 88 f8 00 00 00    	mov    ecx,DWORD PTR [eax+0xf8]
  60ef27:	8b 90 f4 00 00 00    	mov    edx,DWORD PTR [eax+0xf4]
  60ef2d:	81 c6 00 00 10 00    	add    esi,0x100000
  60ef33:	89 34 8a             	mov    DWORD PTR [edx+ecx*4],esi
  60ef36:	83 80 f8 00 00 00 01 	add    DWORD PTR [eax+0xf8],0x1
  60ef3d:	5f                   	pop    edi
  60ef3e:	5e                   	pop    esi
  60ef3f:	5b                   	pop    ebx
  60ef40:	c2 08 00             	ret    0x8
