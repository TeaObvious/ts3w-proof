/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst-assigned PC 1.67 request image allocation and command-publication helper, checked with
   the complete 196-instruction body and registered thumbnail/CAS/save consumers. ECX is the service
   receiver and RET 0xc consumes request, output-image slot and placeholder inputs. Empty request
   span returns AL=0, without defining all upper EAX bits. The nonempty path allocates a 0xc-byte
   texture wrapper with the UI/ThumbnailManager/ThumbnailUITexture label, calls the existing
   constructor and slot0 when nonnull, obtains requested dimensions, and computes padded dimensions
   with the existing minus-one/bit-smear/increment arithmetic. It allocates a 0x2c-byte image with
   the UI/ThumbnailManager/Image label and constructs it using original/padded dimension ratios and
   flag0x21. It stores the output image then invokes that image's slot0 unconditionally; no extra
   allocation-failure/null-safety contract is inferred. Existing children construct/setup a stack
   command and the 00693380 queue helper receives it; command cleanup and temporary texture slot4
   follow before AL=1. This is request allocation/publication, not a generic cache lookup or proof
   that pixels/rendering are complete. Virtual slot refcount meaning, constructor/queue execution,
   placeholder/cache/format policy and native GPU retirement remain bounded; inferred types/return
   projection are not repaired. */

uint __thiscall
UIThumbnail_AllocateImageAndPublishCommand(void *this,int *param_1,undefined4 *param_2,int *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int *piVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint uVar9;
  void *this_00;
  int *this_01;
  uint3 extraout_var;
  int iVar10;
  int *piVar11;
  uint uStack_74;
  uint uStack_70;
  int *local_6c;
  uint local_68;
  uint local_64;
  byte abStack_60 [4];
  undefined **ppuStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  int aiStack_50 [19];
  
  if (*param_1 == param_1[1]) {
    return *param_1 & 0xffffff00;
  }
  puVar7 = (undefined4 *)FUN_004e4500(0xc,"UI/ThumbnailManager/ThumbnailUITexture",0);
  if (puVar7 == (undefined4 *)0x0) {
    local_6c = (int *)0x0;
  }
  else {
    local_6c = (int *)FUN_007dbf60(puVar7);
    if (local_6c != (int *)0x0) {
      (**(code **)*local_6c)();
    }
  }
  FUN_00d4ed30(this,(uint *)(param_1 + 0x1e),*(int *)(*param_1 + 0x10),&local_68,&local_64);
  uVar6 = local_64;
  uStack_70 = local_68;
  uStack_74 = local_64;
  FUN_00619eb0(&uStack_70,&uStack_74,'\0','\0');
  uVar8 = uStack_70 - 1 | uStack_70 - 1 >> 0x10;
  uVar8 = uVar8 | uVar8 >> 8;
  uVar8 = uVar8 | uVar8 >> 4;
  uVar8 = uVar8 | uVar8 >> 2;
  uVar9 = uStack_74 - 1 | uStack_74 - 1 >> 0x10;
  uStack_70 = (uVar8 >> 1 | uVar8) + 1;
  uVar9 = uVar9 | uVar9 >> 8;
  uVar9 = uVar9 | uVar9 >> 4;
  uVar9 = uVar9 | uVar9 >> 2;
  uStack_74 = (uVar9 >> 1 | uVar9) + 1;
  this_00 = (void *)FUN_004e4500(0x2c,"UI/ThumbnailManager/Image",0);
  piVar5 = local_6c;
  if (this_00 == (void *)0x0) {
    puVar7 = (undefined4 *)0x0;
  }
  else {
    fVar1 = (float)(int)uVar6;
    if ((int)uVar6 < 0) {
      fVar1 = fVar1 + 4.2949673e+09;
    }
    fVar2 = (float)(int)uStack_74;
    if ((int)uStack_74 < 0) {
      fVar2 = fVar2 + 4.2949673e+09;
    }
    fVar3 = (float)(int)local_68;
    if ((int)local_68 < 0) {
      fVar3 = fVar3 + 4.2949673e+09;
    }
    local_64 = uStack_70;
    fVar4 = (float)(int)uStack_70;
    if ((int)uStack_70 < 0) {
      fVar4 = fVar4 + 4.2949673e+09;
    }
    puVar7 = FUN_0050aa10(this_00,local_6c,uStack_70,uStack_74,0,0,fVar3 / fVar4,fVar1 / fVar2,0x21)
    ;
  }
  *param_2 = puVar7;
  (**(code **)*puVar7)();
  abStack_60[0] = 0x50;
  abStack_60[1] = 0x49;
  abStack_60[2] = 0x20;
  abStack_60[3] = 0x3f;
  uStack_58 = 0;
  uStack_54 = 0;
  ppuStack_5c = &PTR_PTR_01192be8;
  piVar11 = piVar5;
  this_01 = FUN_00d4eb50(aiStack_50);
  FUN_00d59b60(this_01,param_1,piVar11,param_3);
  RenderCommand_EnqueueIfDispatcherExists(abStack_60);
  iVar10 = (uint)extraout_var << 8;
  if (ppuStack_5c != (undefined **)0x0) {
    iVar10 = (**(code **)*ppuStack_5c)(aiStack_50);
  }
  if (piVar5 != (int *)0x0) {
    iVar10 = (**(code **)(*piVar5 + 4))();
  }
  return CONCAT31((int3)((uint)iVar10 >> 8),1);
}

