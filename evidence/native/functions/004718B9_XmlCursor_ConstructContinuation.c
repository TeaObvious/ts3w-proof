/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004718b9: Continuation of718B0; live EAX/EBX/ZF and the already-saved EBX stack word are required.
 * 004718ca: Allocator branch consumes flags from CMP at718B7; PUSH/MOV did not alter those flags.
 * 004718ed: Retain nonnull stream through its virtual+4 before further cursor initialization.
 * 00471918: Create parser with encoding null and no namespace separator through4C03A0.
 * 00471932: RET C completes original constructor entry; this is not a separate three-argument call boundary.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role
   XmlCursor_ConstructContinuation. Physical ABI: NOT an independently called function: reached by
   fallthrough after718B0 saved EBX; inherits ECX receiver, EAX allocator, EBX0, ZF, original stack
   frame plus saved EBX. Later RETC restores original constructor frame. Limits: Existing C for
   entry may cross this owned boundary. Both complete owned Listings must remain separate canonical
   pairs; continuation C may retain inherited register/stack artifacts with explicit annotation. */

void * __thiscall
XmlCursor_ConstructContinuation(void *this,undefined4 param_1,int *param_2,short *param_3)

{
  undefined4 in_EAX;
  void *pvVar1;
  ushort *unaff_EBX;
  bool in_ZF;
  
  *(ushort **)this = unaff_EBX;
  *(char *)((int)this + 4) = (char)unaff_EBX;
  *(ushort **)((int)this + 8) = unaff_EBX;
  *(ushort **)((int)this + 0xc) = unaff_EBX;
  *(ushort **)((int)this + 0x10) = unaff_EBX;
  if (in_ZF) {
    in_EAX = FUN_0092f9c0();
  }
  *(undefined4 *)((int)this + 0x14) = in_EAX;
  FUN_004e8cb0((void *)((int)this + 0x18),(int)unaff_EBX,0xffffffff,(undefined1 *)unaff_EBX,
               (undefined *)unaff_EBX,unaff_EBX);
  *(int **)((int)this + 0x3c) = param_2;
  if ((ushort *)param_2 != unaff_EBX) {
    (**(code **)(*param_2 + 4))();
  }
  *(ushort **)((int)this + 0x40) = unaff_EBX;
  *(ushort **)((int)this + 0x44) = unaff_EBX;
  *(ushort **)((int)this + 0x48) = unaff_EBX;
  *(ushort **)((int)this + 0x4c) = unaff_EBX;
  *(ushort **)((int)this + 0x50) = unaff_EBX;
  *(ushort **)((int)this + 0x54) = unaff_EBX;
  *(ushort **)((int)this + 0x58) = unaff_EBX;
  *(ushort **)((int)this + 0x5c) = unaff_EBX;
  FUN_004df460((void *)((int)this + 0x60),(int)unaff_EBX,(int)unaff_EBX,unaff_EBX);
  pvVar1 = XmlParser_CreateWithoutNamespace(unaff_EBX);
  *(void **)this = pvVar1;
  XmlCursor_InstallHandlers(this,(ushort *)param_3);
  return this;
}

