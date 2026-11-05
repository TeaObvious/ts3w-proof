/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX metadata, NUL-terminated UTF16
   source; copy to string+50 using native string semantics. Reader consumes counted stream text
   before invoking this setter, so embeddedNUL truncates stored text without shifting following
   fields. */

void __thiscall SaveGameMetadata_SetHomeWorld(void *this,short *param_1)

{
  short sVar1;
  short *psVar2;
  
  sVar1 = *param_1;
  psVar2 = param_1;
  while (sVar1 != 0) {
    psVar2 = psVar2 + 1;
    sVar1 = *psVar2;
  }
  FUN_00408d60((void *)((int)this + 0x50),param_1,param_1 + ((int)psVar2 - (int)param_1 >> 1));
  return;
}

