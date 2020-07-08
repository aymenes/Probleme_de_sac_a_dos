using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Tpgo1._0
{

    public partial class MainWindow : Window
    {

       
        public DataTable dt = new DataTable();
        int nmbr_obj = 0;
        public List<list_item> liste_des_objets = new List<list_item>();
        int max_poids;
        public List<List<int>> matrice_des_gains = new List<List<int>>();


        public MainWindow()
        {

            InitializeComponent();

        }

        public void update_matrix()
        {

            if (matrice_des_gains == null || max_poids == 0)
            {
                voila.Text = "Aucun objet trouvé / Poids maximal inditerminé";
                matrice.Visibility = Visibility.Collapsed;
            }
            else
            {
                voila.Text = "Matrice de gain maximal";
                matrice.Visibility = Visibility.Visible;

            }
        }


        public static type_result knapsack(list_item[] items, int max_poids)
        {
            type_result resultat = new type_result();
            int[,] matrix = new int[items.Length + 1, max_poids + 1];
            for (int itemIndex = 0; itemIndex <= items.Length; itemIndex++)
            {
                list_item currentItem = itemIndex == 0 ? null : items[itemIndex - 1];
                for (int currentCapacity = 0; currentCapacity <= max_poids; currentCapacity++)
                {
                    if (currentItem == null || currentCapacity == 0)
                    {
                        matrix[itemIndex, currentCapacity] = 0;
                    }
                    else if (currentItem.poids <= currentCapacity)
                    {
                        matrix[itemIndex, currentCapacity] = Math.Max(currentItem.gain + matrix[itemIndex - 1, currentCapacity - currentItem.poids], matrix[itemIndex - 1, currentCapacity]);
                    }
                    else
                    {
                        matrix[itemIndex, currentCapacity] = matrix[itemIndex - 1, currentCapacity];
                    }
                }
            }

            int res = matrix[items.Length, max_poids];

            resultat.gain_max = res;
            int w = max_poids;

            for (int i = items.Length; i > 0  && res>0; i--)
            {
                
                    if (res == matrix[i - 1, w])
                        continue;
                    else
                    {
                        resultat.Lista.Add(items[i-1]);
                        res -= items[i - 1].gain;
                        w -= items[i - 1].poids;
                    }
                
               
            }

            for (int i = 0; i < items.Length+1; i++)
            {
                resultat.matrixa.Add(new List<int>());
                for (int j = 0; j < max_poids+1; j++)
                {
                    resultat.matrixa[i].Add(matrix[i, j]);
                }
            }
            return resultat;

        }


        private void afficher_resultat()
        {
            //list_item[] param = liste_des_objets.ToArray();
            list_item[] param = new list_item[liste_des_objets.Count()];
            max_poids = Int32.Parse(Sac_a_dos.Text);
            if (max_poids > 24) { max_poids = 24;
                Sac_a_dos.Text = "24";
                                }
            for (int k = 0; k < liste_des_objets.Count(); k++)
            {
                param[k] = liste_des_objets[k];
            }
            if (liste_des_objets.Count() != 0)
            {
                type_result rs = knapsack(param, max_poids);
                if (rs.gain_max <= 0)
                {
                    gain_maximal.Text = "0";
                }
                else
                {
                    gain_maximal.Text = rs.gain_max.ToString();
                }
                Liste_objet_selectione.ItemsSource = rs.Lista;
                lst.ItemsSource = rs.matrixa;


            }
        }

        private void Sac_a_dos_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
               
                    max_poids = Int32.Parse(Sac_a_dos.Text);
                    if (max_poids > 24)
                    {
                        MessageBox.Show("le poids maximal est 24");
                        max_poids = 24;
                        Sac_a_dos.Text = "24";
                    }


            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if ((!Sac_a_dos.Text.Equals("")) && liste_des_objets.Count > 0)
            {
                matrice.Visibility = Visibility.Visible;
                afficher_resultat();
                update_matrix();
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (liste_des_objets.Count()+1 > 10)
            {
                MessageBox.Show("Vous ne pouvez pas ajoute un autre objet , Désolé :) ");
            }
            else
            {
                list_item new_item = new list_item();
                nmbr_obj++;
                new_item.id = nmbr_obj;
                new_item.objet = "Objet N° " + nmbr_obj.ToString();
                Random rnd = new Random();
                new_item.poids = rnd.Next(1, 6);
                new_item.gain = rnd.Next(1, 20);
                liste_des_objets.Add(new_item);
                data_grid_objet.Items.Add(new_item);
            }
        }

        private void addding_button_Click(object sender, RoutedEventArgs e)
        {
            if (liste_des_objets.Count() + 1 > 10)
            {
                MessageBox.Show("Vous ne pouvez pas ajoute un autre objet , Désolé :) ");
            }
            else
            {
                list_item new_item = new list_item();
                nmbr_obj++;
                new_item.id = nmbr_obj;
                new_item.objet = "Objet N° " + nmbr_obj.ToString();
 
                new_item.poids = Int32.Parse(poids_in.Text);
                new_item.gain = Int32.Parse(gain_in.Text);
                liste_des_objets.Add(new_item);
                data_grid_objet.Items.Add(new_item);
            }
            adding_stack.Visibility= Visibility.Collapsed;
            button_stack.Visibility = Visibility.Visible;

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            button_stack.Visibility = Visibility.Collapsed;
            adding_stack.Visibility = Visibility.Visible;
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            liste_des_objets.Clear();
            data_grid_objet.Items.Clear();
            Liste_objet_selectione.ItemsSource = null;
            nmbr_obj = 0;
            max_poids=0;
            lst.ItemsSource=null;
            gain_maximal.Clear();
            Sac_a_dos.Clear();
            matrice.Visibility = Visibility.Collapsed;
            voila.Text = "Aucun objet trouvé / Poids maximal inditerminé";
        }
    }
}
