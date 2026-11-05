# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060efe0,0x0060f030); analyst name RenderDevice_ApplyPassState.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060efe0 <.text+0x20dfe0>:
  60efe0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  60efe4:	56                   	push   esi
  60efe5:	8b f1                	mov    esi,ecx
  60efe7:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  60efeb:	39 8c 96 70 04 00 00 	cmp    DWORD PTR [esi+edx*4+0x470],ecx
  60eff2:	57                   	push   edi
  60eff3:	8d 7a f9             	lea    edi,[edx-0x7]
  60eff6:	74 19                	je     0x60f011
  60eff8:	53                   	push   ebx
  60eff9:	89 8c be 8c 04 00 00 	mov    DWORD PTR [esi+edi*4+0x48c],ecx
  60f000:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  60f003:	8b 18                	mov    ebx,DWORD PTR [eax]
  60f005:	51                   	push   ecx
  60f006:	52                   	push   edx
  60f007:	50                   	push   eax
  60f008:	8b 83 e4 00 00 00    	mov    eax,DWORD PTR [ebx+0xe4]
  60f00e:	ff d0                	call   eax
  60f010:	5b                   	pop    ebx
  60f011:	8b cf                	mov    ecx,edi
  60f013:	c1 e9 05             	shr    ecx,0x5
  60f016:	8d 84 8e d4 07 00 00 	lea    eax,[esi+ecx*4+0x7d4]
  60f01d:	8b cf                	mov    ecx,edi
  60f01f:	83 e1 1f             	and    ecx,0x1f
  60f022:	ba 01 00 00 00       	mov    edx,0x1
  60f027:	d3 e2                	shl    edx,cl
  60f029:	5f                   	pop    edi
  60f02a:	5e                   	pop    esi
  60f02b:	09 10                	or     DWORD PTR [eax],edx
  60f02d:	c2 08 00             	ret    0x8
