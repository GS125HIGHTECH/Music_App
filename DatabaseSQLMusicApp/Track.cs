namespace DatabaseSQLMusicApp
{
    internal class Track
    {
        public int ID { get; set; }
        public required string Name { get; set; }
        public int Number { get; set; }
        public required string VideoURL  { get; set; }
        public string? Lyrics { get; set; }
    }
}