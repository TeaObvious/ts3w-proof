/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=Model; key pointer and full DWORD stage; RET 8, void. Owner
   at Model+4 supplies GUID at owner+8/+C. Constructs an 0x50-byte in-memory command: opcode
   05BFF1A9 at +0, metadata 117C9AC at +4, GUID64 at +8, native key16 at +10, stage at +20. Padding
   is not fully initialized. Enqueues through 693380, then invokes metadata virtual 0 on payload+10.
   Submission does not establish material readiness; no artwork lookup or decode occurs here. */

void __thiscall
ModelComponent_SubmitPaintingCommand(void *this,byte *nativePaintingKey,uint levelToReveal)

{
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  uint local_40;
  
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_4c = *(undefined4 *)(nativePaintingKey + 4);
  local_50 = *(undefined4 *)nativePaintingKey;
  local_48 = *(undefined4 *)(nativePaintingKey + 8);
  local_44 = *(undefined4 *)(nativePaintingKey + 0xc);
  local_60[0] = 0xa9;
  local_60[1] = 0xf1;
  local_60[2] = 0xbf;
  local_60[3] = 5;
  local_5c = &PTR_PTR_0117c9ac;
  local_40 = levelToReveal;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(local_5c,(byte *)&local_50);
  }
  return;
}

