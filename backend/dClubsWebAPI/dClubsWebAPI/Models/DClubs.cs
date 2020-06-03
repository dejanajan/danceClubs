using System;
using System.Collections.Generic;

namespace dClubsWebAPI.Models
{
    public partial class DClubs
    {
        public int ClubId { get; set; }
        public string ClubName { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        public string ContactPerson { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
    }
}
