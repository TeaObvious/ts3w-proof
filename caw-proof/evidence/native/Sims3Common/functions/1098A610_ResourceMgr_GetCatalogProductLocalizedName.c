/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetCatalogProductLocalizedName.
   Export ordinal(s): 2023. Entry VA: 0x1098a610. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008AC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ResourceMgr_GetCatalogProductLocalizedName(undefined4 *param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  int *unaff_ESI;
  undefined *puStack_38;
  undefined *puStack_34;
  undefined2 *puStack_30;
  char *pcStack_2c;
  undefined4 uStack_28;
  undefined4 local_24 [5];
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a610  2023  ResourceMgr_GetCatalogProductLocalizedName */
  uStack_28 = 0x1098a618;
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 != (int *)0x0) {
    local_10 = param_1[2];
    local_c = param_1[3];
    uStack_28 = 0;
    local_8 = *param_1;
    local_4 = param_1[1];
    pcStack_2c = (char *)0x0;
    puStack_30 = (undefined2 *)0x0;
    puStack_34 = (undefined *)0x0;
    local_24[0] = 0;
    puStack_38 = (undefined *)local_24;
    cVar1 = (**(code **)(*piVar2 + 0xc))();
    if (cVar1 != '\0') {
      if (&local_10 == (int *)0x0) {
        return 0;
      }
      this = (void *)(**(code **)(local_10 + 0xc))(0x519e4f25);
      if (this != (void *)0x0) {
        puStack_38 = &_Dst_10ca8244;
        puStack_34 = &_Dst_10ca8244;
        pcStack_2c = "Scratch/ResourceMgrWrap/localizedName";
        puStack_30 = &DAT_10ca8246;
        uVar3 = FUN_10269ee0(this,(int *)&puStack_38);
        if ((char)uVar3 != '\0') {
          uVar3 = Ordinal_2(puStack_38);
          if ((2 < (int)((int)puStack_34 - (int)&local_10 & 0xfffffffeU)) &&
             (&local_10 != (int *)0x0)) {
            FUN_10918e90((int)&local_10);
          }
          if (unaff_ESI != (int *)0x0) {
            (**(code **)(*unaff_ESI + 4))();
          }
          return uVar3;
        }
        if ((2 < (int)((int)puStack_30 - (int)puStack_38 & 0xfffffffeU)) &&
           (puStack_38 != (undefined *)0x0)) {
          FUN_10918e90((int)puStack_38);
        }
      }
    }
    if (&local_10 != (int *)0x0) {
      (**(code **)(local_10 + 4))();
    }
  }
  return 0;
}

