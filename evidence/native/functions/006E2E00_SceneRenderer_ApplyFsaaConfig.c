/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX renderer,no stack args, RET. Reads Config/FSAALevel
   default0, comparesdevice+38, reduces to supported level60EC40 then guardedsetter60ECA0(verify1)
   andreset611CE0. Afterwards rebuilds selected targets via6E15F0/6E2380 even whenlevelunchanged.
   This establishes settings consumer/device path, not absence of AA-dependent behavior in all
   reset/resource children. */

void __fastcall SceneRenderer_ApplyFsaaConfig(void *param_1)

{
  uint uVar1;
  void *this;
  
  uVar1 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"FSAALevel",0);
  this = (void *)Graphics_GetManagerSingleton();
  if (uVar1 != *(uint *)((int)this + 0x38)) {
    uVar1 = Graphics_SelectSupportedFsaaLevel(this,uVar1);
    if (uVar1 != *(uint *)((int)this + 0x38)) {
      Graphics_SetFsaaLevel(this,uVar1,'\x01');
      FUN_00611ce0(this);
    }
  }
  FUN_006e15f0(param_1,'\0');
  FUN_006e2380(param_1,'\0');
  return;
}

