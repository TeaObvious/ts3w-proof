/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX placement
   tool, two stack arguments RET8. Complete original placement flow is retained. Continuation
   depends on tool bytes+1D9/+1DA: bothzero calls cleanup; otherwise D00FF0(1), virtual80 and
   CFC5A0, then continued-object checks. This proves consumption only. Producers and mapping to
   keyboard Shift/control in CFC800/CFEAB0/D02B70 remain unresolved; do not infer an input contract
   from this consumer. */

undefined4 __thiscall
ObjectPlacementTool_CompletePlacement(void *this,undefined4 param_1,float *param_2)

{
  float *pfVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  void *pvVar5;
  undefined4 uVar6;
  void *pvVar7;
  
  *(undefined4 *)((int)this + 0x1c8) = 0xffffffff;
  if (*(char *)((int)this + 0x1d1) != '\0') {
    thunk_FUN_00792320();
    *(undefined1 *)((int)this + 0x1d1) = 0;
  }
  bVar2 = false;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar4 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar4 = *(int *)((int)this + 0x60);
  }
  if (iVar4 == 0) {
    pvVar7 = (void *)0x0;
  }
  else {
    pvVar7 = *(void **)(iVar4 + 0x58);
    if (pvVar7 != (void *)0x0) {
      if (*(char *)((int)this + 0x1ce) == '\0') {
        FUN_00790350(*(undefined4 *)((int)pvVar7 + 8),*(undefined4 *)((int)pvVar7 + 0xc),
                     (undefined4 *)((int)this + 0x118));
      }
      else {
        cVar3 = (**(code **)(*(int *)this + 0x84))();
        if (cVar3 == '\0') {
          FUN_00790c50();
        }
        else {
          FUN_00cfaf80(this,pvVar7,1.4013e-45,'\0');
          if (*(char *)((int)this + 0x2f7) == '\0') {
            iVar4 = *(int *)((int)this + 0x60);
          }
          else {
            iVar4 = *(int *)((int)this + 0x5c);
          }
          if (iVar4 == 0) {
            pvVar5 = (void *)0x0;
          }
          else {
            pvVar5 = *(void **)(iVar4 + 0x58);
          }
          FUN_00cfaf80(this,pvVar5,1.4013e-45,'\0');
          FUN_00cfb5e0(this,pvVar7);
          ObjectTool_NotifyCompletedEdit(this,pvVar7);
          if ((*(char *)((int)this + 0x1d9) == '\0') && (*(char *)((int)this + 0x1da) == '\0')) {
            FUN_00ccea10();
            PayloadCleanup_NoOperation((byte *)0x0);
          }
          else {
            FUN_00ccea10();
            FUN_00d00ff0(this,'\x01');
            (**(code **)(*(int *)this + 0x80))(*(undefined4 *)((int)this + 0xe0),1);
            FUN_00cfc5a0(this,0);
            bVar2 = true;
          }
        }
      }
    }
  }
  if (*(int *)((int)this + 0x1c4) != 0) {
    FUN_00ccafe0(*(int *)((int)this + 0x1c4));
  }
  pfVar1 = (float *)((int)this + 0xb8);
  *pfVar1 = *param_2;
  *(float *)((int)this + 0xbc) = param_2[1];
  *(float *)((int)this + 0xc0) = param_2[2];
  if ((bVar2) && (uVar6 = FUN_00b032e0(pvVar7,*(int *)((int)this + 0x1b8)), (char)uVar6 != '\0')) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar4 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar4 = *(int *)((int)this + 0x60);
    }
    if (((iVar4 != 0) && (*(void **)(iVar4 + 0x58) != (void *)0x0)) &&
       (pvVar7 = Object_GetComponentByMask(*(void **)(iVar4 + 0x58),DAT_011edf08),
       pvVar7 != (void *)0x0)) {
      FUN_00c8a050(pvVar7,0,0.0,0.0,0,*(undefined4 *)((int)this + 0xe8),
                   *(undefined4 *)((int)this + 0xe0));
    }
  }
  else {
    *(undefined4 *)((int)this + 0xe8) = 0;
  }
  (**(code **)(*(int *)this + 0x98))(pfVar1,(int)this + 0xc4);
  LotLocation_EncodeCellAndQuadrant(pfVar1,(char *)((int)this + 0xb3));
  uVar6 = FUN_00cfaa70((int)this);
  *(undefined1 *)((int)this + 0x1de) = 0;
  return CONCAT31((int3)((uint)uVar6 >> 8),1);
}

