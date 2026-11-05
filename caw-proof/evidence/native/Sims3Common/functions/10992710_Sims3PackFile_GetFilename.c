/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_GetFilename. Export ordinal(s):
   2408. Entry VA: 0x10992710. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A20. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl Sims3PackFile_GetFilename(void *param_1,ushort param_2)

{
  int iVar1;
  
                    /* 0x992710  2408  Sims3PackFile_GetFilename */
  iVar1 = FUN_107b4260(param_1,param_2);
  if (iVar1 != 0) {
    Ordinal_2(*(undefined4 *)(iVar1 + 0x28));
    return;
  }
  Ordinal_2(&_Str2_10b624fc);
  return;
}

