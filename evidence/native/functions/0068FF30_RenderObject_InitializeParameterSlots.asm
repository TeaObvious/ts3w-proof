# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0068ff30,0x006900f4); analyst name RenderObject_InitializeParameterSlots.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068ff30 <.text+0x28ef30>:
  68ff30:	55                   	push   ebp
  68ff31:	8b ec                	mov    ebp,esp
  68ff33:	83 e4 f0             	and    esp,0xfffffff0
  68ff36:	83 ec 18             	sub    esp,0x18
  68ff39:	0f 57 c0             	xorps  xmm0,xmm0
  68ff3c:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  68ff44:	33 c0                	xor    eax,eax
  68ff46:	56                   	push   esi
  68ff47:	8b f1                	mov    esi,ecx
  68ff49:	89 06                	mov    DWORD PTR [esi],eax
  68ff4b:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  68ff4e:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  68ff51:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  68ff54:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  68ff57:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  68ff5a:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  68ff5d:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  68ff60:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  68ff63:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  68ff66:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  68ff69:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  68ff6c:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  68ff6f:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  68ff72:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  68ff75:	89 46 64             	mov    DWORD PTR [esi+0x64],eax
  68ff78:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  68ff7b:	83 c9 ff             	or     ecx,0xffffffff
  68ff7e:	89 4e 6c             	mov    DWORD PTR [esi+0x6c],ecx
  68ff81:	89 46 70             	mov    DWORD PTR [esi+0x70],eax
  68ff84:	89 46 74             	mov    DWORD PTR [esi+0x74],eax
  68ff87:	89 46 78             	mov    DWORD PTR [esi+0x78],eax
  68ff8a:	66 c7 46 7c 64 00    	mov    WORD PTR [esi+0x7c],0x64
  68ff90:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  68ff96:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  68ff9c:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  68ffa2:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  68ffa8:	0f 28 44 24 0c       	movaps xmm0,XMMWORD PTR [esp+0xc]
  68ffad:	0f 29 86 b0 00 00 00 	movaps XMMWORD PTR [esi+0xb0],xmm0
  68ffb4:	80 a6 c2 00 00 00 f0 	and    BYTE PTR [esi+0xc2],0xf0
  68ffbb:	88 86 c0 00 00 00    	mov    BYTE PTR [esi+0xc0],al
  68ffc1:	c6 86 c1 00 00 00 04 	mov    BYTE PTR [esi+0xc1],0x4
  68ffc8:	89 86 c4 00 00 00    	mov    DWORD PTR [esi+0xc4],eax
  68ffce:	89 86 c8 00 00 00    	mov    DWORD PTR [esi+0xc8],eax
  68ffd4:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  68ffd7:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  68ffda:	39 0d d0 98 15 01    	cmp    DWORD PTR ds:0x11598d0,ecx
  68ffe0:	57                   	push   edi
  68ffe1:	0f 85 05 01 00 00    	jne    0x6900ec
  68ffe7:	8b 3d 30 85 1d 01    	mov    edi,DWORD PTR ds:0x11d8530
  68ffed:	6a 02                	push   0x2
  68ffef:	68 f0 00 00 00       	push   0xf0
  68fff4:	68 3c 33 ff 00       	push   0xff333c
  68fff9:	8b cf                	mov    ecx,edi
  68fffb:	e8 30 a5 10 00       	call   0x79a530
  690000:	6a 02                	push   0x2
  690002:	6a 01                	push   0x1
  690004:	68 34 33 ff 00       	push   0xff3334
  690009:	8b cf                	mov    ecx,edi
  69000b:	a3 d0 98 15 01       	mov    ds:0x11598d0,eax
  690010:	e8 1b a5 10 00       	call   0x79a530
  690015:	6a 02                	push   0x2
  690017:	6a 01                	push   0x1
  690019:	68 2c 33 ff 00       	push   0xff332c
  69001e:	8b cf                	mov    ecx,edi
  690020:	a3 cc 98 15 01       	mov    ds:0x11598cc,eax
  690025:	e8 06 a5 10 00       	call   0x79a530
  69002a:	6a 01                	push   0x1
  69002c:	6a 01                	push   0x1
  69002e:	68 14 33 ff 00       	push   0xff3314
  690033:	8b cf                	mov    ecx,edi
  690035:	a3 b8 98 15 01       	mov    ds:0x11598b8,eax
  69003a:	e8 f1 a4 10 00       	call   0x79a530
  69003f:	6a 02                	push   0x2
  690041:	6a 04                	push   0x4
  690043:	68 f8 32 ff 00       	push   0xff32f8
  690048:	8b cf                	mov    ecx,edi
  69004a:	a3 bc 98 15 01       	mov    ds:0x11598bc,eax
  69004f:	e8 dc a4 10 00       	call   0x79a530
  690054:	6a 02                	push   0x2
  690056:	6a 04                	push   0x4
  690058:	68 e0 32 ff 00       	push   0xff32e0
  69005d:	8b cf                	mov    ecx,edi
  69005f:	a3 c0 98 15 01       	mov    ds:0x11598c0,eax
  690064:	e8 c7 a4 10 00       	call   0x79a530
  690069:	6a 01                	push   0x1
  69006b:	6a 01                	push   0x1
  69006d:	68 d8 32 ff 00       	push   0xff32d8
  690072:	8b cf                	mov    ecx,edi
  690074:	a3 c4 98 15 01       	mov    ds:0x11598c4,eax
  690079:	e8 b2 a4 10 00       	call   0x79a530
  69007e:	6a 02                	push   0x2
  690080:	6a 10                	push   0x10
  690082:	68 c0 32 ff 00       	push   0xff32c0
  690087:	8b cf                	mov    ecx,edi
  690089:	a3 c8 98 15 01       	mov    ds:0x11598c8,eax
  69008e:	e8 9d a4 10 00       	call   0x79a530
  690093:	6a 02                	push   0x2
  690095:	6a 01                	push   0x1
  690097:	68 b0 32 ff 00       	push   0xff32b0
  69009c:	8b cf                	mov    ecx,edi
  69009e:	a3 d8 98 15 01       	mov    ds:0x11598d8,eax
  6900a3:	e8 88 a4 10 00       	call   0x79a530
  6900a8:	6a 02                	push   0x2
  6900aa:	6a 01                	push   0x1
  6900ac:	68 94 32 ff 00       	push   0xff3294
  6900b1:	8b cf                	mov    ecx,edi
  6900b3:	a3 d4 98 15 01       	mov    ds:0x11598d4,eax
  6900b8:	e8 73 a4 10 00       	call   0x79a530
  6900bd:	6a 01                	push   0x1
  6900bf:	6a 01                	push   0x1
  6900c1:	68 74 32 ff 00       	push   0xff3274
  6900c6:	8b cf                	mov    ecx,edi
  6900c8:	a3 dc 98 15 01       	mov    ds:0x11598dc,eax
  6900cd:	e8 5e a4 10 00       	call   0x79a530
  6900d2:	6a 01                	push   0x1
  6900d4:	6a 01                	push   0x1
  6900d6:	68 64 32 ff 00       	push   0xff3264
  6900db:	8b cf                	mov    ecx,edi
  6900dd:	a3 e0 98 15 01       	mov    ds:0x11598e0,eax
  6900e2:	e8 49 a4 10 00       	call   0x79a530
  6900e7:	a3 e4 98 15 01       	mov    ds:0x11598e4,eax
  6900ec:	5f                   	pop    edi
  6900ed:	8b c6                	mov    eax,esi
  6900ef:	5e                   	pop    esi
  6900f0:	8b e5                	mov    esp,ebp
  6900f2:	5d                   	pop    ebp
  6900f3:	c3                   	ret
