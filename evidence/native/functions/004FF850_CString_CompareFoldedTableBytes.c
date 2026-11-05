/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 cdecl two pointers,RET; signed byte loads
   index table0114DB30, compared translated bytes yield signed difference or0 at translated
   terminator. Static ASCII table maps A..Z to a..z and leaves lowercase. Thus SACS suffix matching
   at007F8DC0 is case-insensitive for ASCII, unlike current StringComparison.Ordinal EndWith.
   High-byte/Unicode and global locale mutation are not proven by ASCII inspection. */

int __cdecl CString_CompareFoldedTableBytes(char *param_1,char *param_2)

{
  byte bVar1;
  byte bVar2;
  
  bVar2 = (&DAT_0114db30)[*param_2];
  bVar1 = (&DAT_0114db30)[*param_1];
  if (bVar1 == bVar2) {
    do {
      param_2 = param_2 + 1;
      param_1 = param_1 + 1;
      if (bVar1 == 0) {
        return 0;
      }
      bVar1 = (&DAT_0114db30)[*param_1];
      bVar2 = (&DAT_0114db30)[*param_2];
    } while (bVar1 == bVar2);
  }
  return (uint)bVar1 - (uint)bVar2;
}

