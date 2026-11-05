/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetTerrainHeightAboveWater. Export
   ordinal(s): 2657. Entry VA: 0x10997c40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004E3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: WorldWrap_GetTerrainHeightAboveWater forwards all optional
   flags/output pointers as zero to0x1023EC20. The original float return is the absolute surface
   elevation in ST0; the reviewed export return type preserves it. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

float __cdecl WorldWrap_GetTerrainHeightAboveWater(void *param_1,float param_2,float param_3)

{
  float10 fVar1;
  
                    /* 0x997c40  2657  WorldWrap_GetTerrainHeightAboveWater */
  fVar1 = CAW_WorldQuerySurfaceAboveSea
                    (param_1,param_2,param_3,0,'\0','\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0,
                     (char *)0x0,(undefined1 *)0x0,'\0');
  return (float)fVar1;
}

