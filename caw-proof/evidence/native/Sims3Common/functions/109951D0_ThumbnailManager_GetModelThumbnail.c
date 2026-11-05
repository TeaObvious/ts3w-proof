/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GetModelThumbnail. Export
   ordinal(s): 2511. Entry VA: 0x109951d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003F4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
ThumbnailManager_GetModelThumbnail
          (int param_1,int param_2,int *param_3,int *param_4,undefined4 param_5)

{
  void *this;
  uint in_EAX;
  undefined4 uVar1;
  int local_130 [4];
  int local_120;
  int local_a0;
  int local_90;
  
                    /* 0x9951d0  2511  ThumbnailManager_GetModelThumbnail */
  this = DAT_10c71150;
  if ((DAT_10c71150 != (void *)0x0) && (in_EAX = 0, param_1 != 0)) {
    FUN_109950c0(local_130,param_1,param_5,0,param_2);
    uVar1 = FUN_10336580(this,local_130,(int *)0x0,(LPCRITICAL_SECTION)0x0,param_3,param_4);
    if ((local_a0 != 0) && (local_a0 != local_90)) {
      FUN_10918e90(local_a0);
    }
    if ((local_130[0] != 0) && (local_130[0] != local_120)) {
      local_130[0] = FUN_10918e90(local_130[0]);
    }
    return CONCAT31((int3)((uint)local_130[0] >> 8),(char)uVar1);
  }
  return in_EAX & 0xffffff00;
}

