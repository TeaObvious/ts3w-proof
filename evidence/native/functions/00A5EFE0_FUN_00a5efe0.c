/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. ECX swap plus two stack words type/point, RET8; only AL Boolean. Table A5F064 selects type2 ->A5E360(point,1),3 ->A5E2F0; other cases are separate owners. */

uint __thiscall FUN_00a5efe0(void *this,int param_1,float *param_2)

{
  uint uVar1;
  
  switch(param_1 - 2U) {
  case 0:
    uVar1 = FUN_00a5e360(param_2,'\x01');
    return uVar1;
  case 1:
    uVar1 = FUN_00a5e2f0(this,param_2);
    return uVar1;
  case 2:
    uVar1 = FUN_00a5e480(this,param_2);
    return uVar1;
  case 3:
    uVar1 = FUN_00a5e0b0(this,param_2);
    return uVar1;
  case 4:
    uVar1 = FUN_00a5e100(this,param_2);
    return uVar1;
  case 5:
    uVar1 = FUN_00a5e150(this,param_2);
    return uVar1;
  case 6:
    uVar1 = FUN_00a5e360(param_2,'\0');
    return uVar1;
  case 7:
    uVar1 = FUN_00a5e4f0(this,param_2);
    return uVar1;
  default:
    return param_1 - 2U & 0xffffff00;
  }
}
