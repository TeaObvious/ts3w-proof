/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). Related physical thiscall writer plus
   object handle (RET4) resolves high-tag factory and native conversion, then writer vtable +Ch;
   failed paths write FFFFFFFFh to stream and accumulate status through context helpers. This void
   stream-write route is separate from SaveNativeObject returning an index via 007D4360. */

void __thiscall PersistWriter_WriteNativeHandle(void *this,int param_1)

{
  byte readSucceeded;
  int *piVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 local_8 [2];
  
  iVar3 = param_1;
  param_1 = CONCAT31(param_1._1_3_,(char)((uint)param_1 >> 0x18));
  piVar1 = (int *)FUN_007d4090((void *)((int)this + 0x7c),local_8,(byte *)&param_1);
  if (*piVar1 == *(int *)(*(int *)((int)this + 0x80) + *(int *)((int)this + 0x84) * 4)) {
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = *(int **)(*piVar1 + 4);
  }
  if ((iVar3 != 0) && (piVar1 != (int *)0x0)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(iVar3);
    if (iVar3 != 0) {
      uVar4 = (**(code **)(*piVar1 + 0x1c))(iVar3);
      (**(code **)(*(int *)this + 0xc))(uVar4);
      return;
    }
  }
  readSucceeded = FUN_004de060(*(int **)((int)this + 0xc),0xffffffff,*(int *)((int)this + 0x14));
  StreamReader_AccumulateStatus((void *)((int)this + 4),readSucceeded);
  return;
}

