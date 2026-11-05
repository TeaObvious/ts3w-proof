/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: world position to lot location conversion used by World_GetLotLocationImpl. Calls
   world-to-local vector transform, then Lot_SelectLevelByMidpointHeight with validation flag0.
   Writes LotXZLevel output {float x at0;float z at4;signed int level at8}. Original MOV [ECX+8],EAX
   at 00adc8a9 and integer selector exits establish the level ABI; the old float selector signature
   and float output pointer were corrected in Ghidra. Stored horizontal components come from the
   transformed X/Z, while the caller separately encodes the public LotLocation bytes. */

void __cdecl Lot_WorldPositionToLocalLocation(void *param_1,float *param_2,LotXZLevel *param_3)

{
  int iVar1;
  float local_20 [2];
  float fStack_18;
  
  Lot_WorldPositionToLocalVector(param_1,param_2,local_20);
  iVar1 = Lot_SelectLevelByMidpointHeight(param_1,local_20,'\0');
  param_3->level = iVar1;
  param_3->x = local_20[0];
  param_3->z = fStack_18;
  return;
}

