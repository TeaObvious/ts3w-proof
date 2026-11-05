/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetSaveGameList. Export ordinal(s):
   2650. Entry VA: 0x1099a5c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004FA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl WorldWrap_GetSaveGameList(int param_1)

{
  bool bVar1;
  short *psVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int *local_10;
  int *local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x99a5c0  2650  WorldWrap_GetSaveGameList */
  uVar7 = 0;
  if (param_1 == 0) {
    return 0;
  }
  psVar2 = (short *)FUN_10a55410(param_1);
  iVar3 = FUN_1006ee60();
  if ((psVar2 != (short *)0x0) && (iVar3 != 0)) {
    local_10 = (int *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "World/WorldWrap";
    bVar1 = FUN_10074190(psVar2,&local_10);
    if ((bVar1) && (local_10 != local_c)) {
      uVar6 = (int)local_c - (int)local_10 >> 4;
      iVar3 = Ordinal_411(8,0,uVar6);
      if ((iVar3 != 0) && (iVar4 = Ordinal_21(iVar3), -1 < iVar4)) {
        iVar4 = *(int *)(iVar3 + 0xc);
        if (uVar6 != 0) {
          iVar8 = 0;
          do {
            uVar5 = Ordinal_2(*(undefined4 *)(iVar8 + (int)local_10));
            *(undefined4 *)(iVar4 + uVar7 * 4) = uVar5;
            uVar7 = uVar7 + 1;
            iVar8 = iVar8 + 0x10;
          } while (uVar7 < uVar6);
        }
        Ordinal_22(iVar3);
        FUN_102aebe0((int *)&stack0xffffffec);
        return iVar3;
      }
    }
    FUN_10530b00(local_10,local_c);
    if (local_10 != (int *)0x0) {
      FUN_10918e90((int)local_10);
    }
  }
  return 0;
}

