/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632b8 (original PC 1.67 TS3W.exe).
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
    iVar2 = FUN_00937570();
    pvVar3 = (void *)FUN_00937f80(iVar2);
    if (pvVar3 != (void *)0x0) {
      pvVar3 = (void *)FUN_00934260(pvVar3,DAT_011ea158);
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

