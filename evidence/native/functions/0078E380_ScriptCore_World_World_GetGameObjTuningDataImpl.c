/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163a70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetGameObjTuningDataImpl [assembly=ScriptCore token=0x06000852; objId:
   System.UInt64; return=System.Byte[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.World::World_GetGameObjTuningDataImpl(uint param_1,undefined4 param_2)

{
  void *pvVar1;
  int *piVar2;
  int iStack_2c;
  undefined1 *puStack_28;
  undefined1 *puStack_24;
  undefined4 uStack_20;
  undefined4 uVar3;
  uint uStack_10;
  undefined1 local_c [4];
  void *local_8;
  int local_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    local_8 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (local_8 != (void *)0x0) {
      LOCK();
      *(int *)((int)local_8 + 4) = *(int *)((int)local_8 + 4) + 1;
      UNLOCK();
      pvVar1 = (void *)FUN_0068f130((int)local_8);
      if (pvVar1 == (void *)0x0) {
        FUN_007462e0((int *)&local_8);
        return 0;
      }
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      uStack_20 = (undefined1 *)0x78e3e9;
      local_4 = FUN_00c6ed80(pvVar1,&param_1);
      if (local_4 < 1) {
        FUN_007462e0((int *)&local_8);
        return 0;
      }
      uStack_20 = local_c;
      puStack_24 = (undefined1 *)0x78e414;
      (**(code **)(*piVar2 + 0x80))();
      puStack_24 = local_c;
      puStack_28 = local_c + -0xc;
      uVar3 = 0;
      (**(code **)(*piVar2 + 0x70))();
      FUN_00c6ecf0(pvVar1,&uStack_10,(int *)&puStack_24);
      (**(code **)(*piVar2 + 0x98))(&uStack_20,puStack_24,0);
      FUN_007462e0(&iStack_2c);
      return uVar3;
    }
  }
  return 0;
}

