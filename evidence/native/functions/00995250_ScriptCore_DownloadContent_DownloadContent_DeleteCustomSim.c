/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181718 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_DeleteCustomSim [assembly=ScriptCore
   token=0x06000096; key: Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char ScriptCore.DownloadContent::DownloadContent_DeleteCustomSim(void)

{
  char cVar1;
  int iVar2;
  undefined4 local_10 [4];
  
  FUN_0076c0e0(&stack0x00000004,local_10);
  iVar2 = FUN_00982e60();
  if ((iVar2 != 0) && (*(void **)(iVar2 + 0x664) != (void *)0x0)) {
    cVar1 = FUN_009c9900(*(void **)(iVar2 + 0x664),local_10);
    return cVar1;
  }
  return '\0';
}

