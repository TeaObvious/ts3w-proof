/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool and two pointer-coordinate stack DWORDs, RET8. Calls base CCE7F0, stores second
   word as pressY64. Multi59 toggles hover5C in selected map then clears hover5C toFFFFFFFF in
   either outcome. Does not reset acceptedY68. Empty-target selection/framing child remains
   separately scoped. */

void __thiscall RoofPitch_Press(void *this,undefined4 param_1,undefined4 param_2)

{
  void *this_00;
  uint *puVar1;
  int iVar2;
  float *pfVar3;
  int *piVar4;
  undefined4 local_dc [3];
  undefined1 local_d0 [64];
  undefined1 local_90 [140];
  
  UserTool_MarkPressed((int)this);
  if ((*(int *)((int)this + 0x44) == 0) && (*(int *)((int)this + 0x5c) == -1)) {
    iVar2 = FUN_00cceb20();
    if ((iVar2 != 0) && (*(int *)(iVar2 + 0x298) != 0)) {
      FUN_00ad7740((int)local_90);
      pfVar3 = (float *)FUN_00ad6770(local_d0,200,(undefined4 *)(iVar2 + 0x280));
      FUN_00ad8570(local_90,pfVar3);
      FUN_00ad70d0((int)local_d0);
      FUN_00cd3890(local_90,1,'\x01');
      FUN_00a52ad0((int)local_90);
    }
  }
  else {
    FUN_00ccea10();
  }
  *(undefined4 *)((int)this + 100) = param_2;
  if (*(char *)((int)this + 0x59) != '\0') {
    iVar2 = *(int *)(*(int *)((int)this + 0x3c) + *(int *)((int)this + 0x40) * 4);
    this_00 = (void *)((int)this + 0x38);
    puVar1 = (uint *)((int)this + 0x5c);
    piVar4 = (int *)FUN_008b26c0(this_00,local_dc,puVar1);
    if (*piVar4 == iVar2) {
      FUN_006b5bc0(this_00,local_dc,puVar1);
    }
    else {
      FUN_006a5ad0(this_00,puVar1);
      FUN_00d0ea80(this,*puVar1,0);
    }
    *puVar1 = 0xffffffff;
  }
  UserTool_MarkPressed((int)this);
  return;
}

