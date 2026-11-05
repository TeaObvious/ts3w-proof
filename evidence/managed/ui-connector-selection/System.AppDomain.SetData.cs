// Original PC 1.67 S3SA mscorlib:06000AB3; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Bodyless InternalCall declaration, RVA 0: no fake IL/native body is supplied.
// SecurityPermission/LinkDemand is original metadata, not observed enforcement. Native store/domain semantics remain unresolved.

using System.Runtime.CompilerServices;
using System.Security.Permissions;

[MethodImpl(MethodImplOptions.InternalCall)]
[SecurityPermission(SecurityAction.LinkDemand, ControlAppDomain = true)]
public extern void SetData(string name, object data);
