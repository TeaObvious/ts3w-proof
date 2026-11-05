/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool plus two signed pointer-coordinate stack DWORDs, RET8. Calls CD4470 with
   pointer coordinates, requires pick type6 and B95F10 eligibility for a new roof; adjusts old/new
   highlights and hover5C. Failed pick or unpitchable hit can retain native hover, while successful
   non-roof pick clears it. Full current ray/pick geometry parity is not inferred. */

void __thiscall RoofPitch_UpdateHoveredRoof(void *this,int param_1,int param_2)

{
  uint *puVar1;
  void *this_00;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 local_78 [2];
  float local_70 [3];
  float local_64;
  float local_60;
  undefined4 local_5c;
  undefined1 local_58;
  undefined1 local_57;
  undefined1 local_56;
  undefined1 local_55;
  undefined1 local_54;
  undefined1 local_53;
  undefined1 local_52;
  undefined1 local_51;
  undefined1 local_50;
  undefined1 local_4f;
  undefined4 *local_30;
  uint local_2c;
  
  this_00 = (void *)(*(int **)((int)this + 0xc))[0xab];
  if (this_00 != (void *)0x0) {
    local_5c = 0;
    local_56 = 0;
    local_52 = 0;
    local_4f = 0;
    local_30 = (undefined4 *)0x0;
    local_64 = FLOAT_00fab218;
    local_60 = FLOAT_00fab218;
    local_58 = 0xff;
    local_57 = 0xff;
    local_55 = 0xff;
    local_54 = 0xff;
    local_53 = 0xff;
    local_51 = 0xff;
    local_50 = 0xff;
    uVar3 = FUN_00cd4470(this,*(int **)((int)this + 0xc),param_1,param_2,local_70,'\0','\0',0);
    if ((char)uVar3 != '\0') {
      puVar1 = (uint *)((int)this + 0x5c);
      if (local_70[0] == 8.40779e-45) {
        if (local_2c != *puVar1) {
          uVar3 = FUN_00b95f10(this_00,local_2c);
          if ((char)uVar3 != '\0') {
            iVar2 = *(int *)(*(int *)((int)this + 0x3c) + *(int *)((int)this + 0x40) * 4);
            piVar4 = (int *)FUN_008b26c0((void *)((int)this + 0x38),local_78,puVar1);
            if (*piVar4 == iVar2) {
              FUN_00d0ea80(this,*puVar1,0);
            }
            FUN_00d0ea80(this,local_2c,1);
            *puVar1 = local_2c;
          }
        }
      }
      else if (*puVar1 != 0xffffffff) {
        iVar2 = *(int *)(*(int *)((int)this + 0x3c) + *(int *)((int)this + 0x40) * 4);
        piVar4 = (int *)FUN_008b26c0((void *)((int)this + 0x38),local_78,puVar1);
        if (*piVar4 == iVar2) {
          FUN_00d0ea80(this,*puVar1,0);
        }
        *puVar1 = 0xffffffff;
      }
    }
    if (local_30 != (undefined4 *)0x0) {
      piVar4 = local_30 + 1;
      LOCK();
      iVar2 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        if (local_30 != (undefined4 *)0x0) {
          (**(code **)*local_30)(1);
        }
      }
    }
  }
  return;
}

