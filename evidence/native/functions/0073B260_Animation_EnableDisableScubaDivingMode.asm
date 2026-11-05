# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0073b260,0x0073b2d7); analyst name Animation_EnableDisableScubaDivingMode.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073b260 <.text+0x33a260>:
  73b260:	51                   	push   ecx
  73b261:	56                   	push   esi
  73b262:	e8 09 c3 1f 00       	call   0x937570
  73b267:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  73b26b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  73b26f:	51                   	push   ecx
  73b270:	52                   	push   edx
  73b271:	8b c8                	mov    ecx,eax
  73b273:	e8 08 cd 1f 00       	call   0x937f80
  73b278:	8b f0                	mov    esi,eax
  73b27a:	85 f6                	test   esi,esi
  73b27c:	74 56                	je     0x73b2d4
  73b27e:	57                   	push   edi
  73b27f:	8d 7e 04             	lea    edi,[esi+0x4]
  73b282:	8b c7                	mov    eax,edi
  73b284:	b9 01 00 00 00       	mov    ecx,0x1
  73b289:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73b28d:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73b293:	52                   	push   edx
  73b294:	8b ce                	mov    ecx,esi
  73b296:	e8 c5 8f 1f 00       	call   0x934260
  73b29b:	85 c0                	test   eax,eax
  73b29d:	74 17                	je     0x73b2b6
  73b29f:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  73b2a4:	74 09                	je     0x73b2af
  73b2a6:	81 48 2c 00 00 08 00 	or     DWORD PTR [eax+0x2c],0x80000
  73b2ad:	eb 07                	jmp    0x73b2b6
  73b2af:	81 60 2c ff ff f7 ff 	and    DWORD PTR [eax+0x2c],0xfff7ffff
  73b2b6:	8b c7                	mov    eax,edi
  73b2b8:	83 c9 ff             	or     ecx,0xffffffff
  73b2bb:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73b2bf:	49                   	dec    ecx
  73b2c0:	75 11                	jne    0x73b2d3
  73b2c2:	ba 01 00 00 00       	mov    edx,0x1
  73b2c7:	87 17                	xchg   DWORD PTR [edi],edx
  73b2c9:	8b 06                	mov    eax,DWORD PTR [esi]
  73b2cb:	8b 10                	mov    edx,DWORD PTR [eax]
  73b2cd:	6a 01                	push   0x1
  73b2cf:	8b ce                	mov    ecx,esi
  73b2d1:	ff d2                	call   edx
  73b2d3:	5f                   	pop    edi
  73b2d4:	5e                   	pop    esi
  73b2d5:	59                   	pop    ecx
  73b2d6:	c3                   	ret
