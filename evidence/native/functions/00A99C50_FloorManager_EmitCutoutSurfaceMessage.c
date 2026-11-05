/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined1 uVar2;
  char cVar3;
  ushort uVar4;
  undefined2 uVar5;
  undefined4 *puVar6;
  int *packet;
  int iVar7;
  undefined1 *puVar8;
  uint uVar9;
  undefined4 uVar10;
  int *piVar11;
  int *piVar12;
  char cStack0000001d;
  char cStack0000001e;
  undefined4 *puVar13;
  undefined4 local_8;
  void *pvStack_4;
  
  local_8 = *param_5 & 0xefffffff;
  puVar6 = FloorMessagePool_AcquireStorage();
  if (puVar6 == (undefined4 *)0x0) {
    packet = (int *)0x0;
  }
  else {
    packet = FUN_00a8b070(puVar6);
    if (packet != (int *)0x0) {
      (**(code **)(*packet + 4))();
    }
  }
  iVar7 = *(int *)((int)this + 4);
  packet[2] = *(int *)(iVar7 + 0x48);
  packet[3] = *(int *)(iVar7 + 0x4c);
  iVar7 = FUN_00a8cb10(this,(char *)&local_8);
  if ((char)iVar7 == '\0') {
    piVar11 = &DAT_011ec920;
    piVar12 = packet + 6;
    for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
      *piVar12 = *piVar11;
      piVar11 = piVar11 + 1;
      piVar12 = piVar12 + 1;
    }
  }
  else {
    piVar11 = packet + 6;
    uVar4 = FUN_00a8d1c0(this,(char *)&local_8);
    FUN_00a8ee40(this,uVar4,piVar11);
  }
  FUN_00a911c0(this,(byte *)(packet + 6),(undefined2 *)(packet + 0x16));
  puVar8 = (undefined1 *)
           FUN_00a8b3b0(*(void **)((int)this + 0x30),(int)(char)local_8,(int)local_8._1_1_,
                        (int)local_8._2_1_ - *(int *)((int)this + 0x10));
  *(undefined1 *)((int)packet + 0x5a) = *puVar8;
  puVar1 = (uint *)(packet + 4);
  *puVar1 = local_8;
  if ((((packet[6] == DAT_011ec8d0) && (packet[8] == DAT_011ec8d8)) && (packet[9] == DAT_011ec8dc))
     && (packet[7] == DAT_011ec8d4)) {
    cVar3 = '\0';
  }
  else {
    cVar3 = '\x01';
  }
  uVar9 = FUN_00a934a0(this,(char *)&local_8,cVar3);
  *(char *)((int)packet + 0x5b) = (char)uVar9;
  pvStack_4 = *(void **)(*(int *)((int)this + 4) + 0x298);
  uVar5 = FUN_00b470e0(pvStack_4,(char *)param_5,0,'\0');
  *(undefined2 *)((int)packet + 0x5e) = uVar5;
  uVar10 = FUN_00ad1380(*(void **)((int)this + 4),(char *)puVar1);
  *(char *)((int)packet + 0x86) = (char)uVar10;
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
    uVar2 = 0;
  }
  else {
    uVar10 = Lot_TestCellSupportRegionType
                       (*(void **)((int)this + 4),(char *)puVar1,'\x01',(undefined1 *)0x0);
    if ((char)uVar10 == '\0') goto LAB_00a99e13;
    uVar2 = 1;
  }
  *(undefined1 *)(packet + 0x17) = uVar2;
  uVar10 = FUN_00afed60(*(void **)((int)this + 4),(char *)&local_8,'\0');
  *(char *)(packet + 0x21) = (char)uVar10;
  uVar2 = FUN_00ab3a00(*(void **)((int)this + 4),(char *)puVar1);
  *(undefined1 *)(packet + 0x22) = uVar2;
  if (param_7 == '\0') {
    cVar3 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)&local_8,1,(undefined1 *)0x0);
    param_6 = 1;
    if (cVar3 != '\0') goto LAB_00a99e6a;
  }
  param_6 = 0;
LAB_00a99e6a:
  *(undefined1 *)((int)packet + 0x85) = param_6;
  piVar11 = (int *)MessageDispatch_GetCurrent();
  (**(code **)(*piVar11 + 0x1c))(piVar11,0x934a19e,packet,0,0);
  cVar3 = *(char *)((int)param_5 + 2);
  if ((cVar3 != '\0') && (*(int *)((int)this + 0x10) < (int)cVar3)) {
    FUN_00a98060(this,(int)cVar3);
    if (*(int *)((int)this + 0x48) != 0) {
      puVar6 = FloorMessagePool_AcquireStorage();
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        puVar6 = FUN_00a8b070(puVar6);
      }
      iVar7 = *(int *)((int)this + 4);
      _param_7 = *param_5 | 0x10000000;
      puVar6[2] = *(undefined4 *)(iVar7 + 0x48);
      puVar13 = puVar6 + 6;
      puVar6[3] = *(undefined4 *)(iVar7 + 0x4c);
      uVar4 = FUN_00a8d1c0(this,&param_7);
      FUN_00a8ee40(this,uVar4,puVar13);
      FUN_00a911c0(this,(byte *)(puVar6 + 6),(undefined2 *)(puVar6 + 0x16));
      if (*(int *)((int)this + 0x48) == 0) {
        uVar2 = 0;
      }
      else {
        puVar8 = (undefined1 *)
                 FUN_00a8b3b0(*(void **)((int)this + 0x4c),(int)param_7,(int)cStack0000001d,
                              (int)cStack0000001e - *(int *)((int)this + 0x10));
        uVar2 = *puVar8;
      }
      *(undefined1 *)((int)puVar6 + 0x5a) = uVar2;
      puVar6[4] = _param_7;
      *(char *)((int)puVar6 + 0x5b) = (char)uVar9;
      uVar5 = FUN_00b470e0(pvStack_4,&param_7,0,'\0');
      *(undefined2 *)((int)puVar6 + 0x5e) = uVar5;
      uVar10 = FUN_00ad1380(*(void **)((int)this + 4),(char *)(packet + 4));
      *(char *)((int)packet + 0x86) = (char)uVar10;
      puVar6[0x18] = *param_1;
      puVar6[0x19] = param_1[1];
      puVar6[0x1a] = param_1[2];
      puVar6[0x1b] = param_1[3];
      puVar6[0x1c] = *param_2;
      puVar6[0x1d] = param_2[1];
      puVar6[0x1e] = param_3;
      puVar6[0x1f] = *param_4;
      puVar6[0x20] = param_4[1];
      *(undefined1 *)((int)puVar6 + 0x85) = param_6;
      (**(code **)(*piVar11 + 0x1c))(piVar11,0x934a19e,puVar6,0,0);
    }
  }
  (**(code **)(*packet + 8))();
  return;
}

