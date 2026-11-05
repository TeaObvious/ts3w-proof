/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocale at 0x00743a20, bytes
   e90b98e5ff. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined4 DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocale(void)

{
  int *piVar1;
  undefined4 unaff_ESI;
  int unaff_EDI;
  undefined4 local_34;
  int local_30 [2];
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  if (DAT_011cf2d0 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    local_30[0] = 0;
    local_30[1] = 0;
    local_28 = (undefined **)0x0;
    local_24 = "String/LocalizedStringService";
    FUN_0040b590(local_30,(short *)(DAT_011cf2d0 + 0x28));
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x13,9,local_30,0x10,1);
    local_34 = 0;
    (**(code **)(*piVar1 + 0x50))(local_20,&local_34);
    local_28 = &PTR_FUN_00fba6f4;
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(&local_28,'\0');
    }
    if ((2 < (int)(local_30[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_004e44e0(unaff_EDI);
    }
    return unaff_ESI;
  }
  return 0;
}

