using MySqlX.XDevAPI.Common;

namespace DatabaseSQLMusicApp
{
    public partial class Form1 : Form
    {
        BindingSource albumBindingSource = new BindingSource();
        BindingSource tracksBindingSource = new BindingSource();    
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

            albumBindingSource.DataSource = albumsDAO.GetAllAlbums();

            dataGridView1.DataSource = albumBindingSource;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AlbumsDAO albumsDAO = new AlbumsDAO();

            albumBindingSource.DataSource = albumsDAO.SearchTitles(textBox1.Text);

            dataGridView1.DataSource = albumBindingSource;
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dataGridView = (DataGridView)sender;

            int rowClicked = dataGridView.CurrentRow.Index;

            String? image = dataGridView.Rows[rowClicked].Cells[4].Value.ToString();

            pictureBox1.Load(image);

            AlbumsDAO albumsDAO = new AlbumsDAO();

            tracksBindingSource.DataSource = albumsDAO.GetTracksForAlbum((int)dataGridView.Rows[rowClicked].Cells[0].Value);

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
    }
}
