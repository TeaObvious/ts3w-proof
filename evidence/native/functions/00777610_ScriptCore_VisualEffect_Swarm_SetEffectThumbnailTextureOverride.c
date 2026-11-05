/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629e8 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetEffectThumbnailTextureOverride [assembly=ScriptCore
   token=0x060004C1; effectHandle: System.UInt64, key: Sims3.SimIFace.ResourceKey, templateObjectId:
   System.UInt64, index: System.Int32, size: System.Int32, geoState: System.UInt32, matState:
   System.UInt32, textureSet: System.Int32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.VisualEffect::Swarm_SetEffectThumbnailTextureOverride(void)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  uint uVar5;
  int in_stack_0000001c;
  int in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 in_stack_00000028;
  undefined4 in_stack_0000002c;
  undefined4 in_stack_00000030;
  int in_stack_00000034;
  undefined4 local_140 [4];
  int local_130 [30];
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  int local_a8;
  int local_a4;
  undefined4 local_30;
  undefined4 local_24;
  undefined4 local_20;
  
  iVar1 = FUN_00937570();
  uVar5 = 0;
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    uVar5 = 0;
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9e90);
      uVar5 = 0;
      if (pvVar2 != (void *)0x0) {
        uVar5 = 0;
        if (DAT_011eec30 != 0) {
          FUN_005e6500(local_130);
          puVar3 = (undefined4 *)FUN_0076c0e0(&stack0x0000000c,local_140);
          local_b8 = *puVar3;
          local_b4 = puVar3[1];
          local_b0 = puVar3[2];
          local_ac = puVar3[3];
          local_30 = in_stack_00000024;
          local_24 = in_stack_0000002c;
          local_20 = in_stack_00000030;
          local_a8 = in_stack_0000001c;
          local_a4 = in_stack_00000020;
          FUN_005e6cb0(local_130,in_stack_00000028,0,0,0,0,0);
          if (in_stack_0000001c != 0 || in_stack_00000020 != 0) {
            uVar4 = FUN_00d4c440(in_stack_0000001c,in_stack_00000020,local_130);
            if ((char)uVar4 == '\0') {
              uVar5 = FUN_005e6410(local_130);
              goto LAB_00777724;
            }
          }
          FUN_00944860(pvVar2,local_130,in_stack_00000034);
          uVar4 = FUN_005e6410(local_130);
          return CONCAT31((int3)((uint)uVar4 >> 8),1);
        }
      }
    }
  }
LAB_00777724:
  return uVar5 & 0xffffff00;
}

