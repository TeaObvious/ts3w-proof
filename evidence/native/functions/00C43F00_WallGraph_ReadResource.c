/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst-assigned name. ECX graph;
   stream/group/instanceLow/instanceHigh four stack slots RET10, AL accumulated stream status.
   Complete312E7545 reader paired withC3F910.
   Readversion,baselevel,dimensions/auxiliary,nextvertex/section IDs,then vertexcount and16-byte
   rows(ID,floatX,floatZ,Int32level),roomcount/IDs,sectioncount and20-byte
   rows(ID,vertexA,roomA,vertexB,roomB). Section references alternate vertex/room ownership and are
   matched by storedUInt32ID, not dense vector index; missing matches become null. Array-count loop
   guards use signed positive comparisons. Graph lifecycle helpers C43D50/C439D0 run per section.
   Current44-byte compact projection and counter-as-count assumptions are not this native grammar.
   Decompiler pointer casts and UInt32 float-bit temporaries are representation artifacts; original
   stream field widths/instructions authoritative. */

byte __thiscall
WallGraph_ReadResource(void *this,void *stream,uint resourceGroup,uint lotLow,uint lotHigh)

{
  int *this_00;
  void *this_01;
  uint *puVar1;
  bool bVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  uint local_48;
  void *local_44;
  uint local_40;
  uint *local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint *local_24;
  uint local_20;
  float local_1c;
  float local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  uint local_4;
  
  this_01 = stream;
  local_10 = lotLow;
  local_c = lotHigh;
  local_8 = 0x312e7545;
  local_4 = resourceGroup;
  local_44 = this;
  bVar2 = ResourceStreamContext_OpenWrite(stream,&local_10,0);
  if (!bVar2) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_20,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)((int)this + 0x48),
                            *(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_2c,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_30,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_34,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  FUN_00c43be0(*(void **)((int)this + 0x44),local_2c,local_30,local_34);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)((int)this + 0x3c),
                            *(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)((int)this + 0x40),
                            *(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&resourceGroup,
                            *(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  this_00 = (int *)((int)this + 0xc);
  FUN_00c221f0(this_00,resourceGroup);
  if (0 < (int)resourceGroup) {
    iVar8 = 0;
    do {
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_38,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      local_1c = FLOAT_00fab218;
      local_18 = FLOAT_00fab218;
      local_14 = 0;
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_1c,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&local_18,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_14,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      pvVar3 = (void *)FUN_00c5d5d0(0x10,*(int **)((int)this + 0x60));
      if (pvVar3 == (void *)0x0) {
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_00c5d530(pvVar3,&local_1c);
      }
      *(undefined4 *)(*this_00 + iVar8 * 4) = uVar4;
      iVar7 = iVar8 * 4;
      iVar8 = iVar8 + 1;
      **(uint **)(*this_00 + iVar7) = local_38;
    } while (iVar8 < (int)resourceGroup);
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&stream,
                            *(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  puVar5 = *(undefined4 **)((int)this + 0x30);
  pvVar3 = (void *)((int)puVar5 - *(int *)((int)this + 0x2c) >> 2);
  if (pvVar3 < stream) {
    local_38 = 0;
    FUN_006e4940((void *)((int)this + 0x2c),puVar5,(int)stream - (int)pvVar3,&local_38);
  }
  else {
    pvVar3 = (void *)(*(int *)((int)this + 0x2c) + (int)stream * 4);
    memmove(pvVar3,puVar5,0);
    *(int *)((int)this + 0x30) = *(int *)((int)this + 0x30) + ((int)puVar5 - (int)pvVar3 >> 2) * -4;
  }
  iVar8 = 0;
  if (0 < (int)stream) {
    do {
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_38,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      puVar5 = (undefined4 *)FUN_00c5d5d0(0x10,*(int **)((int)this + 0x60));
      if (puVar5 == (undefined4 *)0x0) {
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_00c5d510(puVar5);
      }
      *(undefined4 *)(*(int *)((int)this + 0x2c) + iVar8 * 4) = uVar4;
      iVar7 = iVar8 * 4;
      iVar8 = iVar8 + 1;
      **(uint **)(*(int *)((int)this + 0x2c) + iVar7) = local_38;
    } while (iVar8 < (int)stream);
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&lotLow,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  puVar5 = *(undefined4 **)((int)this + 0x20);
  uVar6 = (int)puVar5 - *(int *)((int)this + 0x1c) >> 2;
  if (uVar6 < lotLow) {
    local_38 = 0;
    FUN_006e4940((void *)((int)this + 0x1c),puVar5,lotLow - uVar6,&local_38);
  }
  else {
    pvVar3 = (void *)(*(int *)((int)this + 0x1c) + lotLow * 4);
    memmove(pvVar3,puVar5,0);
    *(int *)((int)this + 0x20) = *(int *)((int)this + 0x20) + ((int)puVar5 - (int)pvVar3 >> 2) * -4;
  }
  local_38 = 0;
  if (0 < (int)lotLow) {
    do {
      uVar6 = local_38;
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_28,
                                *(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      puVar5 = (undefined4 *)FUN_00c5af20(0x44,*(int **)((int)this + 0x5c));
      if (puVar5 == (undefined4 *)0x0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        puVar5 = FUN_00c5ae40(puVar5);
      }
      *(undefined4 **)(*(int *)((int)this + 0x1c) + uVar6 * 4) = puVar5;
      local_24 = *(uint **)(*(int *)((int)this + 0x1c) + uVar6 * 4);
      *local_24 = local_28;
      local_3c = local_24 + 1;
      local_40 = 0;
      do {
        uVar6 = local_40;
        bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_48,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar2);
        puVar1 = local_24;
        uVar6 = uVar6 & 0x80000001;
        bVar2 = uVar6 == 0;
        if ((int)uVar6 < 0) {
          bVar2 = (uVar6 - 1 | 0xfffffffe) == 0xffffffff;
        }
        pvVar3 = this;
        if (bVar2) {
          iVar8 = *(int *)((int)this + 0x10) - *(int *)((int)this + 0xc) >> 2;
          iVar7 = 0;
          if (0 < iVar8) {
            puVar5 = *(undefined4 **)((int)this + 0xc);
            do {
              if (*(uint *)*puVar5 == local_48) {
                uVar6 = (*(undefined4 **)((int)this + 0xc))[iVar7];
                this = local_44;
                goto LAB_00c44338;
              }
              iVar7 = iVar7 + 1;
              puVar5 = puVar5 + 1;
              pvVar3 = local_44;
            } while (iVar7 < iVar8);
          }
        }
        else {
          iVar7 = 0;
          iVar8 = *(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 2;
          if (0 < iVar8) {
            puVar5 = *(undefined4 **)((int)this + 0x2c);
            do {
              if (*(uint *)*puVar5 == local_48) {
                uVar6 = *(uint *)(*(int *)((int)this + 0x2c) + iVar7 * 4);
                goto LAB_00c44338;
              }
              iVar7 = iVar7 + 1;
              puVar5 = puVar5 + 1;
            } while (iVar7 < iVar8);
          }
        }
        uVar6 = 0;
        this = pvVar3;
LAB_00c44338:
        local_40 = local_40 + 1;
        local_3c[2] = uVar6;
        local_3c = local_3c + 4;
      } while ((int)local_40 < 4);
      FUN_00c43d50(this,(int)local_24,'\0');
      FUN_00c439d0(this,(uint)puVar1);
      local_38 = local_38 + 1;
    } while ((int)local_38 < (int)lotLow);
  }
  ResourceStreamContext_Close(this_01);
  return *(byte *)((int)this_01 + 0x14);
}

