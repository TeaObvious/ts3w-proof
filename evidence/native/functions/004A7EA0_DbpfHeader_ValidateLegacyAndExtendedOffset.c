/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 header validator: provisional
   magic46504244,unsignedmajor<=2,count<07FFFFFF,newLow@64<extent,uint32(indexSize@44+newLow)<=extent,indexVersion@60!=0.
   Then if(newLow|newHigh)!=0 AND legacy@40!=0, return(newLow==legacy AND newHigh==0) OVERRIDING
   provisional result, even false. Physical unsigned arithmetic may wrap; do not silently normalize
   unusual legacy consistency override. ECX provider, headerptr RET4; meaningful AL. */

undefined1 __thiscall DbpfHeader_ValidateLegacyAndExtendedOffset(void *this,int *param_1)

{
  uint uVar1;
  undefined1 uVar2;
  
  uVar2 = 0;
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x2a0),(uint *)&DAT_00fb3508);
  if (*(int *)((int)this + 0x264) == 0) {
    uVar1 = (**(code **)(**(int **)((int)this + 0x260) + 0x1c))();
  }
  else {
    uVar1 = *(uint *)((int)this + 0x268);
  }
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x2a0));
  if (((((*param_1 == 0x46504244) && ((uint)param_1[1] < 3)) && ((uint)param_1[9] < 0x7ffffff)) &&
      (((uint)param_1[0x10] < uVar1 && ((uint)(param_1[0xb] + param_1[0x10]) <= uVar1)))) &&
     (param_1[0xf] != 0)) {
    uVar2 = 1;
  }
  if ((param_1[0x10] != 0 || param_1[0x11] != 0) && (param_1[10] != 0)) {
    if ((param_1[0x10] == param_1[10]) && (param_1[0x11] == 0)) {
      return 1;
    }
    return 0;
  }
  return uVar2;
}

