/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ImportMaskLayerMap. Export ordinal(s):
   2669. Entry VA: 0x10998f30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004DC. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl WorldWrap_ImportMaskLayerMap(int param_1,wchar_t *param_2)

{
  char cVar1;
  void *this;
  undefined3 extraout_var;
  undefined4 uVar3;
  uint uVar2;
  
                    /* 0x998f30  2669  WorldWrap_ImportMaskLayerMap */
  if (*(int *)(param_1 + 0x54) == 0) {
    return param_1 & 0xffffff00;
  }
  this = (void *)FUN_106b6a50(*(int *)(param_1 + 0x54));
  uVar2 = 0;
  if (this != (void *)0x0) {
    cVar1 = FUN_101f2410(this,1,param_2,'\x01');
    uVar2 = CONCAT31(extraout_var,cVar1);
    if (cVar1 != '\0') {
      uVar3 = FUN_101f0490((int)this);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return uVar2 & 0xffffff00;
}

