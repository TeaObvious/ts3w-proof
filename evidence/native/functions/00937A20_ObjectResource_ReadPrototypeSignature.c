/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical3stackDWORDs and RET0C, lowALresult; inputs
   prototypekey, two-wordfirstoutput, two-wordsecondoutput. OBJD/OBJK route93A2B0 then copy
   resource+8/+C and firstkind2 key words via9361B0, release resource and returnAL1 even if
   child9361B0 saysabsent. Otherselectedresource types have zero/copy lanes. This is signature
   extraction, not Model/Tree rendering readiness. */

int ObjectResource_ReadPrototypeSignature(uint *param_1,int *param_2,uint *param_3)

{
  uint *puVar1;
  uint3 uVar3;
  uint uVar2;
  bool bVar4;
  
  puVar1 = param_1;
  uVar2 = param_1[2];
  uVar3 = (uint3)((uint)param_3 >> 8);
  if (uVar2 < 0x2da18f84) {
    if (uVar2 != 0x2da18f83) {
      if (uVar2 < 0x2dc3440) {
        if (uVar2 == 0x2dc343f) goto LAB_00937ac4;
        if (uVar2 == 0xb552ea) goto LAB_00937a9d;
        bVar4 = uVar2 == 0x1661233;
      }
      else {
        bVar4 = uVar2 == 0x3b4c61d;
      }
LAB_00937a65:
      *param_2 = 0;
      param_2[1] = 0;
      if (!bVar4) {
        *param_3 = 0;
        param_3[1] = 0;
        return (uint)uVar3 << 8;
      }
      *param_3 = *param_1;
      param_3[1] = param_1[1];
      return CONCAT31(uVar3,1);
    }
  }
  else {
    if (uVar2 == 0x319e4f1d) {
LAB_00937ac4:
      param_1 = (uint *)0x0;
      uVar2 = ObjectResource_LoadParamsForPrototypeKey(puVar1,&param_1);
      if ((char)uVar2 != '\0') {
        *param_2 = param_1[2];
        param_2[1] = param_1[3];
        uVar2 = ObjectParams_CopyFirstExpandedResourceInstance(param_1,param_3);
        if (param_1 != (uint *)0x0) {
          uVar2 = (**(code **)(*param_1 + 4))();
        }
        return CONCAT31((int3)(uVar2 >> 8),1);
      }
      if (param_1 != (uint *)0x0) {
        uVar2 = (**(code **)(*param_1 + 4))();
      }
      return uVar2 & 0xffffff00;
    }
    if (uVar2 != 0x8eaf13de) {
      bVar4 = uVar2 == 0xd3044521;
      goto LAB_00937a65;
    }
  }
LAB_00937a9d:
  *param_2 = 0;
  param_2[1] = 0;
  *param_3 = 0;
  param_3[1] = 0;
  return CONCAT31(uVar3,1);
}

