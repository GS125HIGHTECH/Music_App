using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseSQLMusicApp
{
    internal class Album
    {
        public int ID { get; set; }
        public required String AlbumName { get; set; }
        public required String ArtistName { get; set; }
        public int Year { get; set; }
        public required String ImageURL { get; set; }
        public required String Description { get; set; }
    }
}
