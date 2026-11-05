/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  int *piVar1;
  int iVar2;
  uint *puVar3;
  bool bVar4;
  byte bVar5;
  char cVar6;
  uint offset;
  uint uVar7;
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
  bVar4 = ResourceStreamContext_OpenWrite(arg0,&local_10,1);
  if (!bVar4) {
    return 1;
  }
  bVar5 = Stream_WriteUInt32(*(void **)(arg0 + 8),5,*(uint *)(arg0 + 0x10));
  StreamReader_AccumulateStatus(arg0,bVar5);
  offset = (**(code **)(**(int **)(arg0 + 8) + 0x24))((undefined *)*(int **)(arg0 + 8),0);
  bVar5 = Stream_WriteUInt32(*(void **)(arg0 + 8),0,*(uint *)(arg0 + 0x10));
  StreamReader_AccumulateStatus(arg0,bVar5);
  bVar5 = Stream_WriteUInt32(*(void **)(arg0 + 8),*(uint *)((int)this + 0xc),*(uint *)(arg0 + 0x10))
  ;
  StreamReader_AccumulateStatus(arg0,bVar5);
  piVar1 = *(int **)((int)this + 4);
  puVar9 = (uint *)*piVar1;
  piVar8 = piVar1;
  if (puVar9 == (uint *)0x0) {
    piVar8 = piVar1 + 1;
    iVar2 = piVar1[1];
    while (iVar2 == 0) {
      piVar8 = piVar8 + 1;
      iVar2 = *piVar8;
    }
    puVar9 = (uint *)*piVar8;
  }
  puVar3 = (uint *)piVar1[*(int *)((int)this + 8)];
  while (puVar9 != puVar3) {
    uVar7 = thunk_FUN_007d7070(arg1,puVar9,1);
    bVar5 = Stream_WriteUInt16(*(void **)(arg0 + 8),(ushort)uVar7,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar5);
    uVar7 = TextureCompositor_WriteObjectEnvelope
                      (*(int **)(arg0 + 8),(void *)puVar9[5],this_00,(int)arg1);
    if ((char)uVar7 == '\0') goto LAB_00ad2ff5;
    for (puVar9 = (uint *)puVar9[6]; puVar9 == (uint *)0x0; puVar9 = (uint *)*puVar9) {
      puVar9 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  bVar5 = Stream_WriteUInt32(*(void **)(arg0 + 8),*(uint *)((int)this + 0x2c),*(uint *)(arg0 + 0x10)
                            );
  StreamReader_AccumulateStatus(arg0,bVar5);
  piVar8 = *(int **)((int)this + 0x24);
  puVar9 = (uint *)*piVar8;
  if (puVar9 == (uint *)0x0) {
    piVar8 = piVar8 + 1;
    iVar2 = *piVar8;
    while (iVar2 == 0) {
      piVar8 = piVar8 + 1;
      iVar2 = *piVar8;
    }
    puVar9 = (uint *)*piVar8;
  }
  puVar3 = *(uint **)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4);
  while (puVar9 != puVar3) {
    uVar7 = thunk_FUN_007d7070(arg1,puVar9,1);
    bVar5 = Stream_WriteUInt16(*(void **)(arg0 + 8),(ushort)uVar7,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar5);
    cVar6 = Preset_WriteContextEnvelope(arg0,(void *)puVar9[5],arg1);
    if (cVar6 == '\0') goto LAB_00ad2ff5;
    for (puVar9 = (uint *)puVar9[6]; puVar9 == (uint *)0x0; puVar9 = (uint *)*puVar9) {
      puVar9 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  uVar7 = (**(code **)(**(int **)(arg0 + 8) + 0x24))((undefined *)*(int **)(arg0 + 8),0);
  if ((uVar7 != 0xffffffff) &&
     (bVar5 = (**(code **)(**(int **)(arg0 + 8) + 0x28))((undefined *)*(int **)(arg0 + 8),offset,0),
     bVar5 != 0)) {
    bVar5 = Stream_WriteUInt32(*(void **)(arg0 + 8),uVar7,*(uint *)(arg0 + 0x10));
    StreamReader_AccumulateStatus(arg0,bVar5);
    bVar5 = (**(code **)(**(int **)(arg0 + 8) + 0x28))((undefined *)*(int **)(arg0 + 8),uVar7,0);
    if (bVar5 != 0) goto LAB_00ad3062;
  }
  arg0[0x14] = 0;
LAB_00ad3062:
  if ((arg0[0x14] != '\0') && (cVar6 = FUN_00602d20(this_00,arg0), cVar6 != '\0')) {
    ResourceStreamContext_Close(arg0);
    return 1;
  }
LAB_00ad2ff5:
  ResourceStreamContext_Close(arg0);
  return 0;
}

