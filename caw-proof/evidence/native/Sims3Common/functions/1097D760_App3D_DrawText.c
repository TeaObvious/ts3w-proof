/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_DrawText. Export ordinal(s): 1672. Entry
   VA: 0x1097d760. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009B9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl App3D_DrawText(byte *param_1,int param_2,float param_3,float param_4)

{
                    /* 0x97d760  1672  App3D_DrawText */
  _DAT_10cb7d6c = 0xff000000;
  FUN_104890d0(&DAT_10cad7b0,param_1,param_2,param_3 + DAT_10acb0d4,param_4 + DAT_10acb0d4,
               DAT_10cad798,(undefined4 *)&DAT_10cb7b48);
  _DAT_10cb7d6c = 0xffa52a2a;
  FUN_104890d0(&DAT_10cad7b0,param_1,param_2,param_3,param_4,DAT_10cad798,
               (undefined4 *)&DAT_10cb7b48);
  return;
}

