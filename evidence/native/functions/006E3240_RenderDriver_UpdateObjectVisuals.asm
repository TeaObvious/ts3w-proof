# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x006e3240 (RenderDriver_UpdateObjectVisuals)
Full Ghidra function-body envelope: 0x006e3240..0x006e32d5 (exclusive end)
Ghidra body ranges: [[006e3240, 006e32d4]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006e3240 <.text+0x2e2240>:
  6e3240:	51                   	push   ecx
  6e3241:	a1 c8 fc 1c 01       	mov    eax,ds:0x11cfcc8
  6e3246:	85 c0                	test   eax,eax
  6e3248:	56                   	push   esi
  6e3249:	57                   	push   edi
  6e324a:	8b f9                	mov    edi,ecx
  6e324c:	74 11                	je     0x6e325f
  6e324e:	80 b8 8d 00 00 00 00 	cmp    BYTE PTR [eax+0x8d],0x0
  6e3255:	74 08                	je     0x6e325f
  6e3257:	8d 4f 10             	lea    ecx,[edi+0x10]
  6e325a:	e8 01 07 00 00       	call   0x6e3960
  6e325f:	d9 05 a0 ed 1c 01    	fld    DWORD PTR ds:0x11ceda0
  6e3265:	51                   	push   ecx
  6e3266:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  6e326a:	8d 8f 5c 02 00 00    	lea    ecx,[edi+0x25c]
  6e3270:	d9 1c 24             	fstp   DWORD PTR [esp]
  6e3273:	e8 18 09 fb ff       	call   0x693b90
  6e3278:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  6e327c:	51                   	push   ecx
  6e327d:	d9 1c 24             	fstp   DWORD PTR [esp]
  6e3280:	e8 5b a9 01 00       	call   0x6fdbe0
  6e3285:	8b c8                	mov    ecx,eax
  6e3287:	e8 44 de 01 00       	call   0x7010d0
  6e328c:	e8 df 4e 00 00       	call   0x6e8170
  6e3291:	85 c0                	test   eax,eax
  6e3293:	74 17                	je     0x6e32ac
  6e3295:	8b 0d 30 25 1d 01    	mov    ecx,DWORD PTR ds:0x11d2530
  6e329b:	85 c9                	test   ecx,ecx
  6e329d:	74 0d                	je     0x6e32ac
  6e329f:	0f b6 80 70 02 00 00 	movzx  eax,BYTE PTR [eax+0x270]
  6e32a6:	50                   	push   eax
  6e32a7:	e8 04 fb ff ff       	call   0x6e2db0
  6e32ac:	e8 bf 4e 00 00       	call   0x6e8170
  6e32b1:	8b f0                	mov    esi,eax
  6e32b3:	85 f6                	test   esi,esi
  6e32b5:	74 0e                	je     0x6e32c5
  6e32b7:	8b ce                	mov    ecx,esi
  6e32b9:	e8 72 50 00 00       	call   0x6e8330
  6e32be:	8b ce                	mov    ecx,esi
  6e32c0:	e8 5b 0a 01 00       	call   0x6f3d20
  6e32c5:	6a 00                	push   0x0
  6e32c7:	8d 4f 10             	lea    ecx,[edi+0x10]
  6e32ca:	e8 91 fe ff ff       	call   0x6e3160
  6e32cf:	5f                   	pop    edi
  6e32d0:	5e                   	pop    esi
  6e32d1:	59                   	pop    ecx
  6e32d2:	c2 08 00             	ret    0x8
