/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX controller plus evaluation inputs/output.
   Retained clip+3B8 yields codec; when evaluation input+54 has bit2, call00588B40 with pose,
   stored+3C0 seconds, optional bone-map and+3C8 mirror. Native thumbnail supplied seconds0/mirror0.
   Separate root motion helper00588B90 guarded by clip/input bits; otherwise reset root delta
   vectors and identity quaternion. Full root-motion transport is distinct from sampling local
   authored translations. */

void __thiscall ClipPoseController_SampleNativePose(void *this,int param_1,void *param_2)

{
  float fVar1;
  void *this_00;
  int *piVar2;
  float fVar3;
  
  fVar3 = *(float *)((int)this + 0x3c4);
  if (fVar3 < DAT_010f4ccc) {
    fVar3 = *(float *)(param_1 + 0x50);
  }
  if (*(int *)((int)this + 0x3b8) != 0) {
    this_00 = (void *)FUN_0057aa60(*(int *)((int)this + 0x3b8));
    if ((*(byte *)(param_1 + 0x54) & 2) != 0) {
      piVar2 = FUN_0057b0f0(*(void **)((int)this + 0x3b8),*(int *)((int)param_2 + 0x30));
      ClipCodec_SampleByVersion
                (this_00,param_2,*(float *)((int)this + 0x3c0),(int)piVar2,
                 *(char *)((int)this + 0x3c8));
    }
    fVar1 = FLOAT_00f998f8;
    if (((*(byte *)(*(int *)(*(int *)((int)this + 0x3b8) + 0x4c) + 0x1c) & 2) != 0) &&
       ((*(byte *)(param_1 + 0x54) & 1) != 0)) {
      FUN_00588b90(this_00,(int)param_2,*(float *)((int)this + 0x3c0),fVar3,
                   *(char *)((int)this + 0x3c8));
      *(float *)((int)param_2 + 0x48) = FLOAT_00f998f8;
      return;
    }
    *(undefined4 *)((int)param_2 + 0x10) = 0;
    *(undefined4 *)((int)param_2 + 0x14) = 0;
    *(undefined4 *)((int)param_2 + 0x18) = 0;
    *(undefined4 *)((int)param_2 + 0x1c) = 0;
    *(undefined4 *)((int)param_2 + 0x20) = 0;
    *(undefined4 *)((int)param_2 + 0x24) = 0;
    *(undefined4 *)((int)param_2 + 0x28) = 0;
    *(float *)((int)param_2 + 0x2c) = fVar1;
    *(float *)((int)param_2 + 0x48) = fVar1;
  }
  return;
}

