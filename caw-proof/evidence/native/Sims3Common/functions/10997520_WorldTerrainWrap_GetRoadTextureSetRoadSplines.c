/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetRoadTextureSetRoadSplines.
   Export ordinal(s): 2580. Entry VA: 0x10997520. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B02. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldTerrainWrap_GetRoadTextureSetRoadSplines(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int unaff_ESI;
  undefined4 *local_10;
  undefined4 *local_c;
  
                    /* 0x997520  2580  WorldTerrainWrap_GetRoadTextureSetRoadSplines */
  FUN_10147040(*(void **)(DAT_10c700c4 + 0x5c),&local_10,param_1);
  if (((local_10 != local_c) &&
      (iVar1 = Ordinal_411(0x17,0,(int)local_c - (int)local_10 >> 2), iVar1 != 0)) &&
     (iVar2 = Ordinal_21(iVar1), -1 < iVar2)) {
    puVar3 = *(undefined4 **)(iVar1 + 0xc);
    for (; local_10 != local_c; local_10 = local_10 + 1) {
      *puVar3 = *local_10;
      puVar3 = puVar3 + 1;
    }
    Ordinal_22(iVar1);
    if (unaff_ESI != 0) {
      FUN_10918e90(unaff_ESI);
    }
    return iVar1;
  }
  if (local_10 != (undefined4 *)0x0) {
    FUN_10918e90((int)local_10);
  }
  return 0;
}

