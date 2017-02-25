using System;

namespace RapporterV2.Trigger
{
    public class TriggerGroupException : Exception
    {
        public TriggerGroupException(string ex) : base(ex) { }
    }
}
