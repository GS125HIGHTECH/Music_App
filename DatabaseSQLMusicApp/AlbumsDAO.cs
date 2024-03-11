using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
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

        internal int addOneAlbum(Album album)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);

            connection.Open();

            MySqlCommand command = new MySqlCommand("INSERT INTO `albums`(`ALBUM_TITLE`, `ARTIST`, `YEAR`, `IMAGE_NAME`, `DESCRIPTION`) VALUES (@album, @artist, @year, @imageURL, @description)", connection);

            command.Parameters.AddWithValue("@album", album.AlbumName);
            command.Parameters.AddWithValue("@artist", album.ArtistName);
            command.Parameters.AddWithValue("@year", album.Year);
            command.Parameters.AddWithValue("@imageURL", album.ImageURL);
            command.Parameters.AddWithValue("@description", album.Description);

            int newRows = command.ExecuteNonQuery();

            connection.Close();

            return newRows;
        }

        public List<Track> GetTracksForAlbum(int albumID)
        {
            List<Track> returnThese = new List<Track>();

            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand command = new MySqlCommand();

            command.CommandText = "SELECT * FROM TRACKS WHERE albums_ID = @albumID";
            command.Parameters.AddWithValue("@albumID", albumID);
            command.Connection = connection;

            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Track t = new Track
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Number = reader.GetInt32(2),
                        VideoURL = reader.GetString(3),
                        Lyrics = reader.IsDBNull(4) ? null : reader.GetString(4),
                    };
                    returnThese.Add(t);
                }
            }
            connection.Close();

            return returnThese;
        }

        public List<JObject> GetTracksUsingJoin(int albumID)
        {
            List<JObject> returnThese = new List<JObject>();

            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand command = new MySqlCommand();

            command.CommandText = "SELECT tracks.ID as trackID, albums.ALBUM_TITLE, `track_title`, `video_URL` FROM `tracks` JOIN albums ON albums_ID = albums.ID WHERE albums_ID = @albumID";
            command.Parameters.AddWithValue("@albumID", albumID);
            command.Connection = connection;

            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    JObject newTrack = new JObject();

                    for(int i = 0; i < reader.FieldCount; i++)
                    {
                        newTrack.Add(reader.GetName(i).ToString(), reader.GetValue(i).ToString());
                    }
                    returnThese.Add(newTrack);
                }
            }
            connection.Close();

            return returnThese;
        }
    }
}
