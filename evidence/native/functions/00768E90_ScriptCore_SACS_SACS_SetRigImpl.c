/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161eb8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SACS::SACS_SetRigImpl [assembly=ScriptCore token=0x06000D76; objGuid:
   Sims3.SimIFace.ObjectGuid, rigKey: Sims3.SimIFace.ResourceKey; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.SACS::SACS_SetRigImpl(void)

{
  int *piVar1;
  char cVar2;
  void *pvVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 uVar6;
  undefined1 *this;
  undefined1 *puVar7;
  undefined4 *puVar8;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined1 uStack0000000c;
  int *local_f4;
  undefined4 *local_f0;
  void *local_ec;
  undefined1 *local_e8;
  undefined1 *local_e4;
  undefined1 *local_e0;
  char *local_dc;
  void *local_d8;
  int local_d4 [5];
  char cStack_c0;
  undefined1 uStack_bf;
  float *pfStack_bc;
  undefined4 uStack_b8;
  void *pvStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  char local_70;
  undefined1 uStack_6f;
  int iStack_6c;
  void *local_68;
  void *pvStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  uint local_20 [7];
  
  pvVar3 = ObjectRegistry_GetGlobal();
  puVar4 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,in_stack_00000004));
  this = (undefined1 *)0x0;
  if (puVar4 == (undefined4 *)0x0) {
    return 0xfffffff7;
  }
  piVar1 = puVar4 + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  local_f0 = puVar4;
  local_ec = Object_GetComponentByMask(puVar4,DAT_011dd484);
  if (local_ec == (void *)0x0) {
    LOCK();
    iVar5 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
    return 0xfffffff8;
  }
  local_e8 = (undefined1 *)0x0;
  local_e4 = (undefined1 *)0x0;
  local_e0 = (undefined1 *)0x0;
  local_dc = "Animation/SetRig/slotRecords";
  local_d8 = Object_GetComponentByMask(puVar4,DAT_011ea114);
  if (local_d8 != (void *)0x0) {
    FUN_00951890(local_d8,local_d4);
    iVar5 = FUN_00950f40(local_d4);
    cVar2 = (char)iVar5;
    while (cVar2 != '\0') {
      local_f4 = (int *)0x0;
      pvVar3 = (void *)FUN_009503d0(local_d4,&local_f4);
      puVar7 = this;
      local_68 = pvVar3;
      if (local_f4 != (int *)0x0) {
        uVar6 = FUN_009503f0((int)local_d4);
        local_70 = (char)uVar6;
        iVar5 = (**(code **)(*local_f4 + 8))(3);
        if ((iVar5 == 0) || (uStack_6f = 1, pvVar3 != *(void **)(iVar5 + 0x1c))) {
          uStack_6f = 0;
        }
        if ((char)uVar6 == '\0') {
          iStack_6c = local_f4[1];
        }
        else {
          iStack_6c = FUN_009de7f0((int)local_f4);
        }
        if (pvVar3 != (void *)0x0) {
          pvVar3 = Object_GetComponentByMask(pvVar3,DAT_011ea158);
          if (pvVar3 != (void *)0x0) {
            puVar4 = (undefined4 *)FUN_009560e0(pvVar3,(uint *)&cStack_c0);
            uStack_60 = *puVar4;
            uStack_5c = puVar4[1];
            uStack_58 = puVar4[2];
            uStack_54 = puVar4[3];
            uStack_50 = puVar4[4];
            uStack_4c = puVar4[5];
            uStack_48 = puVar4[6];
            uStack_44 = puVar4[7];
            uStack_40 = puVar4[8];
            uStack_3c = puVar4[9];
            uStack_38 = puVar4[10];
            uStack_34 = puVar4[0xb];
            uStack_30 = puVar4[0xc];
            uStack_2c = puVar4[0xd];
            uStack_28 = puVar4[0xe];
            uStack_24 = puVar4[0xf];
            pvStack_64 = pvVar3;
            if (this < local_e0) {
              puVar7 = this + 0x50;
              local_e4 = puVar7;
              if (this != (undefined1 *)0x0) {
                FUN_00767590(this,&local_70);
              }
            }
            else {
              FUN_00768b40(&local_e8,this,&local_70);
              puVar7 = local_e4;
            }
          }
        }
        puVar4 = local_f0;
      }
      iVar5 = FUN_00950f40(local_d4);
      this = puVar7;
      cVar2 = (char)iVar5;
    }
    for (puVar7 = local_e8; puVar7 != this; puVar7 = puVar7 + 0x50) {
      FUN_009595b0(*(void **)(puVar7 + 0xc));
    }
  }
  pvVar3 = local_d8;
  UIResourceKey_CopyManagedToNative(&uStack0000000c,local_20);
  AnimationComponent_AssignRigResourceKey(local_ec,local_20,1);
  if ((pvVar3 != (void *)0x0) && (iVar5 = ((int)this - (int)local_e8) / 0x50, iVar5 != 0)) {
    puVar8 = (undefined4 *)(local_e8 + 0x30);
    do {
      cStack_c0 = *(char *)(puVar8 + -0xc);
      uStack_bf = *(undefined1 *)((int)puVar8 + -0x2f);
      pfStack_bc = (float *)puVar8[-0xb];
      uStack_b8 = puVar8[-10];
      pvStack_b4 = (void *)puVar8[-9];
      uStack_b0 = puVar8[-8];
      uStack_ac = puVar8[-7];
      uStack_a8 = puVar8[-6];
      uStack_a4 = puVar8[-5];
      uStack_a0 = puVar8[-4];
      uStack_9c = puVar8[-3];
      uStack_98 = puVar8[-2];
      uStack_94 = puVar8[-1];
      uStack_90 = *puVar8;
      uStack_8c = puVar8[1];
      uStack_88 = puVar8[2];
      uStack_84 = puVar8[3];
      uStack_80 = puVar8[4];
      uStack_7c = puVar8[5];
      uStack_78 = puVar8[6];
      uStack_74 = puVar8[7];
      if (cStack_c0 == '\0') {
        FUN_00959e90(pvStack_b4,puVar4,pfStack_bc,(char)&uStack_b0);
      }
      else {
        FUN_00959f10(pvStack_b4,puVar4,pfStack_bc,(char)&uStack_b0);
      }
      puVar8 = puVar8 + 0x14;
      iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
  }
  if (local_e8 != (undefined1 *)0x0) {
    Memory_FreeIfNonNull(local_e8);
  }
  piVar1 = puVar4 + 1;
  LOCK();
  iVar5 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar5 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*puVar4)(1);
  }
  return 0;
}

