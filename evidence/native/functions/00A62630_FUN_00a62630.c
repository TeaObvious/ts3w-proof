/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. cdecl type/point/outPreset three stack words/plainRET, AL only. Real table A626E8 maps2 floor mode1,3 wall; wall call physically forwards output pointer omitted by stored wall C. Other type dispatches are distinct. */

uint __cdecl FUN_00a62630(int param_1,float *param_2,int *param_3)

{
  undefined1 uVar1;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  uint uVar2;
  
  switch(param_1 - 2U) {
  case 0:
    uVar2 = FUN_00a61890(param_2,'\x01',param_3);
    return uVar2;
  case 1:
    uVar1 = FUN_00a619e0(param_2);
    return CONCAT31(extraout_var,uVar1);
  case 2:
    uVar1 = FUN_00a61af0(param_2);
    return CONCAT31(extraout_var_00,uVar1);
  case 3:
    uVar2 = FUN_00a61d60(param_2);
    return uVar2;
  case 4:
    uVar2 = FUN_00a61e00(param_2);
    return uVar2;
  case 5:
    uVar2 = FUN_00a62520(param_2);
    return uVar2;
  case 6:
    uVar2 = FUN_00a61890(param_2,'\0',param_3);
    return uVar2;
  case 7:
    uVar2 = FUN_00a61c50(param_2,param_3);
    return uVar2;
  default:
    return param_1 - 2U & 0xffffff00;
  }
}
