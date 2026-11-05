/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 original static instructions. ECXFloorManager+7stackDWORDs RET1Chex, void. Tilepartword
   clearsbit10000000; obtains90hexbyte pooledpacket, lotGUID+8/+C, tilepart+10,
   actualmaterial/room/flags/light/support metadata thenmaskkey16bytes+60, centreFloat2+70/+74,
   yawbits+78, scaleFloat2+7C/+80, byte+87. Postsmessage0934A19E via0044C4F0server virtual1C,
   optionallyemitlower-level counterpart, releasepacketvirtual8. Eachpost
   physicallyhasECXserver+4stackDWORDs message/payload/0/0; no callerADD, unchanged laterESP+30
   pointsat originalquarter, epilogueprovescalleePurge16. Selectedcallsite overridesmodelthatABI;
   returnregister unused/undefined4, not recoveredreturnsemantics.
   Wholeothermaterial/region/lower-floor rules remain nativeproducer contract, not hostalpha-test
   parity.
   
   Callsite ABI correction: thiscall FunctionDefinition explicitly includes the ECX this formal,
   followed by FOUR stack words; omitting that formal incorrectly assigns the message value to ECX
   and corrupts subsequent decompiler stack tracking. Physical calls have message 0934A19E, packet,
   0, 0; virtual8 releases are ECX packet with no stacked argument. Registration return is low AL
   Boolean, upper EAX not part of the contract. */

void __thiscall
FloorManager_EmitCutoutSurfaceMessage
          (void *this,int *param_1,int *param_2,uint param_3,int *param_4,uint *param_5,
          undefined1 param_6,char param_7)

{
  uint *puVar1;
  bool bVar2;
  undefined1 uVar3;
  char cVar4;
  byte bVar5;
  ushort uVar6;
  undefined2 uVar7;
  undefined4 *puVar8;
  int *packet;
  byte *pbVar9;
  uint uVar10;
  undefined4 uVar11;
  int *piVar12;
  int iVar13;
  int *piVar14;
  char cStack0000001d;
  char cStack0000001e;
  undefined4 *puVar15;
  undefined4 local_8;
  void *pvStack_4;
  
  local_8 = *param_5 & 0xefffffff;
  puVar8 = FloorMessagePool_AcquireStorage();
  if (puVar8 == (undefined4 *)0x0) {
    packet = (int *)0x0;
  }
  else {
    packet = FUN_00a8b070(puVar8);
    if (packet != (int *)0x0) {
      (**(code **)(*packet + 4))();
    }
  }
  iVar13 = *(int *)((int)this + 4);
  packet[2] = *(int *)(iVar13 + 0x48);
  packet[3] = *(int *)(iVar13 + 0x4c);
  bVar2 = FloorManager_TileHasAnyRequestedFlag(this,(char *)&local_8);
  if (bVar2) {
    piVar12 = packet + 6;
    uVar6 = FUN_00a8d1c0(this,(char *)&local_8);
    FloorManager_CopyPatternKeysForCellId(this,uVar6,piVar12);
  }
  else {
    piVar12 = &DAT_011ec920;
    piVar14 = packet + 6;
    for (iVar13 = 0x10; iVar13 != 0; iVar13 = iVar13 + -1) {
      *piVar14 = *piVar12;
      piVar12 = piVar12 + 1;
      piVar14 = piVar14 + 1;
    }
  }
  FUN_00a911c0(this,(byte *)(packet + 6),(undefined2 *)(packet + 0x16));
  pbVar9 = ByteTileGrid_CellPointer
                     (*(void **)((int)this + 0x30),(int)(char)local_8,(int)local_8._1_1_,
                      (int)local_8._2_1_ - *(int *)((int)this + 0x10));
  *(byte *)((int)packet + 0x5a) = *pbVar9;
  puVar1 = (uint *)(packet + 4);
  *puVar1 = local_8;
  if ((((packet[6] == DAT_011ec8d0) && (packet[8] == DAT_011ec8d8)) && (packet[9] == DAT_011ec8dc))
     && (packet[7] == DAT_011ec8d4)) {
    cVar4 = '\0';
  }
  else {
    cVar4 = '\x01';
  }
  uVar10 = FUN_00a934a0(this,(char *)&local_8,cVar4);
  *(char *)((int)packet + 0x5b) = (char)uVar10;
  pvStack_4 = *(void **)(*(int *)((int)this + 4) + 0x298);
  uVar7 = FUN_00b470e0(pvStack_4,(char *)param_5,0,'\0');
  *(undefined2 *)((int)packet + 0x5e) = uVar7;
  uVar11 = FUN_00ad1380(*(void **)((int)this + 4),(char *)puVar1);
  *(char *)((int)packet + 0x86) = (char)uVar11;
  packet[0x18] = *param_1;
  packet[0x19] = param_1[1];
  packet[0x1a] = param_1[2];
  packet[0x1b] = param_1[3];
  packet[0x1c] = *param_2;
  packet[0x1d] = param_2[1];
  packet[0x1e] = param_3;
  packet[0x1f] = *param_4;
  packet[0x20] = param_4[1];
  *(undefined1 *)((int)packet + 0x87) = param_6;
  if ((~*(byte *)((int)packet + 0x13) & 0x10) == 0) {
LAB_00a99e13:
    uVar3 = 0;
  }
  else {
    uVar11 = Lot_TestCellSupportRegionType
                       (*(void **)((int)this + 4),(char *)puVar1,'\x01',(undefined1 *)0x0);
    if ((char)uVar11 == '\0') goto LAB_00a99e13;
    uVar3 = 1;
  }
  *(undefined1 *)(packet + 0x17) = uVar3;
  uVar11 = TestPlatformRegion(*(void **)((int)this + 4),(char *)&local_8,'\0');
  *(char *)(packet + 0x21) = (char)uVar11;
  uVar3 = FUN_00ab3a00(*(void **)((int)this + 4),(char *)puVar1);
  *(undefined1 *)(packet + 0x22) = uVar3;
  if (param_7 == '\0') {
    cVar4 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)&local_8,1,(undefined1 *)0x0);
    param_6 = 1;
    if (cVar4 != '\0') goto LAB_00a99e6a;
  }
  param_6 = 0;
LAB_00a99e6a:
  *(undefined1 *)((int)packet + 0x85) = param_6;
  piVar12 = (int *)MessageDispatch_GetCurrent();
  (**(code **)(*piVar12 + 0x1c))(piVar12,0x934a19e,packet,0,0);
  cVar4 = *(char *)((int)param_5 + 2);
  if ((cVar4 != '\0') && (*(int *)((int)this + 0x10) < (int)cVar4)) {
    FUN_00a98060(this,(int)cVar4);
    if (*(int *)((int)this + 0x48) != 0) {
      puVar8 = FloorMessagePool_AcquireStorage();
      if (puVar8 == (undefined4 *)0x0) {
        puVar8 = (undefined4 *)0x0;
      }
      else {
        puVar8 = FUN_00a8b070(puVar8);
      }
      iVar13 = *(int *)((int)this + 4);
      _param_7 = *param_5 | 0x10000000;
      puVar8[2] = *(undefined4 *)(iVar13 + 0x48);
      puVar15 = puVar8 + 6;
      puVar8[3] = *(undefined4 *)(iVar13 + 0x4c);
      uVar6 = FUN_00a8d1c0(this,&param_7);
      FloorManager_CopyPatternKeysForCellId(this,uVar6,puVar15);
      FUN_00a911c0(this,(byte *)(puVar8 + 6),(undefined2 *)(puVar8 + 0x16));
      if (*(int *)((int)this + 0x48) == 0) {
        bVar5 = 0;
      }
      else {
        pbVar9 = ByteTileGrid_CellPointer
                           (*(void **)((int)this + 0x4c),(int)param_7,(int)cStack0000001d,
                            (int)cStack0000001e - *(int *)((int)this + 0x10));
        bVar5 = *pbVar9;
      }
      *(byte *)((int)puVar8 + 0x5a) = bVar5;
      puVar8[4] = _param_7;
      *(char *)((int)puVar8 + 0x5b) = (char)uVar10;
      uVar7 = FUN_00b470e0(pvStack_4,&param_7,0,'\0');
      *(undefined2 *)((int)puVar8 + 0x5e) = uVar7;
      uVar11 = FUN_00ad1380(*(void **)((int)this + 4),(char *)(packet + 4));
      *(char *)((int)packet + 0x86) = (char)uVar11;
      puVar8[0x18] = *param_1;
      puVar8[0x19] = param_1[1];
      puVar8[0x1a] = param_1[2];
      puVar8[0x1b] = param_1[3];
      puVar8[0x1c] = *param_2;
      puVar8[0x1d] = param_2[1];
      puVar8[0x1e] = param_3;
      puVar8[0x1f] = *param_4;
      puVar8[0x20] = param_4[1];
      *(undefined1 *)((int)puVar8 + 0x85) = param_6;
      (**(code **)(*piVar12 + 0x1c))(piVar12,0x934a19e,puVar8,0,0);
    }
  }
  (**(code **)(*packet + 8))();
  return;
}

