/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00410847) */
/* WARNING: Removing unreachable block (ram,0x0041084e) */
/* Analyst note, original PC1.67 static. Canvas vtable F9B380 slot8C is F9B40C ->4107C0, installed
   by actual initializer4113D0. Physical thiscall ECX receiver, no stack inputs, plain RET; normal
   exit defines AL1, WM_QUIT defines AL0, upper return bits unspecified. Flag byte+8 bit08 sets
   byte+1C and calls InvalidateRect(HWND+70,NULL,0) only when dword+20 is zero. Bit20 gates message
   pumping. PeekMessageW(MSG, HWND0, min0,max0,PM_REMOVE1) repeats until empty. WM_QUIT12 returns
   AL0 before interception/Translate/Dispatch. Build original message1EE100B with owner/message
   pointers and consumed byte initially0; nonnull+5C service virtual18 receives ID,payload,0,
   otherwise optional cdecl+64 callback receives payload and+68 cookie. Consumed byte nonzero
   suppresses TranslateMessage and DispatchMessageW for that message. Constant comparison at410820
   means the+60 virtual38 branch is physically unreachable in this body; original instructions are
   still exported. No thread-ID check, Task, async completion, cancellation or log policy appears
   here. Caller frame placement, actual simulation thread identity, callback lifetime and full
   WindowProc/managed dispatch remain separate; this proves the local Windows pump only. */

bool __thiscall WindowCanvas_PumpMessages(void *this)

{
  int iVar1;
  tagMSG *local_38;
  char local_34;
  undefined4 local_30;
  void *local_2c;
  undefined1 **local_28;
  tagMSG local_24;
  
  if (((*(byte *)((int)this + 8) & 8) != 0) &&
     (*(undefined1 *)((int)this + 0x1c) = 1, *(int *)((int)this + 0x20) == 0)) {
    InvalidateRect(*(HWND *)((int)this + 0x70),(RECT *)0x0,0);
  }
  if ((*(byte *)((int)this + 8) & 0x20) != 0) {
    iVar1 = PeekMessageW(&local_24,(HWND)0x0,0,0,1);
    while (iVar1 != 0) {
      if (local_24.message == 0x12) {
        return false;
      }
      local_38 = &local_24;
      local_28 = (undefined1 **)&local_38;
      local_34 = '\0';
      local_30 = 0x1ee100b;
      local_2c = this;
      if (*(int **)((int)this + 0x5c) == (int *)0x0) {
        if (*(code **)((int)this + 100) != (code *)0x0) {
          (**(code **)((int)this + 100))(&local_30,*(undefined4 *)((int)this + 0x68));
          goto LAB_00410888;
        }
LAB_0041088e:
        TranslateMessage(&local_24);
        DispatchMessageW(&local_24);
      }
      else {
        (**(code **)(**(int **)((int)this + 0x5c) + 0x18))(0x1ee100b,&local_30,0);
LAB_00410888:
        if (local_34 == '\0') goto LAB_0041088e;
      }
      iVar1 = PeekMessageW(&local_24,(HWND)0x0,0,0,1);
    }
  }
  return true;
}

