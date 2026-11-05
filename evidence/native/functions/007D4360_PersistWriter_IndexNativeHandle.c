/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). Physical thiscall writer plus object
   handle (RET4). Zero/unsupported handle yields FFFFFFFFh. Extracts high-byte tag, selects factory
   map entry, resolves object through host CCh and calls conversion interface +1Ch before writer
   vtable slot 0 pointer-index insertion. Native conversion precedes deduplication; current SACS
   duplicate-before-capture is distinct. */

undefined4 __thiscall PersistWriter_IndexNativeHandle(void *this,int param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_8 [2];
  
  iVar4 = param_1;
  if (param_1 == 0) {
    return 0xffffffff;
  }
  param_1 = CONCAT31(param_1._1_3_,(char)((uint)param_1 >> 0x18));
  piVar2 = (int *)FUN_007d4090((void *)((int)this + 0x7c),local_8,(byte *)&param_1);
  if ((*piVar2 != *(int *)(*(int *)((int)this + 0x80) + *(int *)((int)this + 0x84) * 4)) &&
     (piVar2 = *(int **)(*piVar2 + 4), piVar2 != (int *)0x0)) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar4 = (**(code **)(*piVar3 + 0xcc))(iVar4);
    if (iVar4 != 0) {
      puVar1 = *(undefined4 **)this;
      uVar5 = (**(code **)(*piVar2 + 0x1c))(iVar4);
      uVar5 = (*(code *)*puVar1)(uVar5);
      return uVar5;
    }
  }
  return 0xffffffff;
}

