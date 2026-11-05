/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall texture,width,height,mips,format,flags. Stores
   dimensions/format/flags and calls native backend creation; flag200 forces one mip, otherwise
   selected mip helper. AL Boolean only. Native resource/backend lifetime is distinct from source
   DDS bytes. */

uint __thiscall
Texture_Create2D(void *this,undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4,
                uint param_5)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((((param_5 & 4) == 0) || ((param_5 & 0x13) == 0)) &&
     (((param_5 & 0x10) == 0 || (param_3 < 2)))) {
    *(undefined4 *)((int)this + 0x14) = param_1;
    *(undefined4 *)((int)this + 0x2c) = 0;
    *(undefined4 *)((int)this + 0x24) = 0;
    *(undefined4 *)((int)this + 0x18) = param_2;
    *(uint *)((int)this + 0x20) = param_5;
    *(undefined4 *)((int)this + 0x28) = param_4;
    if ((param_5 & 0x200) == 0) {
      iVar1 = FUN_00619f60(this,param_3);
      *(int *)((int)this + 0x1c) = iVar1;
    }
    else {
      *(undefined4 *)((int)this + 0x1c) = 1;
    }
    param_5 = FUN_00619c80((int)this);
    if ((char)param_5 != '\0') {
      uVar2 = FUN_006146e0((int)this + 8);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return param_5 & 0xffffff00;
}

