/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Returns whether any requested product-mask bit is present
   in configuration state uint32 +4; 0x1025EAD0 queries bit 0x40000 for the conditional world Z
   extension. This is product configuration, not a command-line flag. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

bool __thiscall CAW_GameConfigHasInstalledProductBits(void *this,uint param_1)

{
  return (*(uint *)((int)this + 4) & param_1) != 0;
}

