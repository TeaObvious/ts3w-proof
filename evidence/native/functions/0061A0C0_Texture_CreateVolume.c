/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall texture,width,height,depth,mips,format,flags.
   Native volume resource creation selected before cube shape. Full limits, device rejection and
   allocation lifetime require backend/caller evidence. */

uint __thiscall
Texture_CreateVolume
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4,
          undefined4 param_5,uint param_6)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((((param_6 & 4) == 0) || ((param_6 & 0x13) == 0)) &&
     (((param_6 & 0x10) == 0 || (param_4 < 2)))) {
    *(uint *)((int)this + 0x20) = param_6;
    *(undefined4 *)((int)this + 0x14) = param_1;
    *(undefined4 *)((int)this + 0x18) = param_2;
    *(undefined4 *)((int)this + 0x2c) = 2;
    *(undefined4 *)((int)this + 0x24) = param_3;
    *(undefined4 *)((int)this + 0x28) = param_5;
    iVar1 = FUN_00619f60(this,param_4);
    *(int *)((int)this + 0x1c) = iVar1;
    param_6 = FUN_00619c80((int)this);
    if ((char)param_6 != '\0') {
      uVar2 = FUN_006146e0((int)this + 8);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return param_6 & 0xffffff00;
}

