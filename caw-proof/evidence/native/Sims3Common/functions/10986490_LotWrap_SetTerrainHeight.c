/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_SetTerrainHeight. Export ordinal(s):
   1929. Entry VA: 0x10986490. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A88. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl LotWrap_SetTerrainHeight(void *param_1,float param_2,uint param_3,int param_4)

{
  undefined4 uVar1;
  
                    /* 0x986490  1929  LotWrap_SetTerrainHeight */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10076630(param_1,param_2,param_3,param_4,'\x01','\x01');
    return (char)uVar1 != '\0';
  }
  return false;
}

