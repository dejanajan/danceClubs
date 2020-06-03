using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using dClubsWebAPI.Models;

namespace dClubsWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DClubsController : ControllerBase
    {
        private readonly DanceClubsContext _context;

        public DClubsController(DanceClubsContext context)
        {
            _context = context;
        }

        // GET: api/DClubs
        [HttpGet]
        public async Task<ActionResult<IEnumerable<DClubs>>> GetDClubs()
        {
            return await _context.DClubs.ToListAsync();
        }

        // GET: api/DClubs/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DClubs>> GetDClubs(int id)
        {
            var dClubs = await _context.DClubs.FindAsync(id);

            if (dClubs == null)
            {
                return NotFound();
            }

            return dClubs;
        }

        // PUT: api/DClubs/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDClubs(int id, DClubs dClubs)
        {
            if (id != dClubs.ClubId)
            {
                return BadRequest();
            }

            _context.Entry(dClubs).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DClubsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/DClubs
        [HttpPost]
        public async Task<ActionResult<DClubs>> PostDClubs(DClubs dClubs)
        {
            _context.DClubs.Add(dClubs);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetDClubs", new { id = dClubs.ClubId }, dClubs);
        }

        // DELETE: api/DClubs/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<DClubs>> DeleteDClubs(int id)
        {
            var dClubs = await _context.DClubs.FindAsync(id);
            if (dClubs == null)
            {
                return NotFound();
            }

            _context.DClubs.Remove(dClubs);
            await _context.SaveChangesAsync();

            return dClubs;
        }

        private bool DClubsExists(int id)
        {
            return _context.DClubs.Any(e => e.ClubId == id);
        }
    }
}
