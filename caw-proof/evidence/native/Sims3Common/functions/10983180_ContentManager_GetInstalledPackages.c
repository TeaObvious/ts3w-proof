/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetInstalledPackages. Export
   ordinal(s): 1782. Entry VA: 0x10983180. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EF8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl ContentManager_GetInstalledPackages(undefined4 *param_1,int param_2)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  void *this;
  int iVar6;
  undefined4 local_74;
  void *local_70;
  void *local_6c;
  undefined4 local_68;
  char *local_64;
  ushort local_60 [48];
  
                    /* 0x983180  1782  ContentManager_GetInstalledPackages */
  pvVar2 = (void *)FUN_107744c0();
  if (pvVar2 == (void *)0x0) {
    return 0;
  }
  local_70 = (void *)0x0;
  local_6c = (void *)0x0;
  local_68 = 0;
  local_64 = "CSHost/GetInstalledPackages/packages";
  FUN_1077eec0(pvVar2,(uint *)&local_70);
  pvVar2 = local_6c;
  iVar4 = 0;
  this = local_70;
  if (0 < param_2) {
    do {
      if (this == pvVar2) break;
      local_74 = 0;
      FUN_10934980(this,local_60,&local_74,0x10);
      *(undefined1 *)(param_1 + 1) = *(undefined1 *)((int)this + 0x10);
      uVar3 = Ordinal_2(local_60);
      *param_1 = uVar3;
      iVar4 = iVar4 + 1;
      param_1 = param_1 + 2;
      this = (void *)((int)this + 0x30);
    } while (iVar4 < param_2);
  }
  if (local_70 < local_6c) {
    piVar5 = (int *)((int)local_70 + 0x20);
    iVar6 = (uint)((int)local_6c + (-1 - (int)local_70)) / 0x30 + 1;
    do {
      iVar1 = *piVar5;
      if ((2 < (int)(piVar5[2] - iVar1 & 0xfffffffeU)) && (iVar1 != 0)) {
        FUN_10918e90(iVar1);
      }
      piVar5 = piVar5 + 0xc;
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
  }
  if (local_70 != (void *)0x0) {
    FUN_10918e90((int)local_70);
  }
  return iVar4;
}

