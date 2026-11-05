/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentTransferManager_UploadChallenge. Export
   ordinal(s): 1797. Entry VA: 0x10985760. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000915. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ContentTransferManager_UploadChallenge(ushort *param_1)

{
  int *piVar1;
  int iVar2;
  short *psVar3;
  int *piVar4;
  int *piVar5;
  int *local_418 [2];
  short local_410 [520];
  
                    /* 0x985760  1797  ContentTransferManager_UploadChallenge */
  FUN_10920e80(local_410);
  FUN_109221e0(local_410,param_1);
  psVar3 = (short *)FUN_10922000(local_410);
  piVar4 = FUN_109856f0(psVar3);
  if (piVar4 != (int *)0x0) {
    LOCK();
    piVar4[1] = piVar4[1] + 1;
    UNLOCK();
  }
  (**(code **)(*piVar4 + 0x20))();
  piVar5 = piVar4 + 1;
  LOCK();
  *piVar5 = *piVar5 + 1;
  UNLOCK();
  local_418[0] = piVar4;
  FUN_10674c70((int *)local_418);
  if (local_418[0] != (int *)0x0) {
    piVar1 = local_418[0] + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (local_418[0] != (int *)0x0) {
        (**(code **)*local_418[0])(1);
      }
    }
  }
  LOCK();
  iVar2 = *piVar5;
  *piVar5 = *piVar5 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar5 = 1;
    UNLOCK();
    piVar5 = (int *)(**(code **)*piVar4)(1);
  }
  return CONCAT31((int3)((uint)piVar5 >> 8),1);
}

