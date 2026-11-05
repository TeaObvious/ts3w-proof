# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079b290, 0x0079b328); analyst name ShaderLibrary_ChooseCapabilityMode.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079b290 <.text+0x39a290>:
  79b290:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  79b296:	80 b9 50 0f 00 00 00 	cmp    BYTE PTR [ecx+0xf50],0x0
  79b29d:	74 03                	je     0x79b2a2
  79b29f:	33 c0                	xor    eax,eax
  79b2a1:	c3                   	ret
  79b2a2:	e8 69 49 e7 ff       	call   0x60fc10
  79b2a7:	8b 88 c4 00 00 00    	mov    ecx,DWORD PTR [eax+0xc4]
  79b2ad:	81 f9 00 03 fe ff    	cmp    ecx,0xfffe0300
  79b2b3:	72 0c                	jb     0x79b2c1
  79b2b5:	81 b8 cc 00 00 00 00 03 ff ff 	cmp    DWORD PTR [eax+0xcc],0xffff0300
  79b2bf:	73 de                	jae    0x79b29f
  79b2c1:	81 f9 00 02 fe ff    	cmp    ecx,0xfffe0200
  79b2c7:	72 4d                	jb     0x79b316
  79b2c9:	81 b8 cc 00 00 00 00 02 ff ff 	cmp    DWORD PTR [eax+0xcc],0xffff0200
  79b2d3:	72 41                	jb     0x79b316
  79b2d5:	8b 88 f8 00 00 00    	mov    ecx,DWORD PTR [eax+0xf8]
  79b2db:	f7 d1                	not    ecx
  79b2dd:	f6 c1 01             	test   cl,0x1
  79b2e0:	75 2e                	jne    0x79b310
  79b2e2:	8b 90 08 01 00 00    	mov    edx,DWORD PTR [eax+0x108]
  79b2e8:	f7 d2                	not    edx
  79b2ea:	f6 c2 1f             	test   dl,0x1f
  79b2ed:	75 21                	jne    0x79b310
  79b2ef:	83 b8 fc 00 00 00 00 	cmp    DWORD PTR [eax+0xfc],0x0
  79b2f6:	7e 18                	jle    0x79b310
  79b2f8:	83 b8 00 01 00 00 0d 	cmp    DWORD PTR [eax+0x100],0xd
  79b2ff:	7c 0f                	jl     0x79b310
  79b301:	83 b8 10 01 00 00 16 	cmp    DWORD PTR [eax+0x110],0x16
  79b308:	7c 06                	jl     0x79b310
  79b30a:	b8 01 00 00 00       	mov    eax,0x1
  79b30f:	c3                   	ret
  79b310:	b8 03 00 00 00       	mov    eax,0x3
  79b315:	c3                   	ret
  79b316:	81 b8 cc 00 00 00 04 01 ff ff 	cmp    DWORD PTR [eax+0xcc],0xffff0104
  79b320:	1b c0                	sbb    eax,eax
  79b322:	f7 d8                	neg    eax
  79b324:	83 c0 04             	add    eax,0x4
  79b327:	c3                   	ret
