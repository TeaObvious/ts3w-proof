// Original PC 1.67 ScriptCore.dll. Actual ILSpy C#; paired complete original IL060005E4.
// Static initializer publishes public EventQueue() ConstructorInfo; no null guard or native allocation here.
using System;
using System.Reflection;

namespace ScriptCore;

public class EventQueueInitializer
{
	static EventQueueInitializer()
	{
		Type[] types = new Type[0];
		ConstructorInfo constructor = typeof(EventQueue).GetConstructor(types);
		AppDomain.CurrentDomain.SetData("EventQueueCtor", constructor);
	}
}
