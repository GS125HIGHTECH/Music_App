using Mysqlx.Session;
using MySqlX.XDevAPI.Common;

namespace DatabaseSQLMusicApp
{
    public partial class Form1 : Form
    {
        BindingSource albumBindingSource = new BindingSource();
        BindingSource tracksBindingSource = new BindingSource();

        List<Album> albums = new List<Album>();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            AlbumsDAO albumsDAO = new AlbumsDAO();

            albums = albumsDAO.GetAllAlbums();

            albumBindingSource.DataSource = albums;

            dataGridView1.DataSource = albumBindingSource;

            pictureBox1.Image = null;
            dataGridView2.DataSource = null;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AlbumsDAO albumsDAO = new AlbumsDAO();

            albumBindingSource.DataSource = albumsDAO.SearchTitles(textBox1.Text);

            dataGridView1.DataSource = albumBindingSource;

            dataGridView2.DataSource = null;
            pictureBox1.Image = null;

            albums = albumsDAO.GetAllAlbums();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dataGridView = (DataGridView)sender;

            int rowClicked = dataGridView.CurrentRow.Index;

            String? image = dataGridView.Rows[rowClicked].Cells[4].Value.ToString();

            pictureBox1.Load(image);

            tracksBindingSource.DataSource = albums[rowClicked].Tracks;

            dataGridView2.DataSource = tracksBindingSource;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txt_album.Text) || string.IsNullOrEmpty(txt_artist.Text) || string.IsNullOrEmpty(txt_description.Text) || string.IsNullOrEmpty(txt_image.Text) || string.IsNullOrEmpty(txt_year.Text)))
            {
                Album album = new Album
                {
                    AlbumName = txt_album.Text,
                    ArtistName = txt_artist.Text,
                    Year = Int32.Parse(txt_year.Text),
                    ImageURL = txt_image.Text,
                    Description = txt_description.Text
                };

                AlbumsDAO albumsDAO = new AlbumsDAO();
                int result = albumsDAO.addOneAlbum(album);
                MessageBox.Show(result + " new row(s) inserted");
            }
            else
            {
                MessageBox.Show("Enter data in all fields");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (dataGridView2.CurrentRow != null)
            {
                int rowClicked = dataGridView2.CurrentRow.Index;

                int trackID = (int)dataGridView2.Rows[rowClicked].Cells[0].Value;

                AlbumsDAO albumsDAO = new AlbumsDAO();

                int result = albumsDAO.DeleteTrack(trackID);

                MessageBox.Show("Result " + result);

                dataGridView2.DataSource = null;
                albums = albumsDAO.GetAllAlbums();
            }
            else
            {
                MessageBox.Show("You need to select track in order to delete it!");
            }
        }
    }
}
