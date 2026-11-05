/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0073b777) */
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* Verified PC 1.67 registration table at 0x0115eb58 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_StartRandomClipController [assembly=ScriptCore token=0x06000DBE;
   objId: System.UInt64, track: System.UInt32, blendTime: System.Single, trackMaskKey:
   Sims3.SimIFace.ResourceKey, resourceIds: System.UInt64[], weights: System.Single[], repeats:
   System.Single[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Animation::Animation_StartRandomClipController(char **param_1)

{
  int iVar1;
  char *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined1 *this;
  int *piVar5;
  char ***pppcVar6;
  char ***pppcVar7;
  undefined4 *puVar8;
  void *this_00;
  undefined4 *puVar9;
  int unaff_EBP;
  undefined4 *unaff_ESI;
  int unaff_EDI;
  undefined4 *puVar10;
  undefined4 in_stack_00000014;
  undefined4 in_stack_0000001c;
  char **in_stack_00000024;
  undefined4 uVar11;
  char **ppcStack_94;
  undefined1 *puStack_90;
  char **ppcStack_8c;
  char **ppcStack_88;
  undefined4 **ppuVar12;
  undefined4 *local_70;
  undefined4 *local_6c;
  char *pcStack_68;
  int iStack_64;
  char *local_60;
  char *pcStack_5c;
  char *pcStack_58;
  undefined4 *local_54;
  undefined4 *puStack_50;
  undefined4 *puStack_4c;
  char *pcStack_48;
  undefined4 *puStack_44;
  undefined4 *puStack_40;
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
  
  iVar3 = FUN_00937570();
  ppcStack_88 = param_1;
  ppcStack_8c = (char **)0x73b413;
  puVar4 = (undefined4 *)FUN_00937f80(iVar3);
  if (puVar4 != (undefined4 *)0x0) {
    piVar5 = puVar4 + 1;
    LOCK();
    *piVar5 = *piVar5 + 1;
    UNLOCK();
    ppcStack_88 = (char **)0x73b43f;
    local_54 = puVar4;
    this = (undefined1 *)FUN_00934260(puVar4,DAT_011dd484);
    local_6c = (undefined4 *)this;
    if (this != (undefined1 *)0x0) {
      piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
      ppuVar12 = &local_70;
      ppcStack_88 = &local_60;
      local_60 = (char *)0x0;
      ppcStack_8c = in_stack_00000024;
      puStack_90 = (undefined1 *)0x73b473;
      (**(code **)(*piVar5 + 0x68))();
      puStack_90 = &stack0xffffff8c;
      ppcStack_94 = &pcStack_68;
      pcStack_68 = (char *)0x0;
      (**(code **)(*piVar5 + 0x78))(in_stack_0000001c);
      local_70 = (undefined4 *)0x0;
      (**(code **)(*piVar5 + 0x78))(in_stack_00000014,&local_70);
      pppcVar6 = &ppcStack_8c;
      if ((int)ppcStack_94 <= (int)ppcStack_8c) {
        pppcVar6 = &ppcStack_94;
      }
      ppcStack_94 = *pppcVar6;
      pppcVar7 = &ppcStack_88;
      if ((int)*pppcVar6 <= (int)ppcStack_88) {
        pppcVar7 = &ppcStack_94;
      }
      ppcStack_94 = *pppcVar7;
      local_70 = (undefined4 *)0x0;
      local_6c = (undefined4 *)0x0;
      pcStack_68 = "Scratch/Animation/StartRandomClipController/Keys";
      iStack_64 = 0;
      local_60 = (char *)0x0;
      pcStack_5c = (char *)0x0;
      pcStack_58 = "Scratch/Animation/StartRandomClipController/Weights";
      local_54 = (undefined4 *)0x0;
      puStack_50 = (undefined4 *)0x0;
      puStack_4c = (undefined4 *)0x0;
      pcStack_48 = "Scratch/Animation/StartRandomClipController/Repeats";
      FUN_00d75380(&stack0xffffff8c,(uint)ppcStack_94);
      FUN_004d5650(&iStack_64,(uint)ppcStack_94);
      iVar3 = 0;
      puVar4 = local_70;
      if (0 < (int)ppcStack_94) {
        do {
          puStack_44 = ppuVar12[iVar3 * 2];
          puStack_40 = ppuVar12[iVar3 * 2 + 1];
          uStack_3c = 0x6b20c4f3;
          uStack_38 = 0;
          if (puVar4 < local_6c) {
            local_70 = puVar4 + 4;
            if (puVar4 != (undefined4 *)0x0) {
              *puVar4 = puStack_44;
              puVar4[1] = puStack_40;
              puVar4[2] = 0x6b20c4f3;
              puVar4[3] = 0;
            }
          }
          else {
            FUN_00cca0b0(&stack0xffffff8c,puVar4,&puStack_44);
          }
          puVar4 = local_70;
          puVar10 = (undefined4 *)(unaff_EDI + iVar3 * 4);
          if (local_60 < pcStack_5c) {
            pcVar2 = local_60 + 4;
            if (local_60 != (char *)0x0) {
              *(undefined4 *)local_60 = *puVar10;
            }
          }
          else {
            FUN_00405f80(&iStack_64,(undefined4 *)local_60,puVar10);
            pcVar2 = local_60;
          }
          local_60 = pcVar2;
          if (puStack_50 < puStack_4c) {
            puVar10 = puStack_50 + 1;
            if (puStack_50 != (undefined4 *)0x0) {
              *puStack_50 = unaff_ESI[iVar3];
            }
          }
          else {
            FUN_00405f80(&local_54,puStack_50,unaff_ESI + iVar3);
            puVar10 = puStack_50;
          }
          puStack_50 = puVar10;
          iVar3 = iVar3 + 1;
          this = puStack_90;
        } while (iVar3 < (int)ppcStack_94);
      }
      iVar3 = FUN_0093cba0(this,iStack_18);
      puVar10 = (undefined4 *)0x0;
      if ((iVar3 != 0) &&
         (puVar8 = (undefined4 *)(**(code **)(*(int *)(iVar3 + 8) + 4))(0x6c12d61),
         puVar8 != (undefined4 *)0x0)) {
        puVar8[1] = puVar8[1] + 1;
        puVar10 = puVar8;
      }
      puVar8 = puVar10;
      if (puVar10 == (undefined4 *)0x0) {
        this_00 = (void *)FUN_004e4500(0x88,"Animation/RandomClipController",0);
        if ((this_00 != (void *)0x0) &&
           (puVar9 = FUN_0056d8a0(this_00,puStack_90 + 8), puVar9 != (undefined4 *)0x0)) {
          puVar9[1] = puVar9[1] + 1;
          puVar8 = puVar9;
        }
      }
      else {
        puVar10[1] = puVar10[1] + 1;
      }
      uStack_34 = uStack_8;
      uStack_2c = uStack_10;
      uStack_30 = uStack_4;
      uStack_28 = uStack_c;
      FUN_0056d180(puVar8,uStack_14);
      FUN_0056d480(puVar8,&uStack_34);
      iVar1 = iStack_64;
      FUN_0056e150(puVar8,(undefined4 *)0x0,iStack_64,(int)local_54,(int)puVar4 >> 4);
      (**(code **)(*(int *)(puStack_90 + 8) + 0x14))(iStack_18,puVar8,0,uStack_14,uStack_14,1,0,0,0)
      ;
      uVar11 = puVar8[8];
      iVar3 = puVar8[1];
      puVar8[1] = iVar3 + -1;
      if (iVar3 + -1 == 0) {
        puVar8[1] = 1;
        (**(code **)*puVar8)(1);
      }
      if ((puVar10 != (undefined4 *)0x0) &&
         (iVar3 = puVar10[1], puVar10[1] = iVar3 + -1, iVar3 + -1 == 0)) {
        puVar10[1] = 1;
        (**(code **)*puVar10)(1);
      }
      if (unaff_EBP != 0) {
        FUN_004e44e0(unaff_EBP);
      }
      if (iVar1 != 0) {
        FUN_004e44e0(iVar1);
      }
      LOCK();
      UNLOCK();
      if (unaff_EBP == 1) {
        LOCK();
        UNLOCK();
        (*(code *)*unaff_ESI)(1);
      }
      return uVar11;
    }
    LOCK();
    iVar3 = *piVar5;
    *piVar5 = *piVar5 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar5 = 1;
      UNLOCK();
      ppcStack_88 = (char **)0x73b7cc;
      (**(code **)*puVar4)();
    }
  }
  return 0;
}

