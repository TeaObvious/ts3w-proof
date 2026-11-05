/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: If HANDLE atstream+4 is notINVALID_HANDLE_VALUE(-1), calls
   importedCloseHandle, sets the field to-1 and zeroes IO state+214..+220. ReturnsAL1. This is a
   physical file-handle release, not only an index/unmount operation. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

undefined4 __fastcall CAW_FileStreamCloseOsHandle(int param_1)

{
  HANDLE hObject;
  
  hObject = *(HANDLE *)(param_1 + 4);
  if (hObject != (HANDLE)0xffffffff) {
    CloseHandle(hObject);
    hObject = (HANDLE)0x0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x214) = 0;
    *(undefined4 *)(param_1 + 0x218) = 0;
    *(undefined4 *)(param_1 + 0x21c) = 0;
    *(undefined4 *)(param_1 + 0x220) = 0;
  }
  return CONCAT31((int3)((uint)hObject >> 8),1);
}

