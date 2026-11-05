/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 source walker request. Attaches retained bridge callback to the selected walker via
   0x00801150. Current-state fast path can immediately pump callbacks when selected origin equals
   requested state and force flag 0x100 is absent. Earlier duplicate branches attach without
   universal eager pump; pathfinder failure does not attach. Ordinary request interrupt flag 0x1
   clears queued requests but does not force-clear callback list +0x58. Raw proof:
   /home/lego/WorldTool/build/ts3w-proof-20261012/sacs/raw/source-request-8029e0.objdump.txt;
   /home/lego/WorldTool/build/ts3w-proof-20261012/sacs/raw/source-request-current-state-fastpath.objdump.txt;
   reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __thiscall
SACS_RequestWalkerState_8029e0(void *this,char *param_1,uint param_2,uint param_3,int *param_4)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  char *pcVar6;
  undefined4 uVar7;
  byte bVar8;
  uint uVar9;
  uint uVar10;
  char *this_00;
  undefined1 local_4c [8];
  undefined1 local_44 [8];
  undefined4 *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int local_2c [2];
  undefined4 *local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 *local_14;
  
  uVar2 = param_2;
  this_00 = param_1;
  if (*(char *)((int)this + 0x145) != '\0') {
    FUN_00802640(this,"Request ignored because driver is in error condition.");
    return;
  }
  if (param_2 == 0) {
    return;
  }
  if (param_1 == (char *)0x0) {
    return;
  }
  if ((*(int *)(param_1 + 0x10) == 0) && (*(int *)(param_1 + 0x1c) == 0)) {
    return;
  }
  if (((*(char *)((int)this + 0x3c) != '\0') && (*(char *)(param_2 + 0x4c) != '\0')) &&
     (param_1 != *(char **)((int)this + 0x40))) {
    FUN_007ffd30(local_4c,*(undefined4 *)((int)this + 0xc));
    param_1 = "SACS/RequestSyncronizedPathfinder";
    FUN_007fa760(local_2c,&param_1);
    bVar8 = 1;
    uVar2 = SacsPaths_EnumerateTowardState(local_2c,*(uint *)(this_00 + 0x10),uVar2,1,0,0);
    if ((char)uVar2 == '\0') {
LAB_00802af3:
      this_00 = *(char **)((int)this + 0x40);
    }
    else {
      local_38 = local_20;
      local_3c = local_24;
      local_34 = local_1c;
      local_30 = local_18;
      do {
        if (local_3c == local_14) {
          if (bVar8 != 0) goto LAB_00802af3;
          break;
        }
        for (piVar5 = (int *)*local_3c; (bVar8 != 0 && (piVar5 != (int *)local_3c[1]));
            piVar5 = piVar5 + 1) {
          bVar8 = bVar8 & *(byte *)(*piVar5 + 0x4c);
        }
        FUN_007ffe50((int *)&local_3c);
      } while (bVar8 != 0);
    }
    FUN_007fa7a0(local_2c);
  }
  uVar2 = param_3;
  param_1 = (char *)0x0;
  if (*(char *)((int)this + 0x3c) == '\0') {
    uVar9 = *(uint *)(this_00 + 0x18);
  }
  else {
    uVar9 = *(uint *)(*(int *)((int)this + 0x40) + 0x18);
  }
  if ((param_2 == uVar9) && (*(int *)(this_00 + 0x24) == 0)) {
    SACS_AttachWalkerCallback_801150(this_00,param_4);
    goto LAB_00802d53;
  }
  if ((-1 < (char)param_3) && (param_2 == *(uint *)(this_00 + 0x24))) {
    SACS_AttachWalkerCallback_801150(this_00,param_4);
    goto LAB_00802d53;
  }
  iVar3 = (int)(param_3 + ((int)param_3 >> 0x1f & 0xfffU)) >> 0xc;
  if (iVar3 != 0) {
    *(int *)((int)this + 0x38) = iVar3;
  }
  iVar3 = FUN_00800cd0(this_00,&local_3c);
  uVar10 = *(uint *)(iVar3 + 4);
  if (((uVar2 & 1) == 0) && (uVar10 != 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (uVar9 == 0) {
    if (!bVar1) goto LAB_00802bb4;
LAB_00802bab:
    uVar10 = *(uint *)(this_00 + 0x10);
    bVar1 = true;
  }
  else {
    if (bVar1) {
      if (*(char *)(uVar9 + 0x4e) == '\0') goto LAB_00802bab;
      uVar10 = uVar9;
      if (uVar9 == *(uint *)(this_00 + 0x10)) {
        uVar10 = *(uint *)(this_00 + 0x10);
        bVar1 = true;
        goto LAB_00802bb6;
      }
    }
LAB_00802bb4:
    bVar1 = false;
  }
LAB_00802bb6:
  if (uVar10 == 0) {
    uVar10 = *(uint *)(this_00 + 0x10);
    bVar1 = true;
    if (uVar10 == 0) {
      uVar10 = *(uint *)(this_00 + 0x1c);
    }
  }
  if ((*(char *)((int)this + 0x3c) != '\0') && (this_00 != *(char **)((int)this + 0x40))) {
    bVar1 = false;
  }
  pcVar6 = param_1;
  if (uVar10 != 0) {
    if (((param_3 & 0x100) == 0) && (uVar10 == param_2)) {
      SACS_AttachWalkerCallback_801150(this_00,param_4);
      SACS_PumpWalkerCallbacks_800640((int)this_00);
      puVar4 = FUN_007427b0();
      if (puVar4 == (undefined4 *)0x0) {
        piVar5 = (int *)0x0;
      }
      else {
        piVar5 = (int *)FUN_008004c0(puVar4,3,*(undefined4 *)(param_2 + 0x28));
      }
      SACS_AdmitFilteredEvent(this,piVar5);
      puVar4 = FUN_007427b0();
      if (puVar4 == (undefined4 *)0x0) {
        SACS_AdmitFilteredEvent(this,(int *)0x0);
      }
      else {
        piVar5 = (int *)FUN_008004c0(puVar4,5,*(undefined4 *)
                                               (*(int *)(*(int *)(this_00 + 8) + 0x20) + 0x2c));
        SACS_AdmitFilteredEvent(this,piVar5);
      }
      goto LAB_00802d53;
    }
    FUN_007ffd30(local_44,*(undefined4 *)((int)this + 0xc));
    pcVar6 = (char *)FUN_007fc950(local_44,uVar10,param_2,param_3,1,0,0);
    if (pcVar6 == (char *)0x0) goto LAB_00802d53;
    if (!bVar1) {
      param_1 = (char *)0x0;
      pcVar6 = param_1;
    }
  }
  if ((uVar2 & 1) != 0) {
    FUN_008005e0((int)this_00);
    this_00[0x24] = '\0';
    this_00[0x25] = '\0';
    this_00[0x26] = '\0';
    this_00[0x27] = '\0';
    this_00[0x20] = '@';
    this_00[0x21] = '\0';
    this_00[0x22] = '\0';
    this_00[0x23] = '\0';
  }
  SACS_AttachWalkerCallback_801150(this_00,param_4);
  if (*(int *)(this_00 + 0x24) == 0) {
    SacsDriver_AbandonRetainedGraph(this,(uint)this_00);
  }
  if ((param_3 & 0x800) != 0) {
    param_3 = param_3 & 0xfffff7ff;
    uVar7 = FUN_007fff40((int)this_00);
    if ((char)uVar7 != '\0') {
      param_3 = param_3 | 2;
    }
  }
  uVar2 = param_2;
  SacsWalker_QueueOrInstallRequest(this_00,param_3,param_2);
  if (((bVar1) && (*(uint *)(this_00 + 0x24) == uVar2)) &&
     (SacsDriver_ReplacePendingWalkerState(this,this_00,(int)pcVar6),
     *(int *)(this_00 + 0x10) == *(int *)(this_00 + 0x18))) {
    this_00[0x18] = '\0';
    this_00[0x19] = '\0';
    this_00[0x1a] = '\0';
    this_00[0x1b] = '\0';
    SacsWalker_PropagateDirtyState(this_00,'\0');
  }
LAB_00802d53:
  if (this_00 != (char *)0x0) {
    FUN_00802190(this,*(uint *)(this_00 + 0x10),*(int *)(this_00 + 0x24));
  }
  return;
}

