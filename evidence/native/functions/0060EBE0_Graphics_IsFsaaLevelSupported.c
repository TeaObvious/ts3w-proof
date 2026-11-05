/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager, UInt32level RET4 AL. RejectsNULLdevice
   orunsignedlevel>16. Calls devicevirtual+2C usingoriginalenumtableFE8AD8
   andcurrentadapter/device/window flags; HRESULT>=0 supported. No shader threshold math. */

bool __thiscall Graphics_IsFsaaLevelSupported(void *this,uint level)

{
  int iVar1;
  
  if ((*(int *)((int)this + 8) == 0) || (0x10 < level)) {
    return false;
  }
  iVar1 = (**(code **)(**(int **)((int)this + 8) + 0x2c))
                    (*(int **)((int)this + 8),*(undefined4 *)((int)this + 0x40),
                     **(undefined4 **)((int)this + 0xe0),(*(undefined4 **)((int)this + 0xe0))[0x55],
                     *(undefined1 *)((int)this + 0x24),*(undefined4 *)(&DAT_00fe8ad8 + level * 4),0)
  ;
  return -1 < iVar1;
}

