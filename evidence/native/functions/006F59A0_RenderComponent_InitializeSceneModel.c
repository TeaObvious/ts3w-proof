/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67: Initializes ordinal+0x2b8 to0. SceneModelPartInfos allocation label and component
   virtual table identify model-part render context.
   
   Analyst PC1.67 mesh-state instruction contract. Constructor initializes geometry-state DWORD+2A4
   to0 (separate from ordinal+2B8). Existing reviewed scene-part context annotations retained. Later
   setters/managed control of this state word remain open. */

void * __thiscall
RenderComponent_InitializeSceneModel(void *this,undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  FUN_006fd4e0(this,param_1,param_2);
  *(undefined ***)this = &PTR_FUN_00ffa840;
  FUN_006dd2b0((undefined4 *)((int)this + 0x210));
  uVar1 = DAT_01061224;
  *(undefined4 *)((int)this + 0x288) = 0;
  *(undefined4 *)((int)this + 0x28c) = 0;
  *(undefined4 *)((int)this + 0x290) = 0;
  *(char **)((int)this + 0x294) = "Renderer/SceneModelPartInfos";
  *(byte *)((int)this + 0x29e) = *(byte *)((int)this + 0x29e) & 0xf8;
  *(uint *)((int)this + 0x44) = *(uint *)((int)this + 0x44) | 0x1000008;
  *(undefined4 *)((int)this + 0x50) = uVar1;
  *(undefined4 *)((int)this + 0x54) = uVar1;
  *(undefined4 *)((int)this + 0x58) = uVar1;
  *(undefined4 *)((int)this + 0x5c) = uVar1;
  uVar1 = _DAT_00fb35b4;
  *(undefined4 *)((int)this + 0x298) = 0;
  *(undefined4 *)((int)this + 0x2a0) = 0;
  *(undefined4 *)((int)this + 0x2a4) = 0;
  *(undefined4 *)((int)this + 0x2a8) = 0;
  *(undefined4 *)((int)this + 0x2ac) = 0;
  *(undefined4 *)((int)this + 0x2b4) = 0;
  *(undefined4 *)((int)this + 0x2b8) = 0;
  *(undefined1 *)((int)this + 0x29c) = 0x10;
  *(undefined1 *)((int)this + 0x29d) = 2;
  *(undefined2 *)((int)this + 0x2b0) = 100;
  *(undefined4 *)((int)this + 0x60) = uVar1;
  *(undefined4 *)((int)this + 100) = uVar1;
  *(undefined4 *)((int)this + 0x68) = uVar1;
  *(undefined4 *)((int)this + 0x6c) = uVar1;
  *(void **)((int)this + 0x268) = this;
  return this;
}

