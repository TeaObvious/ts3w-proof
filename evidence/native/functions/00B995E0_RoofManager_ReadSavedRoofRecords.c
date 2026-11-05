/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67 original saved-roof reader comparison; descriptive analyst role, no execution.
   Complete365 Listing instructions/1079 pristine bytes. ECX manager plus five stack words, RET0x14;
   physical AL loads stream-context+0x14 on both opened and open-failure routes, upper EAX not
   defined despite inferred undefined4 C. Opens0x11E32896, reads versioned header and counted ID/two
   coordinate-level triples/key/floating-scalar records. Version<3 uses inline keys; later
   context-key children retain separate width semantics. Catalog/default and four-word
   runtime-global substitution precede nonnull-product-gated B98940 construction. Sticky read
   failure does not stop the count loop; opened stream closes before status return. AC91D0 caller
   owns absent-manager allocation/binding and false-AL cleanup. Child007D84C0 retains an OpenWrite
   analyst label despite this read route; helper label alone is not direction evidence.
   Catalog/key-width/concrete constructor/rendering children remain bounded. No native
   ridge/byte-scanner geometry equivalence or runtime-global initial value is claimed.
   
   Analyst note (PC1.67 construction persistence contract): Read and retain counter+3C; every
   accepted supplied roof ID flows to B98940 and may raise it by signed comparison. Belowv5
   pagoda+8C becomes0; belowv4 orientation+88 retains constructor true. Fromv6 retain flag+90 and
   optional UInt32+94,Boolean+98,byte+99. Current writer B96130 emits these live values at version6.
   Actual inline keys use007D7760 T/G/instance words, not native struct memory order. */

undefined4 __thiscall
RoofManager_ReadSavedRoofRecords
          (void *this,void *param_1,void *param_2,uint param_3,undefined4 param_4,uint param_5)

{
  uint *outKey;
  void *this_00;
  void *this_01;
  bool bVar1;
  undefined3 extraout_var;
  int iVar2;
  int *piVar3;
  undefined3 extraout_var_00;
  undefined3 uVar4;
  uint local_40;
  uint local_3c;
  float local_38;
  float local_34;
  uint local_30;
  float local_2c;
  float local_28;
  uint local_24;
  uint local_20;
  int local_1c;
  int local_18;
  int local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  this_01 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x11e32896;
  local_4 = param_5;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  uVar4 = extraout_var;
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&param_5,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    outKey = (uint *)((int)this + 0x40);
    if (param_5 < 3) {
      bVar1 = Stream_ReadResourceKeyTGI
                        (*(void **)((int)param_1 + 8),outKey,*(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      if (1 < param_5) {
        bVar1 = Stream_ReadResourceKeyTGI
                          (*(void **)((int)param_1 + 8),(void *)((int)this + 0x78),
                           *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
      }
    }
    else {
      ResourceReferences_ReadContextKey(param_2,param_1,outKey);
      ResourceReferences_ReadContextKey(param_2,param_1,(undefined4 *)((int)this + 0x78));
    }
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x54),
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    if (param_5 < 5) {
      *(undefined4 *)((int)this + 0x8c) = 0;
    }
    else {
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x8c),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
    }
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x3c),
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    if (3 < param_5) {
      bVar1 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),(void *)((int)this + 0x88));
      StreamReader_AccumulateStatus(param_1,bVar1);
    }
    if (5 < param_5) {
      bVar1 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),(char *)((int)this + 0x90));
      StreamReader_AccumulateStatus(param_1,bVar1);
      if (*(char *)((int)this + 0x90) != '\0') {
        bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x94),
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
        bVar1 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),(void *)((int)this + 0x98));
        StreamReader_AccumulateStatus(param_1,bVar1);
        bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x99));
        StreamReader_AccumulateStatus(param_1,bVar1);
      }
    }
    this_00 = DAT_011ee034;
    iVar2 = FUN_00c8ed80(DAT_011ee034,outKey,'\x01');
    if ((iVar2 == 0) && (iVar2 = *(int *)((int)this_00 + 0xa8), iVar2 != 0)) {
      *outKey = *(uint *)(iVar2 + 8);
      *(undefined4 *)((int)this + 0x44) = *(undefined4 *)(iVar2 + 0xc);
      *(undefined4 *)((int)this + 0x48) = *(undefined4 *)(iVar2 + 0x10);
      *(undefined4 *)((int)this + 0x4c) = *(undefined4 *)(iVar2 + 0x14);
    }
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&param_3,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    param_1 = (void *)0x0;
    if (param_3 != 0) {
      do {
        local_2c = FLOAT_00fab218;
        local_28 = FLOAT_00fab218;
        local_24 = 0;
        local_38 = FLOAT_00fab218;
        local_34 = FLOAT_00fab218;
        local_30 = 0;
        local_20 = 0;
        local_1c = 0;
        local_18 = 0;
        local_14 = 0;
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_40,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_2c,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_28,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_24,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_38,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_34,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_30,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        if (param_5 < 3) {
          bVar1 = Stream_ReadResourceKeyTGI
                            (*(void **)((int)this_01 + 8),&local_20,*(uint *)((int)this_01 + 0x10));
          StreamReader_AccumulateStatus(this_01,bVar1);
        }
        else {
          ResourceReferences_ReadContextKey(param_2,this_01,&local_20);
        }
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_3c,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        if ((((local_20 == DAT_011ed4b0) && (local_18 == DAT_011ed4b8)) &&
            (local_14 == DAT_011ed4bc)) && (local_1c == DAT_011ed4b4)) {
          local_20 = DAT_011ed4c0;
          local_1c = DAT_011ed4c4;
          local_18 = DAT_011ed4c8;
          local_14 = DAT_011ed4cc;
        }
        piVar3 = (int *)FUN_00c8ed10(this_00,&local_20,'\x01');
        if (piVar3 != (int *)0x0) {
          RoofManager_ConstructAndPublishRoof(this,&local_2c,&local_38,piVar3,local_3c,1,local_40);
        }
        param_1 = (void *)((int)param_1 + 1);
      } while (param_1 < param_3);
    }
    ResourceStreamContext_Close(this_01);
    uVar4 = extraout_var_00;
  }
  return CONCAT31(uVar4,*(undefined1 *)((int)this_01 + 0x14));
}

