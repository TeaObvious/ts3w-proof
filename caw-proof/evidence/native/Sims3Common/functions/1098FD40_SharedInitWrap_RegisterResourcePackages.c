/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SharedInitWrap_RegisterResourcePackages. Export
   ordinal(s): 2312. Entry VA: 0x1098fd40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001D0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SharedInitWrap_RegisterResourcePackages(short *param_1)

{
  int local_10 [3];
  char *local_4;
  
                    /* 0x98fd40  2312  SharedInitWrap_RegisterResourcePackages */
  local_10[0] = 0;
  local_10[1] = 0;
  local_10[2] = 0;
  local_4 = "Services/DirectoryPath";
  FUN_1006a620(local_10,param_1);
  FUN_105ccb70(local_10);
  if ((2 < (int)(local_10[2] - local_10[0] & 0xfffffffeU)) && (local_10[0] != 0)) {
    FUN_10918e90(local_10[0]);
  }
  return;
}

