/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst descriptive alias: FrameTimer_HasPauseFlags (not a recovered symbol and not a database rename). ECX receiver, no stack arguments, plainRET. Calls4E1C00, CMP unsigned dword receiver+40,0; SETA BL; calls4E1CC0 then AL=BL. Decompiler LPCRITICAL_SECTION/LockSemaphore field names are inferred types, not established timer layout.
   Existing database function comment: null
   Original instructions control ABI, signedness and order; inferred types remain qualified. */


bool __fastcall FUN_00594ed0(LPCRITICAL_SECTION param_1)

{
  HANDLE pvVar1;
  
  FUN_004e1c00(param_1,(uint *)&DAT_00fd8cec);
  pvVar1 = param_1[2].LockSemaphore;
  FUN_004e1cc0(param_1);
  return pvVar1 != (HANDLE)0x0;
}

