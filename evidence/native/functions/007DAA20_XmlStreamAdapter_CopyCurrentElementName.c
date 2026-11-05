/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC167_STARTUP_READER_007daa20. ECX adapter and output string object. Require state1 and no
   scanner error, get current UTF16 element name, copy its full code-unit range, then recheck
   state/error and return low AL success. Does not lowercase or trim element name. Inferred upper
   result bits are not contract. */

undefined4 __thiscall XmlStreamAdapter_CopyCurrentElementName(void *this,void *param_1)

{
  ushort uVar1;
  void *in_EAX;
  ushort *puVar2;
  ushort *puVar3;
  
  if ((*(int *)((int)this + 0x48) == 1) && (*(int *)((int)*(void **)((int)this + 8) + 8) == 0)) {
    puVar2 = XmlCursor_GetRawElementName(*(void **)((int)this + 8));
    uVar1 = *puVar2;
    puVar3 = puVar2;
    while (uVar1 != 0) {
      puVar3 = puVar3 + 1;
      uVar1 = *puVar3;
    }
    in_EAX = FUN_00408d60(param_1,puVar2,puVar2 + ((int)puVar3 - (int)puVar2 >> 1));
    if ((*(int *)((int)this + 0x48) != 1) || (*(int *)(*(int *)((int)this + 8) + 8) == 0)) {
      return CONCAT31((int3)((uint)in_EAX >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

