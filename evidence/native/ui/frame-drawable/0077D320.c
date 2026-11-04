/* Actual Ghidra decompilation of registered entry0077D320. Current owned body is
   singleton[[0077D320,0077D320]], zero Listing instructions. The decompiler follows
   code not represented by that owned body: this is QUALIFIED C, not a complete
   owned-function export. Original two-argument signature and unaff_retaddr/state
   artifacts are retained; physical ABI and four cases are explained in comments.
   Analyst instruction notes are inserted without changing decompiled statements.
   Read the paired original-byte CFG and guide for ownership/data limitations.
*/

/* Verified PC 1.67 registration table at 0x01163040 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_FrameDrawableGenericImpl [assembly=ScriptCore token=0x06000E43;
   dHandle: System.UInt32, funcID: System.UInt32, state: System.UInt32, value: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

   Analyst contract (PC 1.67):
   Static PC 1.67 registered FrameDrawable dispatch; four UInt32 frontend arguments are
   dHandle,funcID,state,value at entry ESP+4/+8/+C/+10. Existing singleton body/zero Listing is NOT
   repaired here: the original-byte qualified CFG is 0077D320..0077D39B, with four-DWORD jump table
   0077D39C..0077D3AB and noncode CC padding ..3AF. GetGlobalInterfacePointer_11D5BBC runs first;
   dHandle high byte must equal 0x30, then host vtable+CC resolves it, and returned object vtable+C
   queries interface ID030D54AC. Null resolution/interface or unsigned funcID>3 returns EAX0. Table
   funcIDs0/1 read/write DWORD(interface+0C+state*8), original UI enum identifies BorderStyle;
   IDs2/3 read/write DWORD(interface+10+state*8), original managed caller identifies Color.ARGB.
   Stores return0, so zero is not an independent success flag. State and value are not range-checked
   here. Inferred switch(unaff_retaddr) and param_1 as state in raw C are stack-tracking artifacts;
   use actual stack operands. Plain RET, no immediate argument cleanup. Managed FrameDrawable class
   ID030D54B9 is distinct from queried interface ID030D54AC. Interface lifetime, redraw,
   renderer/style interpretation and invalid-state behavior require other owners; no runtime
   execution claimed. */

undefined4 ScriptCore_UIManager__UIManager_FrameDrawableGenericImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_retaddr;

  /* Physical instruction qualification: 77D320: global getter precedes handle admission. The admitted handle path has no local global-pointer null guard. */
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  /* Physical instruction qualification: 77D337/344/356: high handle byte must be 0x30; resolve through host+CC, then query interface030D54AC through object+C; null results return zero. */
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0xc))(0x30d54ac), iVar2 != 0)) {
  /* Physical instruction qualification: 77D35C/360/365: physical funcID = entryESP+8, unsigned >3 returns zero. Four-DWORD jump table is data at77D39C; unaff_retaddr is a decompiler artifact. */
    switch(unaff_retaddr) {
  /* Physical instruction qualification: 77D36C/370: physical state=entryESP+C indexes8-byte rows. Return style DWORD at interface+0C+state*8; param_1 here is an artifact. */
    case 0:
      return *(undefined4 *)(iVar2 + 0xc + param_1 * 8);
  /* Physical instruction qualification: 77D375/37D: store full value=entryESP+10 at interface+0C+state*8, then return zero. State/value unvalidated. */
    case 1:
      *(undefined4 *)(iVar2 + 0xc + param_1 * 8) = param_2;
      return 0;
  /* Physical instruction qualification: 77D384/388: return color DWORD at interface+10+state*8, using physical state=entryESP+C. */
    case 2:
      return *(undefined4 *)(iVar2 + 0x10 + param_1 * 8);
  /* Physical instruction qualification: 77D38D/395: store full color value at interface+10+state*8; then shared zero return. Native dispatch does not transform ARGB. */
    case 3:
      *(undefined4 *)(iVar2 + 0x10 + param_1 * 8) = param_2;
    }
  }
  return 0;
}
