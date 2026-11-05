/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 original static instructions. ECX manager plus3stackDWORDs/RET0C: room ID lowInt16,
   response, lowbyte flag. Signed byte levels and quarter mask1/2/4/8. Appends20byte room record
   then eligible packed4byte tile parts, removes empty record. Eligibility tests floor/room/ground
   special conditions, NOT every room quarter. Children and shape enumeration order retain separate
   contracts. */

void __thiscall
CeilingManager_CollectRoomTileParts(void *this,uint param_1,int param_2,char param_3)

{
  undefined4 *this_00;
  int *piVar1;
  void *pvVar2;
  byte bVar3;
  bool bVar4;
  short sVar5;
  uint uVar6;
  byte bVar7;
  void *pvVar8;
  int iVar9;
  ushort local_40;
  char local_3e;
  byte local_3d;
  ushort local_3c;
  char local_3a;
  byte local_39;
  undefined2 local_38;
  char local_36;
  void *local_34;
  void *local_30;
  int *local_2c;
  int local_28;
  int local_24;
  void *local_20;
  ushort local_1c;
  char cStack_1a;
  undefined4 uStack_19;
  undefined4 local_14;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  uVar6 = param_1;
  local_34 = *(void **)(*(int *)((int)this + 0x18) + 0x298);
  local_30 = (void *)FUN_00b470c0(local_34,param_1,0);
  iVar9 = param_2;
  if (local_30 == (void *)0x0) {
    return;
  }
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  this_00 = *(undefined4 **)(param_2 + 0x14);
  pvVar8 = (void *)(param_2 + 0x10);
  local_4 = "Lot/LotMessageData/tCeilingMsgData/tRoomData";
  local_20 = pvVar8;
  if (this_00 < *(undefined4 **)(param_2 + 0x18)) {
    *(undefined4 **)(param_2 + 0x14) = this_00 + 5;
    if (this_00 != (undefined4 *)0x0) {
      FUN_00a48e60(this_00,&local_14);
    }
  }
  else {
    FUN_00a48fc0(pvVar8,this_00,&local_14);
  }
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  pvVar2 = local_34;
  local_2c = (int *)(*(int *)(iVar9 + 0x14) + -0x14);
  *local_2c = (int)(short)uVar6;
  iVar9 = *(int *)((int)this + 0x18);
  if (*(int *)(iVar9 + 0x2e8) != 0) {
    param_1 = uVar6 & 0xffff;
    FUN_00ae43c0((void *)((int)local_34 + 0x174),(undefined4 *)&local_1c,(short *)&param_1);
    param_1 = CONCAT31(param_1._1_3_,1);
    if (CONCAT13((undefined1)uStack_19,CONCAT12(cStack_1a,local_1c)) !=
        *(int *)(*(int *)((int)pvVar2 + 0x178) + *(int *)((int)pvVar2 + 0x17c) * 4))
    goto LAB_00a491e0;
  }
  param_1 = param_1 & 0xffffff00;
LAB_00a491e0:
  local_28 = *(int *)(iVar9 + 0x180);
  local_40 = 0xffff;
  local_3e = '\0';
  local_3d = 0xff;
  bVar3 = SpanShape_BeginLocationEnumeration(local_30,(char *)&local_40);
  do {
    if (bVar3 == 0) {
      if (local_2c[1] == local_2c[2]) {
        *(int *)((int)pvVar8 + 4) = *(int *)((int)pvVar8 + 4) + -0x14;
        pvVar8 = *(void **)(*(int *)((int)pvVar8 + 4) + 4);
        if (pvVar8 != (void *)0x0) {
          Memory_FreeIfNonNull(pvVar8);
        }
      }
      return;
    }
    local_3a = local_3e + '\x01';
    local_3c = local_40;
    local_39 = local_3d;
    if (local_3a <= local_28) {
      uVar6 = (uint)param_2 >> 8;
      param_2 = CONCAT31((int3)uVar6,local_3a == '\0');
      bVar3 = 0;
      iVar9 = 4;
      do {
        bVar7 = '\x01' << (bVar3 & 0x1f);
        if ((local_39 & bVar7) != 0) {
          local_38 = local_40;
          local_1c = local_3c;
          uStack_19 = CONCAT31(uStack_19._1_3_,bVar7);
          local_36 = local_3e;
          cStack_1a = local_3a;
          uVar6 = FUN_00ad01d0(*(int *)((int)this + 0x18),(char *)&local_1c,'\0','\0');
          if (((char)uVar6 == '\0') &&
             (((char)param_2 == '\0' ||
              (uVar6 = FUN_00a8e170(*(void **)(*(int *)((int)this + 0x18) + 0x290),&local_1c,
                                    (byte)uStack_19,1), (char)uVar6 == '\0')))) {
            if (local_3e < -1) {
              bVar4 = LotBasement_TestAnyRequestedPart
                                (*(void **)((int)this + 0x18),(char *)&local_3c);
            }
            else {
              if (local_3e != '\0') goto LAB_00a4936c;
              bVar4 = (char)param_1 == '\0';
            }
LAB_00a492f5:
            if (bVar4) goto LAB_00a4936c;
          }
          else if (param_3 != '\0') {
            sVar5 = FUN_00b470e0(local_34,(char *)&local_1c,0,'\0');
            bVar4 = sVar5 == 0;
            goto LAB_00a492f5;
          }
          local_24 = ((local_36 * 0x100 + (int)(char)bVar7) * 0x100 + (int)local_38._1_1_) * 0x100 +
                     (int)(char)local_38;
          piVar1 = (int *)local_2c[2];
          if (piVar1 < (int *)local_2c[3]) {
            local_2c[2] = (int)(piVar1 + 1);
            if (piVar1 != (int *)0x0) {
              *piVar1 = local_24;
            }
          }
          else {
            FUN_00982420(local_2c + 1,piVar1,&local_24);
          }
        }
LAB_00a4936c:
        bVar3 = bVar3 + 1;
        iVar9 = iVar9 + -1;
      } while (iVar9 != 0);
      pvVar8 = local_20;
    }
    bVar3 = SpanShape_NextLocation(local_30,(char *)&local_40);
  } while( true );
}

