/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_InvalidateThumbnail. Export
   ordinal(s): 1051. Entry VA: 0x1056b320. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000379. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ThumbnailManager_InvalidateThumbnail(char param_1)

{
  void *this;
  int *piVar1;
  undefined4 uVar2;
  int in_stack_00000018;
  int in_stack_0000001c;
  int in_stack_00000020;
  undefined4 in_stack_00000024;
  int in_stack_00000028;
  undefined1 in_stack_0000002c;
  undefined4 local_140 [4];
  int local_130 [4];
  int local_120;
  int local_a0;
  int local_90;
  
                    /* 0x56b320  1051  ThumbnailManager_InvalidateThumbnail */
  this = DAT_10c71150;
  if (DAT_10c71150 != (void *)0x0) {
    piVar1 = (int *)FUN_1055dbb0(&stack0x00000008,local_140);
    FUN_100ff920(local_130,*piVar1,piVar1[1],piVar1[2],piVar1[3],in_stack_00000018,in_stack_0000001c
                 ,in_stack_00000020,in_stack_00000024,0,0,in_stack_00000028,in_stack_0000002c,
                 -0x1e3d8329,0,0);
    if (in_stack_00000018 != 0 || in_stack_0000001c != 0) {
      uVar2 = FUN_103246f0(in_stack_00000018,in_stack_0000001c,local_130);
      if ((char)uVar2 == '\0') {
        FUN_100faa00(local_130);
        return;
      }
    }
    FUN_103396b0(this,local_130,param_1);
    if ((local_a0 != 0) && (local_a0 != local_90)) {
      FUN_10918e90(local_a0);
    }
    if ((local_130[0] != 0) && (local_130[0] != local_120)) {
      FUN_10918e90(local_130[0]);
    }
  }
  return;
}

