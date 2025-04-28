using System.Diagnostics;
using System.Text.Json;
using System.Web;
using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text.Json.Serialization;

namespace barcode_app{

	public class Asset
	{
		public int id { get; set; }
		public string name { get; set; }
		public string description { get; set; }
		public string artist { get; set; }
		public string dimension { get; set; }
		public string image { get; set; }
		public string purchase_date { get; set; }
		public int category { get; set; }
		public int user { get; set; }
	}

	public partial class MainPage : ContentPage, IQueryAttributable
	{	
		HttpClient client = new HttpClient();

		public void ApplyQueryAttributes(IDictionary<string, object> query)
		{
			BarcodeEntry.Text = HttpUtility.UrlDecode(query["name"].ToString());
			Console.WriteLine(HttpUtility.UrlDecode(query["format"].ToString()));
		}

		private void Network_test()
		{
			Debug.WriteLine("Network test started");
			// try to get something from internet
			try
			{
				var resp = client.GetAsync("http://10.0.2.2:8000/api.json").Result;
				Debug.WriteLine("Network test ok. " + resp.Content.ReadAsStringAsync().Result);
				LabelHttpResponse.Text = "Network ready";
			}
			// if the network is not ready, show a message
			catch (Exception ex)
			{
			Debug.WriteLine("Network test fail. " + ex.Message);
			LabelHttpResponse.Text = "Network may not ready";
			}
		}

		public MainPage()
		{
			InitializeComponent();
			Routing.RegisterRoute("barcodescanner", typeof(BarcodeScanner));
			Network_test();
		}



        private async void FindBtn_Clicked(object sender, EventArgs e)
        {
            if (BarcodeEntry.Text.Trim().Length == 0)
            {
                await Show_Toast("Please enter a barcode number");
                return;
            }

            ResetProductDetail();

            try
            {
                await Show_Toast("Querying product information");

                // Correct URL with trimmed barcode
                string ApiUrl = $"http://10.0.2.2:8000/api/{BarcodeEntry.Text.Trim()}/"; 

                var resp = await client.GetStringAsync(ApiUrl);

                // Check if response contains valid product data (for error handling)
                if (string.IsNullOrEmpty(resp) || resp.Contains("\"status\":0"))
                {
                    LabelMessage.Text = "Product not found in database";
                    LabelMessage.TextColor = Colors.Red;
                    ImageCover.Source = ImageSource.FromFile("image_coming_soon.png");
                    return;
                }

                // Deserialize JSON response into an Asset object
                Asset asset = JsonSerializer.Deserialize<Asset>(resp);

                // Access and display fields from the Asset object
                if (asset != null)
                {
                    LabelName.Text = $"Name: {asset.name}";
                    LabelArtist.Text = $"Artist: {asset.artist}";
                    LabelDescription.Text = $"Description: {asset.description}";
                    LabelCategories.Text = $"Category: {asset.category}"; // You may want to fetch category name if needed
                    LabelDimensions.Text = $"Dimensions: {asset.dimension}";

                    // Handle image (assuming 'image' is a URL)
                    if (!string.IsNullOrEmpty(asset.image))
                    {
                        ImageCover.Source = ImageSource.FromUri(new Uri(asset.image));
                    }
                    else
                    {
                        ImageCover.Source = ImageSource.FromFile("image_coming_soon.png");
                    }

                    LabelMessage.Text = "Item loaded successfully";
                    LabelMessage.TextColor = Colors.Green;
                }
                else
                {
                    LabelMessage.Text = "Error: No asset data found.";
                    LabelMessage.TextColor = Colors.Red;
                    ImageCover.Source = ImageSource.FromFile("image_coming_soon.png");
                }
            }
            catch (Exception ex)
            {
                LabelHttpResponse.Text = "Querying product information error. " + ex.Message;
                LabelMessage.Text = "Error fetching product data";
                LabelMessage.TextColor = Colors.Red;
                Debug.WriteLine(LabelHttpResponse.Text);
            }
        }



		private async Task Show_Toast(string message)
		{
			// Create a toast message with a cancellation token
			CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
			ToastDuration duration = ToastDuration.Short;
			double fontSize = 14;
			var toast = Toast.Make(message, duration, fontSize);
			await toast.Show(cancellationTokenSource.Token);
		}

		private void ResetProductDetail()
		{
			// Reset the item detail labels to default values
			LabelName.Text = "Name: ";
			LabelArtist.Text = "Artist: ";
			LabelDescription.Text = "Description: ";
			LabelCategories.Text = "Category: ";
			LabelMessage.Text = string.Empty;
			LabelMessage.TextColor = Colors.Black;
			ImageCover.Source =
			ImageSource.FromFile("image_coming_soon.png");
		}

		private void ParseInventoryItemJSON(string json)
		{
			try
			{
				using (var jsonDocument = JsonDocument.Parse(json))
				{
					var rootElement = jsonDocument.RootElement;

					// Map fields to UI labels
					LabelName.Text = $"Name: {rootElement.GetProperty("name").GetString()}";
					LabelArtist.Text = $"Artist: {rootElement.GetProperty("artist").GetString()}";
					LabelDescription.Text = $"Description: {rootElement.GetProperty("description").GetString()}";
					LabelCategories.Text = $"Category: {rootElement.GetProperty("category").GetString()}";
					LabelDimensions.Text = $"Dimensions: {rootElement.GetProperty("dimension").GetString()}";

					// Handle image (assuming 'image' is a URL)
					if (rootElement.TryGetProperty("image", out var imageUrl))
					{
						ImageCover.Source = ImageSource.FromUri(new Uri(imageUrl.GetString()));
					}
					else
					{
						ImageCover.Source = ImageSource.FromFile("image_coming_soon.png");
					}

					LabelMessage.Text = "Item loaded successfully";
					LabelMessage.TextColor = Colors.Green;
				}
			}
			catch (Exception ex)
			{
				LabelMessage.Text = $"Error parsing data: {ex.Message}";
				LabelMessage.TextColor = Colors.Red;
			}
		}



		private async void ScanBarcodeBtn_Clicked(object sender, EventArgs e)
		{
			await Shell.Current.GoToAsync("barcodescanner");
		}

		

	}
}



