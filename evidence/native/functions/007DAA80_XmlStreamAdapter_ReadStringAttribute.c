/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_007daa80. ECX adapter plus UTF16 attribute name and output string object.
   Require state1; request current attribute from scanner, recheck adapter/error and require a
   nonnull returned pointer; copy string then return low AL=1. An empty nonnull attribute string is
   admitted. No trimming or whitespace filtering in this adapter. Scanner attribute
   lookup/case/entity behavior remains provider-owned. */

undefined4 __thiscall XmlStreamAdapter_ReadStringAttribute(void *this,ushort *param_1,void *param_2)

{
  short *in_EAX;
  undefined4 uVar1;
  
  if (*(int *)((int)this + 0x48) == 1) {
    in_EAX = (short *)FUN_00470f60(*(void **)((int)this + 8),param_1);
    if (((*(int *)((int)this + 0x48) != 1) || (*(int *)(*(int *)((int)this + 8) + 8) == 0)) &&
       (in_EAX != (short *)0x0)) {
      uVar1 = FUN_00408f50(param_2,in_EAX);
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

