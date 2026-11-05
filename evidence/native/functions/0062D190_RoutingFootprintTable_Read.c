/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX routing owner;
   five stack slots RET 0x14:stream,Int32* relativeSectionSize,restorePosition low
   byte,lotOwner,lotDataVersion. Reset old table, save position, optional relative seek; read
   subversion only for lotDataVersion>=2, otherwise 1. Install reserved references 1/2 from lotOwner
   +0x84/+0x88. Read UInt32 count then UInt32 index and UInt32 tag per row; unsigned index>count
   fails, equality allowed by this guard. Tags 1..11 factory dispatch via 44-byte original jump
   table 62D70C; unknown fails. virtual +A0(stream,routingOwner,index,subversion) returnsAL;
   serializer subversion <2 invokes compatibility +68. Resolve pending type 1/2 references through
   +A4 after payloads; missing object/resolution fails. Optional seek restore uses original start.
   No bytewise lot-ID resync; no transactional rollback. Inferred aliases/unaff registers do not
   override actual instructions. */

byte __thiscall
RoutingFootprintTable_Read
          (void *this,void *stream,int *relativeSectionSize,byte restorePosition,void *lotOwner,
          uint lotDataVersion)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  void *pvVar4;
  undefined4 *puVar5;
  int *piVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  int unaff_retaddr;
  int **ppiVar10;
  byte bStack_85;
  int *piStack_84;
  uint uStack_80;
  int *piStack_7c;
  uint uStack_78;
  uint uStack_74;
  uint uStack_70;
  uint local_6c;
  void *local_68;
  int aiStack_64 [2];
  int local_5c;
  int *piStack_58;
  undefined4 uStack_54;
  
  local_68 = this;
  FUN_0062cce0(this,'\x01');
  local_5c = StreamContext_GetPositionAndMarkNegative(stream);
  if (*relativeSectionSize != 0) {
    StreamContext_SeekWithSignedAbsoluteGuard(stream,*relativeSectionSize,1);
  }
  if (*(char *)((int)stream + 0x14) == '\0') {
    return 0;
  }
  local_6c = 1;
  if (1 < lotDataVersion) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_6c,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
  }
  piVar6 = *(int **)((int)lotOwner + 0x84);
  if (piVar6 != (int *)0x0) {
    (**(code **)(*piVar6 + 0x90))();
    ppiVar10 = &piStack_58;
    uStack_54 = 0;
    uStack_80 = 1;
    piStack_58 = piVar6;
    pvVar4 = (void *)FUN_0062a0f0(*(void **)((int)this + 0x98),&uStack_80);
    FUN_00626bb0(pvVar4,(int *)ppiVar10);
    (**(code **)(*piVar6 + 0x94))();
  }
  piVar6 = *(int **)((int)lotOwner + 0x88);
  if (piVar6 != (int *)0x0) {
    (**(code **)(*piVar6 + 0x90))();
    ppiVar10 = &piStack_58;
    uStack_54 = 0;
    uStack_80 = 2;
    piStack_58 = piVar6;
    pvVar4 = (void *)FUN_0062a0f0(*(void **)((int)this + 0x98),&uStack_80);
    FUN_00626bb0(pvVar4,(int *)ppiVar10);
    (**(code **)(*piVar6 + 0x94))();
  }
  bStack_85 = 1;
  uStack_70 = 0;
  bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&uStack_70,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  uStack_74 = 0;
  while (uStack_74 < uStack_70) {
    uStack_78 = 0;
    bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&uStack_78,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    if (uStack_70 < uStack_78) {
      bStack_85 = 0;
    }
    else {
      uStack_80 = 0;
      bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&uStack_80,*(uint *)((int)stream + 0x10)
                               );
      StreamReader_AccumulateStatus(stream,bVar2);
      piStack_84 = (int *)0x0;
      switch(uStack_80) {
      case 1:
        puVar5 = FUN_00806e60();
        if (puVar5 == (undefined4 *)0x0) {
LAB_0062d509:
          piVar6 = (int *)0x0;
        }
        else {
          piVar6 = (int *)FUN_006269b0(puVar5);
        }
        break;
      case 2:
        pvVar4 = (void *)FUN_004e4500(0x40,"Routing/PolygonFootprint",0);
        if (pvVar4 == (void *)0x0) goto LAB_0062d509;
        piVar6 = FUN_0080eb50(pvVar4,1,1);
        break;
      case 3:
        pvVar4 = (void *)FUN_004e4500(0x40,"Routing/PolygonFootprintWithRoutingOverride",0);
        if (pvVar4 == (void *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624c10(pvVar4,1);
        break;
      case 4:
        puVar5 = (undefined4 *)FUN_004e4500(0x44,"Routing/ObjectFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624ca0(puVar5);
        break;
      case 5:
        puVar5 = (undefined4 *)FUN_004e4500(0x44,"Routing/DiscourageFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624cc0(puVar5);
        break;
      case 6:
        puVar5 = (undefined4 *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00625890(puVar5);
        break;
      case 7:
        puVar5 = (undefined4 *)FUN_004e4500(0x4c,"Routing/LotFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00621200(puVar5);
        break;
      case 8:
        pvVar4 = (void *)FUN_004e4500(0x40,"Routing/PolygonFootprintWithWeakRouting",0);
        if (pvVar4 == (void *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624c70(pvVar4,1);
        break;
      case 9:
        puVar5 = (undefined4 *)FUN_004e4500(0x44,"Routing/TerrainFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624cf0(puVar5);
        break;
      case 10:
        puVar5 = (undefined4 *)FUN_004e4500(0x48,"Routing/LotWallFootprint",0);
        if (puVar5 == (undefined4 *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00625900(puVar5);
        break;
      case 0xb:
        pvVar4 = (void *)FUN_004e4500(0x48,"Routing/PrivateFootprint",0);
        if (pvVar4 == (void *)0x0) goto LAB_0062d509;
        piVar6 = FUN_00624d30(pvVar4,1);
        break;
      default:
        bStack_85 = 0;
        goto LAB_0062d5ff;
      }
      FUN_006250f0(&piStack_84,piVar6);
      if (bStack_85 == 0) {
        if (piStack_84 != (int *)0x0) {
          (**(code **)(*piStack_84 + 0x94))();
        }
        break;
      }
      pvVar4 = *(void **)((int)this + 0x98);
      FUN_00628890(pvVar4,aiStack_64,&uStack_78);
      if (aiStack_64[0] == *(int *)(*(int *)((int)pvVar4 + 4) + *(int *)((int)pvVar4 + 8) * 4)) {
        piStack_58 = (int *)0x0;
        FUN_00626010(&piStack_58,(int *)&piStack_84);
        ppiVar10 = &piStack_58;
        uStack_54 = 0;
        pvVar4 = (void *)FUN_0062a0f0(*(void **)((int)this + 0x98),&uStack_78);
        FUN_00626bb0(pvVar4,(int *)ppiVar10);
        if (piStack_58 != (int *)0x0) {
          (**(code **)(*piStack_58 + 0x94))();
        }
      }
      piVar6 = piStack_84;
      (**(code **)(*piStack_84 + 0xa0))(stream,this,uStack_78,local_6c);
      if (piStack_7c < 2) {
        (**(code **)(*piVar6 + 0x68))(unaff_retaddr + 0xa0);
      }
      (**(code **)(*piVar6 + 0x94))();
    }
    uStack_74 = uStack_74 + 1;
    if (bStack_85 == 0) break;
  }
LAB_0062d5ff:
  iVar1 = *(int *)((int)this + 0x98);
  piStack_7c = *(int **)(iVar1 + 4);
  iVar8 = *piStack_7c;
  if (iVar8 == 0) {
    piVar6 = piStack_7c + 1;
    piStack_7c = piStack_7c + 1;
    iVar8 = *piVar6;
    while (iVar8 == 0) {
      piStack_7c = piStack_7c + 1;
      iVar8 = *piStack_7c;
    }
    iVar8 = *piStack_7c;
  }
  aiStack_64[0] = *(int *)(*(int *)(iVar1 + 4) + *(int *)(iVar1 + 8) * 4);
  piVar6 = piStack_7c;
  do {
    if ((bStack_85 == 0) || (iVar8 == aiStack_64[0])) {
      if (restorePosition != 0) {
        StreamContext_SeekWithSignedAbsoluteGuard(stream,local_5c,0);
      }
      return bStack_85;
    }
    if (*(int *)(iVar8 + 4) == 0) {
      return 0;
    }
    uVar7 = 0;
    if (bStack_85 != 0) {
      piVar9 = (int *)(iVar8 + 0xc);
      do {
        if (*(uint *)(iVar8 + 8) <= uVar7) break;
        if (*piVar9 - 1U < 2) {
          if (bStack_85 != 0) {
            cVar3 = (**(code **)(**(int **)(iVar8 + 4) + 0xa4))(local_68,*piVar9,piVar9[1]);
            bStack_85 = 1;
            piVar6 = piStack_7c;
            if (cVar3 != '\0') goto LAB_0062d6a1;
          }
          bStack_85 = 0;
        }
LAB_0062d6a1:
        uVar7 = uVar7 + 1;
        piVar9 = piVar9 + 2;
      } while (bStack_85 != 0);
    }
    iVar8 = *(int *)(iVar8 + 0x5c);
    while (iVar8 == 0) {
      piVar9 = piVar6 + 1;
      piVar6 = piVar6 + 1;
      piStack_7c = piVar6;
      iVar8 = *piVar9;
    }
  } while( true );
}

