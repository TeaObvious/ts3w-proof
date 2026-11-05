/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_KeyExistsInDB. Export
   ordinal(s): 1053. Entry VA: 0x1056b260. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600036E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

byte ThumbnailManager_KeyExistsInDB(void)

{
  void *this;
  byte bVar1;
  int *piVar2;
  int in_stack_00000014;
  int in_stack_00000018;
  int in_stack_0000001c;
  undefined4 in_stack_00000020;
  int in_stack_00000024;
  undefined1 in_stack_00000028;
  undefined4 local_140 [4];
  int local_130 [4];
  int local_120;
  int local_a0;
  int local_90;
  
                    /* 0x56b260  1053  ThumbnailManager_KeyExistsInDB */
  this = DAT_10c71150;
  if (DAT_10c71150 == (void *)0x0) {
    return 0;
  }
  piVar2 = (int *)FUN_1055dbb0(&stack0x00000004,local_140);
  FUN_100ff920(local_130,*piVar2,piVar2[1],piVar2[2],piVar2[3],in_stack_00000014,in_stack_00000018,
               in_stack_0000001c,in_stack_00000020,0,0,in_stack_00000024,in_stack_00000028,
               -0x1e3d8329,0,0);
  bVar1 = FUN_10326ac0(this,local_130);
  if ((local_a0 != 0) && (local_a0 != local_90)) {
    FUN_10918e90(local_a0);
  }
  if ((local_130[0] != 0) && (local_130[0] != local_120)) {
    FUN_10918e90(local_130[0]);
  }
  return bVar1;
}

