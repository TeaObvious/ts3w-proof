/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a70 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetGameObjTuningDataImpl [assembly=ScriptCore token=0x06000852; objId:
   System.UInt64; return=System.Byte[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.World::World_GetGameObjTuningDataImpl(uint param_1,undefined4 param_2)

{
  int iVar1;
  void *this;
  int *piVar2;
  undefined4 uVar3;
  int iStack_2c;
  undefined1 *puStack_28;
  undefined1 *puStack_24;
  undefined1 *puStack_20;
  uint uStack_10;
  undefined1 local_c [4];
  uint local_8;
  int local_4;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    local_8 = FUN_00937f80(iVar1);
    if (local_8 != 0) {
      LOCK();
      *(int *)(local_8 + 4) = *(int *)(local_8 + 4) + 1;
      UNLOCK();
      this = (void *)FUN_0068f130(local_8);
      if (this == (void *)0x0) {
        FUN_007462e0((int *)&local_8);
        return 0;
      }
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      puStack_20 = (undefined1 *)0x78e3e9;
      local_4 = FUN_00c6ed80(this,&param_1);
      if (local_4 < 1) {
        FUN_007462e0((int *)&local_8);
        return 0;
      }
      puStack_20 = local_c;
      puStack_24 = (undefined1 *)0x78e414;
      (**(code **)(*piVar2 + 0x80))();
      puStack_24 = local_c;
      puStack_28 = &stack0xffffffe8;
      (**(code **)(*piVar2 + 0x70))();
      FUN_00c6ecf0(this,&uStack_10,(int *)&puStack_24);
      uVar3 = 0;
      (**(code **)(*piVar2 + 0x98))(&puStack_20,puStack_24,0);
      FUN_007462e0(&iStack_2c);
      return uVar3;
    }
  }
  return 0;
}

