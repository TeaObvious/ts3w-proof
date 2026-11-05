/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name. Trigger callback reached via primary gameplay-camera vtable+5C;
   controller+14 must be enabled. Record+4 is trigger, +10/+14 logical mouse coordinates, +18 input
   source. Event kind5ECE0000 is active/down. Original normal trigger resources bind
   mouse_button_middle to02541005 and continuous mouse_move to0254000E. Source2 selects input bank1,
   source1 bank2, source4 bank0. Ghidra's switch/function argument types are inferred; original
   instruction branches govern. */

void __thiscall MainCamera_HandleInputTrigger(void *this,int param_1,int param_2)

{
  uint uVar1;
  char cVar2;
  void *pvVar3;
  int iVar4;
  bool bVar5;
  float10 fVar6;
  float local_28;
  float local_24;
  float local_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;

  if (*(char *)((int)this + 0x14) != '\0') {
    local_28 = *(float *)(param_2 + 0x10);
    if (param_1 != 0x5ece0000) {
      local_28 = 0.0;
    }
    cVar2 = *(char *)(param_2 + 0x18);
    bVar5 = cVar2 == '\x02';
    iVar4 = 0;
    if (cVar2 == '\x01') {
      iVar4 = (int)this + 0x240;
    }
    else if (cVar2 == '\x04') {
      iVar4 = (int)this + 0x40;
    }
    else if (bVar5) {
      iVar4 = (int)this + 0x140;
    }
    uVar1 = *(uint *)(param_2 + 4);
    if (uVar1 < 0x2541001) {
      if (uVar1 == 0x2541000) {
        if (_DAT_00f9b5b4 < local_28) {
          local_28 = DAT_00f998f8;
          FUN_00962500((void *)((int)this + 0x40),DAT_00f998f8);
          return;
        }
        local_28 = 0.0;
        FUN_00962500((void *)((int)this + 0x40),0.0);
        return;
      }
      switch(uVar1) {
      case 0x2540000:
        local_20 = *(float *)(iVar4 + 0x70);
        fStack_1c = *(float *)(iVar4 + 0x74);
        uStack_18 = *(undefined4 *)(iVar4 + 0x78);
        uStack_14 = *(undefined4 *)(iVar4 + 0x7c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x70) = local_20;
        *(float *)(iVar4 + 0x74) = fStack_1c;
        *(float *)(iVar4 + 0x78) = (float)fVar6;
        *(undefined4 *)(iVar4 + 0x7c) = uStack_14;
        return;
      case 0x2540001:
        local_20 = *(float *)(iVar4 + 0x40);
        fStack_1c = *(float *)(iVar4 + 0x44);
        uStack_18 = *(undefined4 *)(iVar4 + 0x48);
        uStack_14 = *(undefined4 *)(iVar4 + 0x4c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x40) = local_20;
        *(float *)(iVar4 + 0x44) = fStack_1c;
        *(float *)(iVar4 + 0x48) = (float)-fVar6;
        *(undefined4 *)(iVar4 + 0x4c) = uStack_14;
        return;
      case 0x2540002:
        local_20 = *(float *)(iVar4 + 0x40);
        fStack_1c = *(float *)(iVar4 + 0x44);
        uStack_18 = *(undefined4 *)(iVar4 + 0x48);
        uStack_14 = *(undefined4 *)(iVar4 + 0x4c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x40) = (float)-fVar6;
        *(float *)(iVar4 + 0x44) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x48) = uStack_18;
        *(undefined4 *)(iVar4 + 0x4c) = uStack_14;
        return;
      case 0x2540003:
        local_20 = *(float *)(iVar4 + 0x70);
        fStack_1c = *(float *)(iVar4 + 0x74);
        uStack_18 = *(undefined4 *)(iVar4 + 0x78);
        uStack_14 = *(undefined4 *)(iVar4 + 0x7c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x70) = (float)fVar6;
        *(float *)(iVar4 + 0x74) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x78) = uStack_18;
        *(undefined4 *)(iVar4 + 0x7c) = uStack_14;
        return;
      case 0x2540004:
        local_20 = *(float *)(iVar4 + 0x70);
        fStack_1c = *(float *)(iVar4 + 0x74);
        uStack_18 = *(undefined4 *)(iVar4 + 0x78);
        uStack_14 = *(undefined4 *)(iVar4 + 0x7c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x70) = local_20;
        *(float *)(iVar4 + 0x74) = (float)fVar6;
        *(undefined4 *)(iVar4 + 0x78) = uStack_18;
        *(undefined4 *)(iVar4 + 0x7c) = uStack_14;
        return;
      case 0x2540005:
        local_20 = *(float *)(iVar4 + 0x40);
        fStack_1c = *(float *)(iVar4 + 0x44);
        uStack_18 = *(undefined4 *)(iVar4 + 0x48);
        uStack_14 = *(undefined4 *)(iVar4 + 0x4c);
        fVar6 = FUN_00965c00(local_28,(int)cVar2);
        *(float *)(iVar4 + 0x40) = local_20;
        *(float *)(iVar4 + 0x44) = (float)-fVar6;
        *(undefined4 *)(iVar4 + 0x48) = uStack_18;
        *(undefined4 *)(iVar4 + 0x4c) = uStack_14;
        return;
      case 0x2540006:
        local_20 = *(float *)(iVar4 + 0x50);
        fStack_1c = *(float *)(iVar4 + 0x54);
        uStack_18 = *(undefined4 *)(iVar4 + 0x58);
        uStack_14 = *(undefined4 *)(iVar4 + 0x5c);
        fVar6 = FUN_00965d00(local_28,(int)cVar2);
        fStack_1c = (float)-fVar6;
        *(float *)(iVar4 + 0x50) = local_20;
        *(float *)(iVar4 + 0x54) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x58) = uStack_18;
        *(undefined4 *)(iVar4 + 0x5c) = uStack_14;
        FUN_00792880(2);
        return;
      case 0x2540007:
        local_20 = *(float *)(iVar4 + 0x80);
        fStack_1c = *(float *)(iVar4 + 0x84);
        uStack_18 = *(undefined4 *)(iVar4 + 0x88);
        uStack_14 = *(undefined4 *)(iVar4 + 0x8c);
        fVar6 = FUN_00965d00(local_28,(int)cVar2);
        fStack_1c = (float)fVar6;
        *(float *)(iVar4 + 0x80) = local_20;
        *(float *)(iVar4 + 0x84) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x88) = uStack_18;
        *(undefined4 *)(iVar4 + 0x8c) = uStack_14;
        FUN_00792880(2);
        return;
      case 0x2540008:
        local_20 = *(float *)(iVar4 + 0x80);
        fStack_1c = *(float *)(iVar4 + 0x84);
        uStack_18 = *(undefined4 *)(iVar4 + 0x88);
        uStack_14 = *(undefined4 *)(iVar4 + 0x8c);
        fVar6 = FUN_00965d00(local_28,(int)cVar2);
        local_20 = (float)fVar6;
        *(float *)(iVar4 + 0x80) = local_20;
        *(float *)(iVar4 + 0x84) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x88) = uStack_18;
        *(undefined4 *)(iVar4 + 0x8c) = uStack_14;
        FUN_00792880(1);
        return;
      case 0x2540009:
        local_20 = *(float *)(iVar4 + 0x50);
        fStack_1c = *(float *)(iVar4 + 0x54);
        uStack_18 = *(undefined4 *)(iVar4 + 0x58);
        uStack_14 = *(undefined4 *)(iVar4 + 0x5c);
        fVar6 = FUN_00965d00(local_28,(int)cVar2);
        local_20 = (float)-fVar6;
        *(float *)(iVar4 + 0x50) = local_20;
        *(float *)(iVar4 + 0x54) = fStack_1c;
        *(undefined4 *)(iVar4 + 0x58) = uStack_18;
        *(undefined4 *)(iVar4 + 0x5c) = uStack_14;
        FUN_00792880(1);
        return;
      case 0x254000a:
        if (bVar5) {
          *(float *)(iVar4 + 0xf0) = local_28 * DAT_00fe92f8 + *(float *)(iVar4 + 0xf0);
          FUN_00792880(3);
          return;
        }
        *(float *)(iVar4 + 0x90) = local_28;
        FUN_00792880(3);
        return;
      case 0x254000b:
        if (bVar5) {
          *(float *)(iVar4 + 0xc0) = *(float *)(iVar4 + 0xc0) - local_28 * DAT_00fe92f8;
          FUN_00792880(3);
          return;
        }
        *(float *)(iVar4 + 0x60) = DAT_00f998f0 - local_28;
        FUN_00792880(3);
        return;
      case 0x254000c:
        goto switchD_009748a0_caseD_254000c;
      default:
        goto switchD_009748a0_caseD_254000d;
      case 0x254000e:
                    /* Mouse-move trigger0254000E reads captured logical anchor. Under capture,
                       queue anchor-minus-event warp compensation and store current=anchor;
                       uncaptured input uses event coordinates directly. */
        cVar2 = InputService_GetCapturedMouseAnchor(&local_28);
        if (cVar2 != '\0') {
          CameraInput_QueueWarpCompensation
                    ((void *)((int)this + 0x40),local_28 - *(float *)(param_2 + 0x10),
                     local_24 - *(float *)(param_2 + 0x14));
          CameraInput_SetCurrentMouse((void *)((int)this + 0x40),local_28,local_24);
          return;
        }
        CameraInput_SetCurrentMouse
                  ((void *)((int)this + 0x40),*(undefined4 *)(param_2 + 0x10),
                   *(undefined4 *)(param_2 + 0x14));
        return;
      }
    }
    switch(uVar1) {
    case 0x2541001:
switchD_009748a0_caseD_254000c:
      if (param_1 == 0x5ece0000) {
        (**(code **)(*(int *)this + 0x20))();
        return;
      }
      break;
    case 0x2541003:
      FUN_00962640((void *)((int)this + 0x40),param_1 == 0x5ece0000);
      return;
    case 0x2541005:
                    /* Original trigger02541005 transition: message kind5ECE0000 -> rotation mask2
                       on; all other kinds off. Both transitions reseed anchor/previous. Subsequent
                       call captures at current point on press or releases on release. */
      CameraInput_SetRotationDrag((void *)((int)this + 0x40),param_1 == 0x5ece0000);
      if (param_1 == 0x5ece0000) {
        InputService_SetMouseCapture('\x01','\x01');
        return;
      }
      InputService_SetMouseCapture('\0','\0');
      FUN_00792880(2);
      return;
    case 0x2541006:
      local_28 = (float)CONCAT31(local_28._1_3_,param_1 == 0x5ece0000);
      FUN_009626c0((void *)((int)this + 0x40),param_1 == 0x5ece0000);
      FUN_00599050(SUB41(local_28,0));
      return;
    case 0x2541008:
      if ((((param_1 == 0x5ece0000) && (*(char *)((int)this + 0x8b6) == '\0')) &&
          (*(char *)((int)this + 0x8b7) == '\0')) &&
         ((*(char *)((int)this + 0x8bb) == '\0' && (*(char *)((int)this + 0x8bc) == '\0')))) {
        FUN_00973db0((int)this);
        iVar4 = FUN_00969bd0();
        pvVar3 = (void *)FUN_00f21ff0(iVar4);
        FUN_0096b1b0(pvVar3);
      }
    }
  }
switchD_009748a0_caseD_254000d:
  return;
}

