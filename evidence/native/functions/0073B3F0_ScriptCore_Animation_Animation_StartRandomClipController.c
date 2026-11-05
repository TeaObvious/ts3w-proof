/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x0073b777) */
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* Verified PC 1.67 registration table at 0x0115eb58 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_StartRandomClipController [assembly=ScriptCore token=0x06000DBE;
   objId: System.UInt64, track: System.UInt32, blendTime: System.Single, trackMaskKey:
   Sims3.SimIFace.ResourceKey, resourceIds: System.UInt64[], weights: System.Single[], repeats:
   System.Single[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Animation::Animation_StartRandomClipController(char **param_1)

{
  void *pvVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 **ppuVar4;
  undefined4 **ppuVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  void *unaff_EBP;
  int iVar9;
  undefined4 *unaff_ESI;
  int unaff_EDI;
  undefined4 in_stack_00000008;
  undefined4 in_stack_00000014;
  undefined4 in_stack_0000001c;
  undefined4 *in_stack_00000024;
  undefined4 uVar10;
  char **ppcStack_94;
  void *pvStack_90;
  undefined4 *puStack_8c;
  undefined4 **ppuVar11;
  undefined4 local_70;
  undefined4 *local_6c;
  char *pcStack_68;
  void *pvStack_64;
  undefined4 *local_60;
  undefined4 *puStack_5c;
  char *pcStack_58;
  undefined4 *local_54;
  undefined4 *puStack_50;
  undefined4 *puStack_4c;
  char *pcStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int iStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  puStack_8c = (undefined4 *)0x73b413;
  puVar2 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,param_1));
  if (puVar2 != (undefined4 *)0x0) {
    piVar3 = puVar2 + 1;
    LOCK();
    *piVar3 = *piVar3 + 1;
    UNLOCK();
    local_54 = puVar2;
    pvVar1 = Object_GetComponentByMask(puVar2,DAT_011dd484);
    local_6c = pvVar1;
    if (pvVar1 != (void *)0x0) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      puVar2 = &local_70;
      ppuVar11 = &local_60;
      local_60 = (undefined4 *)0x0;
      puStack_8c = in_stack_00000024;
      pvStack_90 = (void *)0x73b473;
      (**(code **)(*piVar3 + 0x68))();
      pvStack_90 = (void *)((int)register0x00000010 + -0x74);
      ppcStack_94 = &pcStack_68;
      pcStack_68 = (char *)0x0;
      (**(code **)(*piVar3 + 0x78))(in_stack_0000001c);
      local_70 = (undefined4 *)0x0;
      (**(code **)(*piVar3 + 0x78))(in_stack_00000014,&local_70);
      ppuVar4 = &puStack_8c;
      if ((int)ppcStack_94 <= (int)puStack_8c) {
        ppuVar4 = &ppcStack_94;
      }
      ppcStack_94 = (char **)*ppuVar4;
      ppuVar5 = (undefined4 **)((int)register0x00000010 + -0x88);
      if ((int)*ppuVar4 <= (int)ppuVar11) {
        ppuVar5 = &ppcStack_94;
      }
      ppcStack_94 = (char **)*ppuVar5;
      local_70 = (undefined4 *)0x0;
      local_6c = (undefined4 *)0x0;
      pcStack_68 = "Scratch/Animation/StartRandomClipController/Keys";
      pvStack_64 = (void *)0x0;
      local_60 = (undefined4 *)0x0;
      puStack_5c = (undefined4 *)0x0;
      pcStack_58 = "Scratch/Animation/StartRandomClipController/Weights";
      local_54 = (undefined4 *)0x0;
      puStack_50 = (undefined4 *)0x0;
      puStack_4c = (undefined4 *)0x0;
      pcStack_48 = "Scratch/Animation/StartRandomClipController/Repeats";
      FUN_00d75380((void *)((int)register0x00000010 + -0x74),(uint)ppcStack_94);
      FUN_004d5650(&pvStack_64,(uint)ppcStack_94);
      iVar9 = 0;
      puVar8 = local_70;
      if (0 < (int)ppcStack_94) {
        do {
          uStack_44 = puVar2[iVar9 * 2];
          uStack_40 = puVar2[iVar9 * 2 + 1];
          uStack_3c = 0x6b20c4f3;
          uStack_38 = 0;
          if (puVar8 < local_6c) {
            local_70 = puVar8 + 4;
            if (puVar8 != (undefined4 *)0x0) {
              *puVar8 = uStack_44;
              puVar8[1] = uStack_40;
              puVar8[2] = 0x6b20c4f3;
              puVar8[3] = 0;
            }
          }
          else {
            FUN_00cca0b0((void *)((int)register0x00000010 + -0x74),puVar8,&uStack_44);
          }
          puVar8 = local_70;
          puVar6 = (undefined4 *)(unaff_EDI + iVar9 * 4);
          if (local_60 < puStack_5c) {
            puVar7 = local_60 + 1;
            if (local_60 != (undefined4 *)0x0) {
              *local_60 = *puVar6;
            }
          }
          else {
            FUN_00405f80(&pvStack_64,local_60,puVar6);
            puVar7 = local_60;
          }
          local_60 = puVar7;
          if (puStack_50 < puStack_4c) {
            puVar6 = puStack_50 + 1;
            if (puStack_50 != (undefined4 *)0x0) {
              *puStack_50 = unaff_ESI[iVar9];
            }
          }
          else {
            FUN_00405f80(&local_54,puStack_50,unaff_ESI + iVar9);
            puVar6 = puStack_50;
          }
          puStack_50 = puVar6;
          iVar9 = iVar9 + 1;
        } while (iVar9 < (int)ppcStack_94);
        pvVar1 = pvStack_90;
      }
      iVar9 = FUN_0093cba0(pvVar1,iStack_18);
      puVar2 = (undefined4 *)0x0;
      if ((iVar9 != 0) &&
         (puVar6 = (undefined4 *)(**(code **)(*(int *)(iVar9 + 8) + 4))(0x6c12d61),
         puVar6 != (undefined4 *)0x0)) {
        puVar6[1] = puVar6[1] + 1;
        puVar2 = puVar6;
      }
      puVar6 = puVar2;
      if (puVar2 == (undefined4 *)0x0) {
        pvVar1 = (void *)FUN_004e4500(0x88,"Animation/RandomClipController",0);
        if ((pvVar1 != (void *)0x0) &&
           (puVar7 = FUN_0056d8a0(pvVar1,(int)pvStack_90 + 8), puVar7 != (undefined4 *)0x0)) {
          puVar7[1] = puVar7[1] + 1;
          puVar6 = puVar7;
        }
      }
      else {
        puVar2[1] = puVar2[1] + 1;
      }
      uStack_34 = uStack_8;
      uStack_2c = uStack_10;
      uStack_30 = uStack_4;
      uStack_28 = uStack_c;
      FUN_0056d180(puVar6,uStack_14);
      FUN_0056d480(puVar6,&uStack_34);
      pvVar1 = pvStack_64;
      FUN_0056e150(puVar6,(undefined4 *)0x0,(int)pvStack_64,(int)local_54,(int)puVar8 >> 4);
      (**(code **)(*(int *)((int)pvStack_90 + 8) + 0x14))
                (iStack_18,puVar6,0,uStack_14,uStack_14,1,0,0,0);
      uVar10 = puVar6[8];
      iVar9 = puVar6[1];
      puVar6[1] = iVar9 + -1;
      if (iVar9 + -1 == 0) {
        puVar6[1] = 1;
        (**(code **)*puVar6)(1);
      }
      if ((puVar2 != (undefined4 *)0x0) &&
         (iVar9 = puVar2[1], puVar2[1] = iVar9 + -1, iVar9 + -1 == 0)) {
        puVar2[1] = 1;
        (**(code **)*puVar2)(1);
      }
      if (unaff_EBP != (void *)0x0) {
        Memory_FreeIfNonNull(unaff_EBP);
      }
      if (pvVar1 != (void *)0x0) {
        Memory_FreeIfNonNull(pvVar1);
      }
      LOCK();
      UNLOCK();
      if (unaff_EBP == (void *)0x1) {
        LOCK();
        UNLOCK();
        (*(code *)*unaff_ESI)(1);
      }
      return uVar10;
    }
    LOCK();
    iVar9 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar9 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      (**(code **)*puVar2)();
    }
  }
  return 0;
}

