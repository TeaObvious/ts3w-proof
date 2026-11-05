/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Original file-stream vtable10B8D318 slot+08 releases its
   local reference count at+210. When count>1 decrements and returns it; otherwise invokes deleting
   destructor via first virtual slot withflag1 and returns0. Recovered exact32-byte
   extent10910250..1091026F. This is reference release, distinct from physicalCloseHandle109104C0.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

int __fastcall CAW_FileStreamReferenceRelease(undefined4 *param_1)

{
  int iVar1;
  
  if (1 < (int)param_1[0x84]) {
    iVar1 = param_1[0x84] + -1;
    param_1[0x84] = iVar1;
    return iVar1;
  }
  (**(code **)*param_1)(1);
  return 0;
}

