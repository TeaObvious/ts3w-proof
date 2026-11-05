/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SendBrowserCommandImpl. Export
   ordinal(s): 1148. Entry VA: 0x1056fbe0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006F4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UIManager_SendBrowserCommandImpl(int param_1)

{
                    /* 0x56fbe0  1148  UIManager_SendBrowserCommandImpl */
  if (param_1 != 0xff5232a) {
    FUN_107d2f90(param_1);
    return;
  }
  if (DAT_10c788dc != 0) {
    FUN_10538520(*(LPCWSTR *)(DAT_10c788dc + 0xf0));
    return;
  }
  FUN_10538520(pWRam000000f8);
  return;
}

