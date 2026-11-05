/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. cdecl(command); RET, Boolean in AL. Getter 593FC0 returns the
   global dispatcher; NULL returns false, otherwise 594960 is called and AL=1. No allocation, copy,
   renderer or future completion result is propagated. Upper EAX is not the Boolean result. */

bool __cdecl RenderCommand_EnqueueIfDispatcherExists(byte *command)

{
  void *this;
  
  this = RenderCommand_GetDispatcher();
  if (this != (void *)0x0) {
    RenderCommandDispatcher_Enqueue(this,command);
    return true;
  }
  return false;
}

