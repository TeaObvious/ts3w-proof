/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall texture,size,mips,format,flags. Native cube
   creation path used when shape faces>=2 and depth<2. This does not establish all six serialized
   face-mask bits were validated. */

uint __thiscall
Texture_CreateCube(void *this,undefined4 param_1,uint param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((((param_4 & 4) == 0) || ((param_4 & 0x13) == 0)) &&
     (((param_4 & 0x10) == 0 || (param_2 < 2)))) {
    *(uint *)((int)this + 0x20) = param_4;
    *(undefined4 *)((int)this + 0x14) = param_1;
    *(undefined4 *)((int)this + 0x18) = param_1;
    *(undefined4 *)((int)this + 0x2c) = 1;
    *(undefined4 *)((int)this + 0x24) = 0;
    *(undefined4 *)((int)this + 0x28) = param_3;
    iVar1 = FUN_00619f60(this,param_2);
    *(int *)((int)this + 0x1c) = iVar1;
    param_4 = FUN_00619c80((int)this);
    if ((char)param_4 != '\0') {
      uVar2 = FUN_006146e0((int)this + 8);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return param_4 & 0xffffff00;
}

