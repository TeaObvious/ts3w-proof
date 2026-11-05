/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: DBPF virtual+1C delegates to108DE680 with flush=true. This
   closes owned database IO independently of the later deleting destructor. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __fastcall CAW_DbpfClose(void *param_1)

{
  CAW_DbpfCloseOwnedIo(param_1,'\x01');
  return;
}

