using System.Linq;
using Domain;
using NUnit.Framework;

namespace DomainTests
{
    public class Tests
    {
        private static readonly Record GoodRecord = new("良");

        [Test]
        public void Test_GivenDomainWithNoRecords_WhenNextKanjiCalled_ThenNullReturned()
        {
            var domain = new Domain.Domain();

            Assert.IsNull(domain.NextKanji());
        }

        [Test]
        public void Test_GivenDomainWithOneRecord_WhenKanjiMarkedComplete_ThenNextKanjiIsNull()
        {
            var domain = new Domain.Domain();
            domain.AddRecord(GoodRecord);

            domain.MarkKanjiComplete();

            Assert.IsNull(domain.NextKanji());
        }

        [Test]
        public void Test_GivenDomainWithOneRecord_WhenNextKanjiCalled_ThenCorrectKanjiReturned()
        {
            var domain = new Domain.Domain();
            domain.AddRecord(GoodRecord);

            var next = domain.NextKanji(); 
            
            Assert.AreEqual(next, GoodRecord.Kanji.First());
        }
    }
}