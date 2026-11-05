/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 physical thiscall ECX receiver plus eleven stackwords, RET2Ch; inferred
   pointer/integer aliases are not stronger ABI evidence. Finds a row by full object GUID. Exact
   equality of all four resource-key words only stores the loop byte at+A2 and returns AL1,
   retaining paired sound+90. Replacement path compares incoming paired sound with old+90 for
   cleanup; installs full GUID/key and paired sound before its texture/renderer children.
   Success/failure is normalized low AL on selected branches, not a guaranteed whole-EAX Boolean.
   Decoder, native device-clock and uninspected cleanup-child policies remain separate. */

undefined4 __thiscall
ObjectVideoManager_StartOrUpdateObject
          (void *this,int *param_1,uint param_2,int *param_3,undefined1 param_4,int param_5,
          int param_6,int param_7,int param_8,int param_9,int param_10,undefined1 param_11)

{
  bool bVar1;
  void *pvVar2;
  uint *puVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int *piVar9;
  uint *puVar10;
  int iVar11;
  float10 fVar12;
  undefined4 local_8;
  int *local_4;
  
  for (piVar9 = *(int **)((int)this + 0x88);
      (piVar4 = (int *)0x0, piVar9 != (int *)((int)this + 0x88) &&
      ((piVar9[0x1c] != param_2 || (piVar4 = piVar9, (int *)piVar9[0x1d] != param_3))));
      piVar9 = (int *)*piVar9) {
  }
  bVar1 = false;
  if (piVar4 == (int *)0x0) {
    puVar3 = FUN_009d6fa0(0xb8,"VideoPlayback",1,8,0);
    puVar10 = (uint *)0x0;
    if (puVar3 == (uint *)0x0) goto LAB_009d7cd6;
    piVar4 = (int *)FUN_009d6d50((int)puVar3);
    piVar4[1] = *(int *)((int)this + 0x8c);
    *piVar4 = (int)this + 0x88;
    *(int **)((int)this + 0x8c) = piVar4;
    *(int **)piVar4[1] = piVar4;
  }
  else {
    if ((((piVar4[0x18] == *param_1) && (piVar4[0x1a] == param_1[2])) &&
        (piVar4[0x1b] == param_1[3])) && (piVar4[0x19] == param_1[1])) {
      *(undefined1 *)((int)piVar4 + 0xa2) = param_4;
      return CONCAT31((int3)((uint)piVar4[0x1b] >> 8),1);
    }
    if ((char)piVar4[0x29] == '\0') {
      local_4 = (int *)piVar4[0x1d];
      uVar5 = piVar4[0x1c];
      pvVar2 = (void *)FUN_006fdbe0();
      if (pvVar2 != (void *)0x0) {
        ObjectRenderer_ApplyVideoTextureOverride(pvVar2,uVar5,local_4);
      }
      FUN_009d70e0(this,(int)piVar4,param_5 != piVar4[0x24]);
    }
    else if ((piVar4[0x24] != 0) &&
            (iVar11 = *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4),
            piVar9 = (int *)FUN_009d6c30((void *)((int)this + 0x20),&local_8,(uint *)(piVar4 + 0x24)
                                        ), *piVar9 != iVar11)) {
      bVar1 = true;
    }
  }
  fVar12 = FUN_009d6860(param_2,(int)param_3);
  piVar4[0x2a] = (int)(float)fVar12;
  *(undefined1 *)(piVar4 + 0x29) = 0;
  if ((bVar1) || (DAT_00fab220 <= (float)fVar12)) {
    *(undefined1 *)(piVar4 + 0x29) = 1;
  }
  piVar4[0x1c] = param_2;
  piVar4[0x1d] = (int)param_3;
  piVar4[0x18] = *param_1;
  piVar4[0x19] = param_1[1];
  piVar4[0x1a] = param_1[2];
  piVar4[0x1b] = param_1[3];
  uVar5 = param_7 - 1U | param_7 - 1U >> 0x10;
  *(undefined1 *)((int)piVar4 + 0xa2) = param_4;
  uVar5 = uVar5 | uVar5 >> 8;
  uVar5 = uVar5 | uVar5 >> 4;
  uVar5 = uVar5 | uVar5 >> 2;
  uVar6 = param_8 - 1U | param_8 - 1U >> 0x10;
  piVar4[0x22] = (uVar5 >> 1 | uVar5) + 1;
  uVar6 = uVar6 | uVar6 >> 8;
  uVar6 = uVar6 | uVar6 >> 4;
  uVar6 = uVar6 | uVar6 >> 2;
  piVar4[0x23] = (uVar6 >> 1 | uVar6) + 1;
  piVar4[0x24] = param_5;
  *(undefined1 *)((int)piVar4 + 0xa5) = 0;
  piVar4[0x27] = param_6;
  piVar4[0x26] = param_9;
  piVar4[0x25] = param_10;
  *(undefined1 *)((int)piVar4 + 0xa1) = param_11;
  if ((char)piVar4[0x29] != '\0') {
    pvVar2 = (void *)FUN_006fdbe0();
    if (pvVar2 != (void *)0x0) {
      ObjectRenderer_ApplyVideoTextureOverride(pvVar2,param_2,param_3);
    }
    *(undefined1 *)(piVar4 + 0x28) = 1;
    uVar7 = FUN_009d64d0((int)piVar4);
    return CONCAT31((int3)((uint)uVar7 >> 8),1);
  }
  puVar8 = (undefined4 *)FUN_004e4500(0x34,"Video/VideoTexture",0);
  puVar10 = (uint *)0x0;
  if (puVar8 != (undefined4 *)0x0) {
    piVar9 = Texture_Construct(puVar8);
    puVar10 = (uint *)0x0;
    if (piVar9 != (int *)0x0) {
      (**(code **)(*piVar9 + 4))();
      uVar7 = Texture_Create2D(piVar9,piVar4[0x22],piVar4[0x23],1,0x3e,1);
      if ((char)uVar7 == '\0') {
        puVar10 = (uint *)(**(code **)(*piVar9 + 8))();
      }
      else {
        piVar4[0x21] = (int)piVar9;
        *(undefined1 *)(piVar4 + 0x28) = 0;
        puVar10 = FUN_009d6fa0(0x80,"VideoRenderer",1,0x10,0);
        piVar4[0x1f] = (int)puVar10;
        puVar10 = FUN_009d6fa0(8,"VideoRenderableOperations",1,4,0);
        piVar4[0x20] = (int)puVar10;
        if (((undefined4 *)piVar4[0x1f] != (undefined4 *)0x0) && (puVar10 != (uint *)0x0)) {
          iVar11 = FUN_009d85d0((undefined4 *)piVar4[0x1f]);
          piVar4[0x1f] = iVar11;
          if ((undefined4 *)piVar4[0x20] == (undefined4 *)0x0) {
            iVar11 = 0;
          }
          else {
            iVar11 = FUN_009d8320((undefined4 *)piVar4[0x20]);
          }
          piVar4[0x20] = iVar11;
          if (piVar4[0x1f] != 0) {
            *(undefined1 *)(piVar4[0x1f] + 0x79) = *(undefined1 *)((int)piVar4 + 0xa1);
          }
          uVar7 = FUN_009d78e0((int)piVar4);
          return uVar7;
        }
      }
    }
  }
LAB_009d7cd6:
  return (uint)puVar10 & 0xffffff00;
}

