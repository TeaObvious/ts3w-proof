/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 0054bda3: Required clsid attribute is independent of optional id; absence reports2FC50002.
 * 0054bdf7: Convert clsid using imported wide unsigned radix0 conversion, null end-output; factory/query semantics remain separate.
 * 0054be3f: The physical stack input is a writable object-ID output pointer, not an uninitialized local in actual C.
 * 0054be48: Write supplied radix0 ID before conditional export registration; authored0 has its own path.
 * 0054be80: Absent ID writes current generated counter then increments it; do not reinterpret the counter as live object identity.
 * 0054becd: Read properties on created object context; AL failure returns null after possible partial writes.
 * 0054bee3: RET4 proves the omitted stack output argument; successful return is EAX object pointer.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role LayoutXml_ReadObject.
   Physical ABI: ECX reader; stack+4 uint32 object-ID output pointer; EAX created object/null; RET4
   on every return. Existing fastcall metadata omits stack output. */

void * __thiscall LayoutXml_ReadObject(void *this,uint *outObjectId)

{
  bool bVar1;
  wchar_t *_Str;
  wchar_t *_Str_00;
  uint uVar2;
  ulong uVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined1 auStack_e [2];
  uint *puStack_c;
  
  piVar4 = (int *)((int)this + 0x98);
  _Str = (wchar_t *)FUN_00470f60(piVar4,(ushort *)&DAT_00fc20cc);
  _Str_00 = (wchar_t *)FUN_00470f60(piVar4,(ushort *)L"clsid");
  if (_Str_00 == (wchar_t *)0x0) {
    *(undefined4 *)((int)this + 0x5c) = 0x2fc50002;
    if (*(int *)((int)this + 0x50) != 0) {
      FUN_00470ef0(piVar4);
      FUN_00470ed0(piVar4);
      uVar2 = UInt32Field5C_Get(piVar4);
      (**(code **)((int)this + 0x50))(*(undefined4 *)((int)this + 0x5c),uVar2);
    }
    return (void *)0x0;
  }
  uVar3 = wcstoul(_Str_00,(wchar_t **)0x0,0);
  piVar4 = (int *)FUN_004d8eb0();
  piVar4 = (int *)(**(code **)(*piVar4 + 0x20))(uVar3,0xee3f516e);
  if (piVar4 == (int *)0x0) {
    FUN_0054aa30(this,0x2fc50002);
    return (void *)0x0;
  }
  if (_Str == (wchar_t *)0x0) {
    *puStack_c = *(uint *)((int)this + 0x58);
    *(int *)((int)this + 0x58) = *(int *)((int)this + 0x58) + 1;
  }
  else {
    uVar3 = wcstoul(_Str,(wchar_t **)0x0,0);
    *puStack_c = uVar3;
    if (uVar3 == 0) goto LAB_0054be9a;
    if ((0x7fff < uVar3 + 0x10000) && (bVar1 = FUN_00549ce0(*(void **)((int)this + 0x88),2), bVar1))
    {
      FUN_0054ba50((void *)(*(int *)((int)this + 0x88) + 0x44),*puStack_c,piVar4);
    }
  }
  if (*puStack_c != 0) {
    puVar5 = (undefined4 *)FUN_00654810((void *)((int)this + 0x68),puStack_c);
    *puVar5 = piVar4;
  }
LAB_0054be9a:
  (**(code **)*piVar4)();
  piVar6 = (int *)(**(code **)(*piVar4 + 0xc))(0xeec58382);
  if (piVar6 != (int *)0x0) {
    (**(code **)(*piVar6 + 0x10))(auStack_e + -0x16);
    bVar1 = LayoutXml_ReadObjectProperties(this,auStack_e + -0x1a,(void *)((int)this + 0x60));
    if (!bVar1) {
      return (void *)0x0;
    }
  }
  return piVar4;
}

