/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Loads terrain through0x101FFBB0 with authored-collision
   mode false; the original editor raw heightmap path differs from the gameplay serialized KD
   loading wrapper. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_LoadEditableTerrainRawMode(void *this,int *param_1,uint param_2)

{
  CAW_LoadTerrainDataForMode(this,param_1,param_2,'\0');
  return;
}

