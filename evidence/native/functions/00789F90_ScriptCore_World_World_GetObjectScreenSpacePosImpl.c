/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011632b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetObjectScreenSpacePosImpl [assembly=ScriptCore token=0x06000754;
   scriptHandle: System.UInt64, x: System.Single, y: System.Single, z: System.Single, outPos:
   Sims3.SimIFace.Vector2&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl
ScriptCore.World::World_GetObjectScreenSpacePosImpl
          (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
          float *param_6)

{
  void *pvVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined1 uVar5;
  float local_38;
  float local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float local_20;
  float fStack_1c;
  
  uVar5 = 0;
  local_38 = 0.0;
  local_34 = 0.0;
  iVar2 = FUN_00969bd0();
  iVar2 = FUN_00f21ff0(iVar2);
  if (iVar2 != 0) {
    iVar2 = FUN_00513de0(iVar2);
    pvVar1 = *(void **)(iVar2 + 0xc);
    pvVar3 = ObjectRegistry_GetGlobal();
    pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
    if (pvVar3 != (void *)0x0) {
      pvVar3 = Object_GetComponentByMask(pvVar3,DAT_011ea158);
      if (pvVar3 != (void *)0x0) {
        FUN_00958070(pvVar3,&local_30);
        local_30 = param_3 + local_30;
        fStack_2c = param_4 + fStack_2c;
        fStack_28 = param_5 + fStack_28;
        uVar4 = FUN_007cf630(pvVar1,&local_30,&local_20);
        uVar5 = (undefined1)uVar4;
        local_38 = local_20;
        local_34 = fStack_1c;
      }
    }
  }
  *param_6 = local_38;
  param_6[1] = local_34;
  return uVar5;
}

