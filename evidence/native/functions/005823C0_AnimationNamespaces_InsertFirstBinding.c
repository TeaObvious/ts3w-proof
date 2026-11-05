/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX namespace map,two stack dwords RET8,AL
   success. Requires nonzero namespace and entity, scans existing pairs by namespace, leaves first
   match unchanged. Otherwise retains scene entity virtual+4 and appends8-byte pair; does not
   deduplicate by GUID. Current projected actor identity must remain distinct from namespace
   aliases; release owner is separate. */

undefined4 __thiscall AnimationNamespaces_InsertFirstBinding(void *this,int param_1,int *param_2)

{
  uint in_EAX;
  int *piVar1;
  undefined4 uVar2;
  int iStack_8;
  int *piStack_4;
  
  if ((param_1 != 0) && (param_2 != (int *)0x0)) {
    for (piVar1 = *(int **)((int)this + 8); piVar1 != *(int **)((int)this + 0xc);
        piVar1 = piVar1 + 2) {
      if (*piVar1 == param_1) {
        return (uint)piVar1 & 0xffffff00;
      }
    }
    (**(code **)(*param_2 + 4))();
    piVar1 = *(int **)((int)this + 0xc);
    iStack_8 = param_1;
    piStack_4 = param_2;
    if (piVar1 < *(int **)((int)this + 0x10)) {
      *(int **)((int)this + 0xc) = piVar1 + 2;
      uVar2 = 0;
      if (piVar1 != (int *)0x0) {
        piVar1[1] = (int)param_2;
        *piVar1 = param_1;
        return CONCAT31((int3)((uint)piVar1 >> 8),1);
      }
    }
    else {
      uVar2 = FUN_0040c540((void *)((int)this + 8),piVar1,&iStack_8);
    }
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

