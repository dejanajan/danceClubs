using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace dClubsWebAPI.Models
{
    public partial class DanceClubsContext : DbContext
    {
        public DanceClubsContext()
        {
        }

        public DanceClubsContext(DbContextOptions<DanceClubsContext> options)
            : base(options)
        {
        }

        public virtual DbSet<DClubs> DClubs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=DanceClubs");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DClubs>(entity =>
            {
                entity.HasKey(e => e.ClubId);

                entity.ToTable("dClubs");

                entity.Property(e => e.ClubId).HasColumnName("ClubID");

                entity.Property(e => e.Address).IsRequired();

                entity.Property(e => e.City).IsRequired();

                entity.Property(e => e.ClubName)
                    .IsRequired()
                    .IsUnicode(false);

                entity.Property(e => e.ContactPerson).IsUnicode(false);

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.Telephone)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
