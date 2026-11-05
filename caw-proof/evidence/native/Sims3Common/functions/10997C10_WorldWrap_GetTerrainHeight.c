/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetTerrainHeight. Export ordinal(s):
   2656. Entry VA: 0x10997c10. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004E1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: WorldWrap_GetTerrainHeight forwards to the bounded original
   world-height query0x1023E930. Out-of-world behavior belongs to that worker and is not a border
   clamp. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

float __cdecl WorldWrap_GetTerrainHeight(void *param_1,float param_2,float param_3)

{
  float10 fVar1;
  
                    /* 0x997c10  2656  WorldWrap_GetTerrainHeight */
  fVar1 = CAW_WorldQueryTerrainHeight
                    (param_1,param_2,param_3,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0,'\0',
                     '\0');
  return (float)fVar1;
}

