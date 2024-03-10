using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseSQLMusicApp
{
    internal class AlbumsDAO
    {
        string connectionString = "datasource=localhost;port=3306;username=root;password=;database=music;";
        public List<Album> GetAllAlbums()
        {
            List<Album> returnThese = new List<Album>();

            MySqlConnection connection = new MySqlConnection(connectionString);

            connection.Open();

            MySqlCommand command = new MySqlCommand("SELECT * FROM ALBUMS", connection);

            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32(0),
                        AlbumName = reader.GetString(1),
                        ArtistName = reader.GetString(2),
                        Year = reader.GetInt32(3),
                        ImageURL = reader.GetString(4),
                        Description = reader.GetString(5),
                    };
                    returnThese.Add(a);
                }
            }
            connection.Close();

            return returnThese;
        }

        public List<Album> SearchTitles(string searchTerm)
        {
            List<Album> returnThese = new List<Album>();

            MySqlConnection connection = new MySqlConnection(connectionString);

            connection.Open();

            String searchWildPhrase = "%" + searchTerm + "%";

            MySqlCommand command = new MySqlCommand();

            command.CommandText = "SELECT * FROM ALBUMS WHERE ALBUM_TITLE LIKE @search";
            command.Parameters.AddWithValue("@search", searchWildPhrase);
            command.Connection = connection;

            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32(0),
                        AlbumName = reader.GetString(1),
                        ArtistName = reader.GetString(2),
                        Year = reader.GetInt32(3),
                        ImageURL = reader.GetString(4),
                        Description = reader.GetString(5),
                    };
                    returnThese.Add(a);
                }
            }
            connection.Close();

            return returnThese;
        }
    }
}
