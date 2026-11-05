/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: DBPF virtual+10 returns the database reference count stored
   at object+8. The manager uses count==1 to recognize its final owner before calling database
   Shutdown; this is not an arbitrary database-open-state enum. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

undefined4 __fastcall CAW_DbReferenceCount(int param_1)

{
  return *(undefined4 *)(param_1 + 8);
}

