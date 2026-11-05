/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original compositor reader clears maps before opening. Admits decimal versions 1 through 5;
   versions 1 through 4 delegate to legacy code. Version 5 seeks to the shared tail first, reads
   context keys, conditionally publishes actual objects/presets, then releases temporary references.
   Inner decode and legacy policy remain separate.
   
   Analyst note (PC1.67 SACS migration contract): ECX manager plus original virtual resource inputs;
   versions1..5 admitted, older1..4 delegated. Clear maps first. V5 seeks shared tail and resolves
   key context, restores sections, loads actual compositor/preset objects and publishes keys/objects
   on success. Current v5 section scanner does not instantiate native objects or reproduce all
   status/rollback semantics. */

uint __thiscall
LotCompositors_ReadResource
          (void *this,int *param_1,int *param_2,uint param_3,undefined4 param_4,int *param_5)

{
  int *this_00;
  bool bVar1;
  byte bVar2;
  undefined3 extraout_var;
  uint uVar3;
  undefined4 uVar4;
  int *piVar5;
  undefined3 extraout_var_00;
  undefined3 uVar6;
  uint extraout_EAX;
  int *piVar7;
  uint local_28;
  uint local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  FUN_004afe80();
  FUN_00ad3130(*(int *)((int)this + 4),*(uint *)((int)this + 8));
  *(undefined4 *)((int)this + 0xc) = 0;
  FUN_00ad3130(*(int *)((int)this + 0x24),*(uint *)((int)this + 0x28));
  this_00 = param_1;
  *(undefined4 *)((int)this + 0x2c) = 0;
  local_c = param_4;
  local_10 = param_3;
  local_8 = 0x563919e;
  local_4 = 0;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  uVar6 = extraout_var;
  if (!bVar1) {
LAB_00ad3ed7:
    return CONCAT31(uVar6,(char)this_00[5]);
  }
  local_28 = 0;
  bVar1 = Stream_ReadUInt32((void *)this_00[2],&local_28,this_00[4]);
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (local_28 - 1 < 5) {
    if (local_28 < 5) {
      uVar3 = FUN_00ad3800(this_00,param_2);
      return uVar3;
    }
    StreamReader_ReadUInt32Into(this_00,&local_24);
    if ((char)this_00[5] != '\0') {
      param_5 = (int *)StreamContext_GetPositionAndMarkNegative(this_00);
      StreamContext_SeekWithSignedAbsoluteGuard(this_00,local_24,0);
      piVar7 = param_2;
      uVar4 = FUN_00607340((void *)((int)this + 0x44),this_00,(uint)param_2);
      if ((char)uVar4 != '\0') {
        StreamContext_SeekWithSignedAbsoluteGuard(this_00,(int)param_5,0);
        param_1 = (int *)0x0;
        StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
        param_3 = 0;
        if (param_1 != (int *)0x0) {
          do {
            if ((char)this_00[5] == '\0') break;
            local_20 = 0;
            local_1c = 0;
            local_18 = 0;
            local_14 = 0;
            ResourceReferences_ReadContextKey(piVar7,this_00,&local_20);
            piVar7 = (int *)this_00[2];
            param_5 = (int *)0x0;
            piVar5 = FUN_0074efa0((int *)&param_5);
            uVar4 = TextureCompositor_CreateFromResourceStream
                              (piVar7,(void *)((int)this + 0x44),local_18,(int)param_2,piVar5);
            if ((char)uVar4 != '\0') {
              param_5[2] = local_20;
              param_5[3] = local_1c;
              param_5[4] = local_18;
              param_5[5] = local_14;
              FUN_00ad33d0(this,param_5,'\0');
            }
            if (param_5 != (int *)0x0) {
              (**(code **)(*param_5 + 4))();
            }
            param_3 = param_3 + 1;
            piVar7 = param_2;
          } while (param_3 < param_1);
        }
        bVar1 = Stream_ReadUInt32((void *)this_00[2],(uint *)&param_1,this_00[4]);
        StreamReader_AccumulateStatus(this_00,bVar1);
        param_5 = (int *)0x0;
        if (param_1 != (int *)0x0) {
          do {
            if ((char)this_00[5] == '\0') break;
            local_20 = 0;
            local_1c = 0;
            local_18 = 0;
            local_14 = 0;
            ResourceReferences_ReadContextKey(piVar7,this_00,&local_20);
            param_2 = (int *)0x0;
            bVar2 = Preset_ReadContextEnvelope(this_00,piVar7,&param_2);
            if (bVar2 != 0) {
              param_2[2] = local_20;
              param_2[3] = local_1c;
              param_2[4] = local_18;
              param_2[5] = local_14;
              FUN_00ad3620(this,param_2);
            }
            if (param_2 != (int *)0x0) {
              (**(code **)(*param_2 + 4))();
            }
            param_5 = (int *)((int)param_5 + 1);
          } while (param_5 < param_1);
        }
        ResourceStreamContext_Close(this_00);
        uVar6 = extraout_var_00;
        goto LAB_00ad3ed7;
      }
    }
  }
  ResourceStreamContext_Close(this_00);
  return extraout_EAX & 0xffffff00;
}

