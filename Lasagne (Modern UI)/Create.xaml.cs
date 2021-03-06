﻿using Ookii.Dialogs.Wpf;
using System;
using System.Data.SQLite;
using System.Windows;
using System.Windows.Controls;


namespace Lasagne__Modern_UI_ {
    public partial class Create : UserControl {
        public static bool is_2_way = false;
        public Create() {
            InitializeComponent();
            tb1.Text = "";
            tb2.Text = "";
            SQLiteConnection dbConnection;
            dbConnection = new SQLiteConnection("Data Source=Database.sqlite;Version=3;");
            dbConnection.Open();

            //create table
            string sql = "CREATE TABLE if not exists 'sync' ('no'	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,'name'	varchar(100) NOT NULL UNIQUE,'First_Folder'	varchar(500) NOT NULL,'Second_Folder'	varchar(500) NOT NULL,'is_two_way'	integer(10) NOT NULL,'overwrite2' INTEGER NOT NULL,'overwrite1' INTEGER NOT NULL);";
            SQLiteCommand command = new SQLiteCommand(sql, dbConnection);
            command.ExecuteNonQuery();
            dbConnection.Close();
        }
        private void bt1_Click(object sender, RoutedEventArgs e) {
            //select folder1
            VistaFolderBrowserDialog vd = new VistaFolderBrowserDialog();
            vd.RootFolder = System.Environment.SpecialFolder.Desktop;
            vd.ShowDialog();
            tb1.Text = vd.SelectedPath;
        }

        private void bt2_Click(object sender, RoutedEventArgs e) {
            //select folder2
            VistaFolderBrowserDialog vd = new VistaFolderBrowserDialog();
            vd.ShowDialog();
            tb2.Text = vd.SelectedPath;
        }

        private void bt3_Click(object sender, RoutedEventArgs e) {
            try {
                SQLiteConnection dbConnection;
                dbConnection = new SQLiteConnection("Data Source=Database.sqlite;Version=3;");
                dbConnection.Open();

                //insert new task
                string sql = "insert into sync (Name,First_Folder,Second_Folder,is_two_way,overwrite2,overwrite1) values ('" + tb3.Text + "','" + tb1.Text + "','" + tb2.Text + "','" + is_2_way.ToString() + "','" + comboBox.SelectedIndex + "','" + comboBox2.SelectedIndex + "')";
                MessageBox.Show(sql);
                SQLiteCommand command = new SQLiteCommand(sql, dbConnection);
                command.ExecuteNonQuery();

                dbConnection.Close();

                tb1.Text = "";
                tb2.Text = "";
                tb3.Text = "";
                String sMessageBoxText = "Sync task saved";
                string sCaption = "Folder Sync";
                MessageBoxButton btnMessageBox = MessageBoxButton.OK;
                MessageBoxImage icnMessageBox = MessageBoxImage.Information;
                MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);
            }
            catch (SQLiteException e1) {
                String sMessageBoxText = e1.Message + "  " + e1.InnerException;//"This Task Name is already in use";
                string sCaption = "Folder Sync";
                MessageBoxButton btnMessageBox = MessageBoxButton.OK;
                MessageBoxImage icnMessageBox = MessageBoxImage.Stop;
                MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);
            }
        }

        private void checkBox1_Checked(object sender, RoutedEventArgs e) {
            is_2_way = true;
            comboBox2.IsEnabled = true;
        }

        private void checkBox1_Unchecked(object sender, RoutedEventArgs e) {
            is_2_way = false;
            comboBox2.IsEnabled = false;
        }
    }
}
