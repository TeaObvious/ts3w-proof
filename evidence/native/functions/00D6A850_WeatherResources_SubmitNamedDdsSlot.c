/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* RET0C, slot/nameUTF16Z/product. Admission zero or tag2, suppresses aligned resident and bit0
   pending. Key fields instance64@0,typeB2D882@8,productGroup@C. Virtual34 gets
   key,B3D7A7,slot,0,0,D4B3A0,0,1; return ignored. Existing concrete service729D80 distinguishes
   pending, immediate pointer and failure. */

void WeatherResources_SubmitNamedDdsSlot(uint *param_1,wint_t *param_2,int param_3)

{
  int iVar1;
  ulonglong local_10;
  undefined4 local_8;
  int local_4;
  
  if (((*param_1 == 0) || ((*param_1 & 3) != 0)) && ((*param_1 & 1) == 0)) {
    iVar1 = ResourceKey_GroupFromProductWord(param_3);
    local_10 = NameHash64_Utf16Z(param_2);
    local_8 = 0xb2d882;
    if (DAT_011d4c84 != (int *)0x0) {
      local_4 = iVar1;
      (**(code **)(*DAT_011d4c84 + 0x34))
                (&local_10,0xb3d7a7,param_1,0,0,ResourceCallback_InvokeVirtual04,0,1);
    }
  }
  return;
}

