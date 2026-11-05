/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Under the database IO critical section, calls current
   stream+18 to close its OS handle; if current stream is the embedded owner at database+34, clears
   owner+260 and releases stream+08. Clears access mode+14 and record state+1C, returnsAL1. Original
   file-stream vtable10B8D318 slot+18 maps to109104C0. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __fastcall CAW_DbpfCloseCurrentStream(int param_1)

{
  int *piVar1;
  LONG LVar2;
  
  FUN_109166c0((LPCRITICAL_SECTION)(param_1 + 0x2a0),(uint *)&DAT_10b87700);
  if (*(int *)(param_1 + 0x264) != 0) {
    *(undefined4 *)(param_1 + 0x26c) = 0;
  }
  if (*(int **)(param_1 + 0x260) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 0x260) + 0x18))();
  }
  if ((*(int *)(param_1 + 0x260) == param_1 + 0x34) &&
     (piVar1 = *(int **)(param_1 + 0x260), piVar1 != (int *)0x0)) {
    *(undefined4 *)(param_1 + 0x260) = 0;
    (**(code **)(*piVar1 + 8))();
  }
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  LVar2 = FUN_10916780((LPCRITICAL_SECTION)(param_1 + 0x2a0));
  return CONCAT31((int3)((uint)LVar2 >> 8),1);
}

