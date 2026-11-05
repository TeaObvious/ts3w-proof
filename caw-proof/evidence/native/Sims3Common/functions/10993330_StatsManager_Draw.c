/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StatsManager_Draw. Export ordinal(s): 2436. Entry
   VA: 0x10993330. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600082A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl StatsManager_Draw(float param_1,float param_2)

{
  byte *pbVar1;
  byte *local_10;
  undefined *local_c;
  undefined *local_8;
  char *local_4;
  
                    /* 0x993330  2436  StatsManager_Draw */
  local_10 = &_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "DeviceStats/columns";
  local_8 = &DAT_10ca8245;
  FUN_1000f080(&local_10,"%s %d");
  pbVar1 = local_10;
  App3D_DrawText(local_10,(int)local_c - (int)local_10,param_1,param_2);
  if ((1 < (int)local_8 - (int)pbVar1) && (pbVar1 != (byte *)0x0)) {
    FUN_10918e90((int)pbVar1);
  }
  return;
}

