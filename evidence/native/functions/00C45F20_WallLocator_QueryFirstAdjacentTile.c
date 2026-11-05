/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl two pointers. Signed endpoint bytes are expanded to
   temporary float/signed-level records; C45B00 then C45C50 select one adjacent tile.
   Direction/diagonal semantics live in those children; unit axis-aligned side formula is only a
   selected profile. */

void __cdecl WallLocator_QueryFirstAdjacentTile(char *param_1,undefined2 *param_2)

{
  char local_24 [4];
  undefined4 local_20;
  undefined4 local_1c;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
  local_24[0] = -1;
  local_24[1] = 0xff;
  local_24[2] = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = (float)(int)param_1[3];
  local_10 = (int)param_1[5];
  local_14 = (float)(int)param_1[4];
  local_c = (float)(int)*param_1;
  local_4 = (int)param_1[2];
  local_8 = (float)(int)param_1[1];
  FUN_00c45b00(&local_c,&local_18,local_24);
  FUN_00c45c50((undefined2 *)local_24,param_2);
  return;
}

