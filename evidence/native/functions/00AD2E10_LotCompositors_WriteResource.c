/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original lot compositor writer: resource type 0x0563919E, group 0, decimal version 5, offset
   backpatch, count/maps, UInt16 registered keys, actual envelope serialization and shared-data
   tail. The open-failure AL=1 quirk is preserved; no full-EAX success claim is made.
   
   Analyst note (PC1.67 SACS migration contract): ECX manager plus five physical stack words
   RET14hex. Corrected prototype includes stream context,key context,64-bit resource id low/high and
   unused fifth word. Explicit stream position/seek call ABIs remove old false unaff_EBX and
   preserve actual shared owner+44. Writeversion5/program map/preset map, UInt16context handles,
   patch shared-tail absolute offset then serialize tail. Native openfailure returnsAL1; later
   failuresAL0. Current byteappend edits preserve a supported subset, not this whole object writer.
    */

byte __thiscall
LotCompositors_WriteResource
          (void *this,undefined *arg0,undefined *arg1,uint arg2,uint arg3,uint arg4)

{
  void *this_00;
  uint *puVar1;
  int iVar2;
  bool bVar3;
  byte bVar4;
  char cVar5;
  uint offset;
  uint uVar6;
  uint *puVar7;
  int *piVar8;
  uint *puVar9;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = (void *)((int)this + 0x44);
  FUN_006072d0((int)this_00);
  local_c = arg3;
  local_10 = arg2;
  local_8 = 0x563919e;
  local_4 = 0;
  bVar3 = ResourceStreamContext_OpenWrite(arg0,&local_10,1);
  if (!bVar3) {
    return 1;
  }
  bVar4 = Stream_WriteUInt32(*(void **)(arg0 + 8),5,*(uint *)(arg0 + 0x10));
  StreamReader_AccumulateStatus(arg0,bVar4);
  offset = (**(code **)(**(int **)(arg0 + 8) + 0x24))((undefined *)*(int **)(arg0 + 8),0);
  bVar4 = Stream_WriteUInt32(*(void **)(arg0 + 8),0,*(uint *)(arg0 + 0x10));
  StreamReader_AccumulateStatus(arg0,bVar4);
  bVar4 = Stream_WriteUInt32(*(void **)(arg0 + 8),*(uint *)((int)this + 0xc),*(uint *)(arg0 + 0x10))
  ;
  StreamReader_AccumulateStatus(arg0,bVar4);
  puVar1 = *(uint **)((int)this + 4);
  puVar9 = (uint *)*puVar1;
  puVar7 = puVar1;
  if (puVar9 == (uint *)0x0) {
    puVar7 = puVar1 + 1;
    uVar6 = puVar1[1];
    while (uVar6 == 0) {
      puVar7 = puVar7 + 1;
      uVar6 = *puVar7;
    }
    puVar9 = (uint *)*puVar7;
  }
  puVar1 = (uint *)puVar1[*(int *)((int)this + 8)];
  if (puVar9 != puVar1) {
    do {
      uVar6 = ResourceReferences_RegisterKey(arg1,puVar9,1);
      bVar4 = Stream_WriteUInt16(*(void **)(arg0 + 8),(ushort)uVar6,*(uint *)(arg0 + 0x10));
      StreamReader_AccumulateStatus(arg0,bVar4);
      uVar6 = TextureCompositor_WriteObjectEnvelope
                        (*(int **)(arg0 + 8),(void *)puVar9[5],this_00,(int)arg1);
      if ((char)uVar6 == '\0') goto LAB_00ad2ff5;
      for (puVar9 = (uint *)puVar9[6]; puVar9 == (uint *)0x0; puVar9 = (uint *)*puVar9) {
        puVar9 = puVar7 + 1;
        puVar7 = puVar7 + 1;
      }
    } while (puVar9 != puVar1);
  }
  bVar4 = Stream_WriteUInt32(*(void **)(arg0 + 8),*(uint *)((int)this + 0x2c),*(uint *)(arg0 + 0x10)
                            );
  StreamReader_AccumulateStatus(arg0,bVar4);
  piVar8 = *(int **)((int)this + 0x24);
  puVar7 = (uint *)*piVar8;
  if (puVar7 == (uint *)0x0) {
    piVar8 = piVar8 + 1;
    iVar2 = *piVar8;
    while (iVar2 == 0) {
      piVar8 = piVar8 + 1;
      iVar2 = *piVar8;
    }
    puVar7 = (uint *)*piVar8;
  }
  puVar9 = *(uint **)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4);
  while (puVar7 != puVar9) {
    uVar6 = ResourceReferences_RegisterKey(arg1,puVar7,1);
    bVar4 = Stream_WriteUInt16(*(void **)(arg0 + 8),(ushort)uVar6,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar4);
    cVar5 = Preset_WriteContextEnvelope(arg0,(void *)puVar7[5],arg1);
    if (cVar5 == '\0') goto LAB_00ad2ff5;
    for (puVar7 = (uint *)puVar7[6]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
      puVar7 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  uVar6 = (**(code **)(**(int **)(arg0 + 8) + 0x24))((undefined *)*(int **)(arg0 + 8),0);
  if ((uVar6 != 0xffffffff) &&
     (bVar4 = (**(code **)(**(int **)(arg0 + 8) + 0x28))((undefined *)*(int **)(arg0 + 8),offset,0),
     bVar4 != 0)) {
    bVar4 = Stream_WriteUInt32(*(void **)(arg0 + 8),uVar6,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar4);
    bVar4 = (**(code **)(**(int **)(arg0 + 8) + 0x28))((undefined *)*(int **)(arg0 + 8),uVar6,0);
    if (bVar4 != 0) goto LAB_00ad3062;
  }
  arg0[0x14] = 0;
LAB_00ad3062:
  if ((arg0[0x14] != '\0') && (bVar4 = SavedModelSharedSteps_Write(this_00,arg0,arg1), bVar4 != 0))
  {
    ResourceStreamContext_Close(arg0);
    return 1;
  }
LAB_00ad2ff5:
  ResourceStreamContext_Close(arg0);
  return 0;
}

