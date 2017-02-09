using System;

namespace Rapporter.Trigger
{
    public class TriggerGroupException : Exception
    {
        public TriggerGroupException(string ex) : base(ex) { }
    }
}
