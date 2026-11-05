# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060f030,0x0060f099); analyst name RenderDevice_ApplyPassStatePairs.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060f030 <.text+0x20e030>:
  60f030:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  60f034:	85 c0                	test   eax,eax
  60f036:	57                   	push   edi
  60f037:	8b f9                	mov    edi,ecx
  60f039:	76 5a                	jbe    0x60f095
  60f03b:	53                   	push   ebx
  60f03c:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  60f040:	55                   	push   ebp
  60f041:	56                   	push   esi
  60f042:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  60f046:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  60f048:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  60f04b:	8d 71 f9             	lea    esi,[ecx-0x7]
  60f04e:	83 c3 08             	add    ebx,0x8
  60f051:	39 84 b7 8c 04 00 00 	cmp    DWORD PTR [edi+esi*4+0x48c],eax
  60f058:	74 17                	je     0x60f071
  60f05a:	89 84 b7 8c 04 00 00 	mov    DWORD PTR [edi+esi*4+0x48c],eax
  60f061:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  60f064:	8b 2a                	mov    ebp,DWORD PTR [edx]
  60f066:	50                   	push   eax
  60f067:	8b 85 e4 00 00 00    	mov    eax,DWORD PTR [ebp+0xe4]
  60f06d:	51                   	push   ecx
  60f06e:	52                   	push   edx
  60f06f:	ff d0                	call   eax
  60f071:	8b ce                	mov    ecx,esi
  60f073:	c1 e9 05             	shr    ecx,0x5
  60f076:	8d 84 8f d4 07 00 00 	lea    eax,[edi+ecx*4+0x7d4]
  60f07d:	8b ce                	mov    ecx,esi
  60f07f:	83 e1 1f             	and    ecx,0x1f
  60f082:	ba 01 00 00 00       	mov    edx,0x1
  60f087:	d3 e2                	shl    edx,cl
  60f089:	09 10                	or     DWORD PTR [eax],edx
  60f08b:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  60f090:	75 b4                	jne    0x60f046
  60f092:	5e                   	pop    esi
  60f093:	5d                   	pop    ebp
  60f094:	5b                   	pop    ebx
  60f095:	5f                   	pop    edi
  60f096:	c2 08 00             	ret    0x8
