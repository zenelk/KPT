using Domain;
using NUnit.Framework;

namespace DomainTests
{
    public class Tests
    {
        [Test]
        public void Test_GivenBlankCache_WhenRecordAdded_ThenCacheContainsRecord()
        {
            var cache = new Cache();
            var domain = new Domain.Domain(cache);

            var record = new Record();
            domain.AddRecord(record);

            Assert.That(cache.Contains(record));
        }
    }
}