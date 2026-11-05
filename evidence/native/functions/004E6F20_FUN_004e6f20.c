/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


int * __thiscall FUN_004e6f20(void *this,uint param_1,uint param_2)

{
  LPCRITICAL_SECTION lpCriticalSection;
  int *piVar1;
  
  lpCriticalSection = *(LPCRITICAL_SECTION *)((int)this + 0x4e4);
  if (lpCriticalSection != (LPCRITICAL_SECTION)0x0) {
    EnterCriticalSection(lpCriticalSection);
    lpCriticalSection[1].DebugInfo =
         (PRTL_CRITICAL_SECTION_DEBUG)((int)&(lpCriticalSection[1].DebugInfo)->Type + 1);
  }
  piVar1 = FUN_004e6390(this,param_1,param_2);
  if (lpCriticalSection != (LPCRITICAL_SECTION)0x0) {
    lpCriticalSection[1].DebugInfo =
         (PRTL_CRITICAL_SECTION_DEBUG)((int)&lpCriticalSection[1].DebugInfo[-1].SpareWORD + 1);
    LeaveCriticalSection(lpCriticalSection);
  }
  return piVar1;
}

