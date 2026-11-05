/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Embedded file-stream destructor directly callsCloseHandle
   for a validstream+4 handle, sets it to-1, zeroes IO state+214..+220 and resets the base vtable.
   It provides final physical closure even if an earlier path did not close the stream.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __fastcall CAW_FileStreamDestroy(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_10b8d318;
  if ((HANDLE)param_1[1] != (HANDLE)0xffffffff) {
    CloseHandle((HANDLE)param_1[1]);
    param_1[1] = 0xffffffff;
    param_1[0x85] = 0;
    param_1[0x86] = 0;
    param_1[0x87] = 0;
    param_1[0x88] = 0;
  }
  *param_1 = &PTR_LAB_10aafee4;
  return;
}

