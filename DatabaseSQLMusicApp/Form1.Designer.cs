namespace DatabaseSQLMusicApp
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            button1 = new Button();
            dataGridView1 = new DataGridView();
            button2 = new Button();
            textBox1 = new TextBox();
            pictureBox1 = new PictureBox();
            groupBox1 = new GroupBox();
            button3 = new Button();
            txt_description = new TextBox();
            txt_image = new TextBox();
            txt_year = new TextBox();
            txt_artist = new TextBox();
            txt_album = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            dataGridView2 = new DataGridView();
            label6 = new Label();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView2).BeginInit();
            SuspendLayout();
            // 
            // button1
            // 
            button1.Location = new Point(296, 32);
            button1.Name = "button1";
            button1.Size = new Size(120, 31);
            button1.TabIndex = 0;
            button1.Text = "Load Albums";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(296, 72);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.Size = new Size(636, 212);
            dataGridView1.TabIndex = 1;
            dataGridView1.CellClick += dataGridView1_CellClick;
            // 
            // button2
            // 
            button2.Location = new Point(812, 32);
            button2.Name = "button2";
            button2.Size = new Size(120, 31);
            button2.TabIndex = 2;
            button2.Text = "Search";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // textBox1
            // 
            textBox1.Font = new Font("Segoe UI", 13F);
            textBox1.Location = new Point(477, 32);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(320, 31);
            textBox1.TabIndex = 3;
            // 
            // pictureBox1
            // 
            pictureBox1.Location = new Point(974, 72);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(212, 212);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 4;
            pictureBox1.TabStop = false;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(button3);
            groupBox1.Controls.Add(txt_description);
            groupBox1.Controls.Add(txt_image);
            groupBox1.Controls.Add(txt_year);
            groupBox1.Controls.Add(txt_artist);
            groupBox1.Controls.Add(txt_album);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(24, 32);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(246, 252);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Add Album";
            // 
            // button3
            // 
            button3.Location = new Point(55, 207);
            button3.Name = "button3";
            button3.Size = new Size(120, 30);
            button3.TabIndex = 10;
            button3.Text = "Add";
            button3.UseVisualStyleBackColor = true;
            button3.Click += button3_Click;
            // 
            // txt_description
            // 
            txt_description.Location = new Point(100, 167);
            txt_description.Name = "txt_description";
            txt_description.Size = new Size(140, 23);
            txt_description.TabIndex = 9;
            // 
            // txt_image
            // 
            txt_image.Location = new Point(100, 134);
            txt_image.Name = "txt_image";
            txt_image.Size = new Size(140, 23);
            txt_image.TabIndex = 8;
            // 
            // txt_year
            // 
            txt_year.Location = new Point(100, 100);
            txt_year.Name = "txt_year";
            txt_year.Size = new Size(140, 23);
            txt_year.TabIndex = 7;
            // 
            // txt_artist
            // 
            txt_artist.Location = new Point(100, 67);
            txt_artist.Name = "txt_artist";
            txt_artist.Size = new Size(140, 23);
            txt_artist.TabIndex = 6;
            // 
            // txt_album
            // 
            txt_album.Location = new Point(100, 31);
            txt_album.Name = "txt_album";
            txt_album.Size = new Size(140, 23);
            txt_album.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(16, 175);
            label5.Name = "label5";
            label5.Size = new Size(67, 15);
            label5.TabIndex = 4;
            label5.Text = "Description";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(16, 142);
            label4.Name = "label4";
            label4.Size = new Size(64, 15);
            label4.TabIndex = 3;
            label4.Text = "Image URL";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(16, 108);
            label3.Name = "label3";
            label3.Size = new Size(29, 15);
            label3.TabIndex = 2;
            label3.Text = "Year";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(16, 75);
            label2.Name = "label2";
            label2.Size = new Size(35, 15);
            label2.TabIndex = 1;
            label2.Text = "Artist";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(16, 39);
            label1.Name = "label1";
            label1.Size = new Size(78, 15);
            label1.TabIndex = 0;
            label1.Text = "Album Name";
            // 
            // dataGridView2
            // 
            dataGridView2.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView2.Location = new Point(296, 324);
            dataGridView2.Name = "dataGridView2";
            dataGridView2.Size = new Size(636, 212);
            dataGridView2.TabIndex = 6;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(296, 306);
            label6.Name = "label6";
            label6.Size = new Size(39, 15);
            label6.TabIndex = 7;
            label6.Text = "Tracks";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1252, 562);
            Controls.Add(label6);
            Controls.Add(dataGridView2);
            Controls.Add(groupBox1);
            Controls.Add(pictureBox1);
            Controls.Add(textBox1);
            Controls.Add(button2);
            Controls.Add(dataGridView1);
            Controls.Add(button1);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView2).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button button1;
        private DataGridView dataGridView1;
        private Button button2;
        private TextBox textBox1;
        private PictureBox pictureBox1;
        private GroupBox groupBox1;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label2;
        private Label label1;
        private TextBox txt_description;
        private TextBox txt_image;
        private TextBox txt_year;
        private TextBox txt_artist;
        private TextBox txt_album;
        private Button button3;
        private DataGridView dataGridView2;
        private Label label6;
    }
}
